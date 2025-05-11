-- Create bgms table
CREATE TABLE IF NOT EXISTS bgms (
    id bigint PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    uid UUID UNIQUE DEFAULT uuid_generate_v4(),
    title VARCHAR(255) NOT NULL,
    artist VARCHAR(255) NOT NULL,
    music_url TEXT,
    description TEXT,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP WITH TIME ZONE,
    updated_at TIMESTAMP WITH TIME ZONE
);

-- Create index for uid searches
CREATE INDEX IF NOT EXISTS idx_bgms_uid ON bgms(uid);

-- Create index for title searches
CREATE INDEX IF NOT EXISTS idx_bgms_title ON bgms(title);

-- Create function to handle timestamps
CREATE OR REPLACE FUNCTION handle_bgm_timestamps()
RETURNS TRIGGER AS $$
BEGIN
    -- 新規作成時
    IF TG_OP = 'INSERT' THEN
        NEW.created_at = CURRENT_TIMESTAMP;
        NEW.updated_at = CURRENT_TIMESTAMP;
    -- 更新時
    ELSIF TG_OP = 'UPDATE' THEN
        NEW.updated_at = CURRENT_TIMESTAMP;
        -- created_atは変更しない
        NEW.created_at = OLD.created_at;
    END IF;
    RETURN NEW;
END;
$$ language 'plpgsql';

-- Create trigger for timestamps
CREATE TRIGGER handle_bgms_timestamps
    BEFORE INSERT OR UPDATE ON bgms
    FOR EACH ROW
    EXECUTE FUNCTION handle_bgm_timestamps();

-- Add RLS (Row Level Security) policies
ALTER TABLE bgms ENABLE ROW LEVEL SECURITY;

-- Policy for all users to read active bgms
CREATE POLICY "All users can read active bgms" ON bgms
    FOR SELECT
    USING (is_active = TRUE);

-- Policy for admins to read all bgms
CREATE POLICY "Admins can read all bgms" ON bgms
    FOR SELECT
    USING (
        EXISTS (
            SELECT 1 FROM users
            WHERE uid = auth.uid() AND role = 'admin'
        )
    );

-- Policy for admins to insert bgms
CREATE POLICY "Admins can insert bgms" ON bgms
    FOR INSERT
    WITH CHECK (
        EXISTS (
            SELECT 1 FROM users
            WHERE uid = auth.uid() AND role = 'admin'
        )
    );

-- Policy for admins to update bgms
CREATE POLICY "Admins can update bgms" ON bgms
    FOR UPDATE
    USING (
        EXISTS (
            SELECT 1 FROM users
            WHERE uid = auth.uid() AND role = 'admin'
        )
    );

-- Policy for admins to delete bgms
CREATE POLICY "Admins can delete bgms" ON bgms
    FOR DELETE
    USING (
        EXISTS (
            SELECT 1 FROM users
            WHERE uid = auth.uid() AND role = 'admin'
        )
    );
