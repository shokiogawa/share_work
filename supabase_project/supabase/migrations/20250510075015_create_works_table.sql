
CREATE TABLE IF NOT EXISTS works (
    id bigint PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    uid UUID UNIQUE DEFAULT uuid_generate_v4(),
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) NOT NULL CHECK (status IN ('running', 'pose', 'finish')), 
    start_date TIMESTAMP WITH TIME ZONE NOT NULL,
    end_date TIMESTAMP WITH TIME ZONE NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP WITH TIME ZONE,
    updated_at TIMESTAMP WITH TIME ZONE,
    deleted_at TIMESTAMP WITH TIME ZONE,
    created_by BIGINT REFERENCES users(id),
    updated_by BIGINT REFERENCES users(id),
    deleted_by BIGINT REFERENCES users(id)
);

-- Create index for uid searches
CREATE INDEX IF NOT EXISTS idx_works_uid ON works(uid);

-- Create index for name searches
CREATE INDEX IF NOT EXISTS idx_works_name ON works(name);

-- Create index for status searches
CREATE INDEX IF NOT EXISTS idx_works_status ON works(status);

-- Create function to handle timestamps for works
CREATE OR REPLACE FUNCTION handle_works_timestamps()
RETURNS TRIGGER AS $$
BEGIN
    -- On insert
    IF TG_OP = 'INSERT' THEN
        NEW.created_at = CURRENT_TIMESTAMP;
        NEW.updated_at = CURRENT_TIMESTAMP;
    -- On update
    ELSIF TG_OP = 'UPDATE' THEN
        NEW.updated_at = CURRENT_TIMESTAMP;
        -- Preserve created_at
        NEW.created_at = OLD.created_at;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE 'plpgsql';

-- Create trigger for timestamps for works
CREATE TRIGGER handle_works_timestamps
    BEFORE INSERT OR UPDATE ON works
    FOR EACH ROW
    EXECUTE FUNCTION handle_works_timestamps();

-- Add RLS (Row Level Security) policies for works
ALTER TABLE works ENABLE ROW LEVEL SECURITY;

-- Policy: All users can read active works
CREATE POLICY "All users can read active works" ON works
    FOR SELECT
    USING (is_active = TRUE);

-- Policy: Admins can read all works
CREATE POLICY "Admins can read all works" ON works
    FOR SELECT
    USING (
        EXISTS (
            SELECT 1 FROM users
            WHERE uid = auth.uid() AND role = 'admin'
        )
    );

-- Policy: Users can insert their own works
CREATE POLICY "Users can insert their own works" ON works
    FOR INSERT
    WITH CHECK (auth.uid() IS NOT NULL);

-- Policy: Admins can delete works
CREATE POLICY "Admins can delete works" ON works
    FOR DELETE
    USING (
        EXISTS (
            SELECT 1 FROM users
            WHERE uid = auth.uid() AND role = 'admin'
        )
    );