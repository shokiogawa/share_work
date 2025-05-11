
-- Create comments

CREATE TABLE IF NOT EXISTS comments (
    id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    uid UUID UNIQUE DEFAULT uuid_generate_v4(),
    content VARCHAR(1000) NOT NULL,
    user_id BIGINT REFERENCES users(id) ON DELETE CASCADE,
    work_space_id BIGINT REFERENCES work_spaces(id) ON DELETE CASCADE,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP WITH TIME ZONE,
    updated_at TIMESTAMP WITH TIME ZONE,
    deleted_at TIMESTAMP WITH TIME ZONE,
    created_by BIGINT REFERENCES users(id),
    updated_by BIGINT REFERENCES users(id),
    deleted_by BIGINT REFERENCES users(id)
);

-- Create index for uid searches
CREATE INDEX IF NOT EXISTS idx_comments_uid ON comments(uid);

-- Create index for user_id searches
CREATE INDEX IF NOT EXISTS idx_comments_user_id ON comments(user_id);

-- Create index for work_space_id searches
CREATE INDEX IF NOT EXISTS idx_comments_work_space_id ON comments(work_space_id);

-- Create function to handle timestamps for comments
CREATE OR REPLACE FUNCTION handle_comment_timestamps()
RETURNS TRIGGER AS $$
BEGIN
    -- 新規作成時
    IF TG_OP = 'INSERT' THEN
        NEW.created_at = CURRENT_TIMESTAMP;
        NEW.updated_at = CURRENT_TIMESTAMP;
        -- NEW.created_by = auth.uid();
        -- NEW.updated_by = auth.uid();
    -- 更新時
    ELSIF TG_OP = 'UPDATE' THEN
        NEW.updated_at = CURRENT_TIMESTAMP;
        NEW.updated_by = auth.uid();
        -- created_atとcreated_byは変更しない
        NEW.created_at = OLD.created_at;
        NEW.created_by = OLD.created_by;
    END IF;
    RETURN NEW;
END;
$$ language 'plpgsql';

-- Create trigger for timestamps for comments
CREATE TRIGGER handle_comments_timestamps
    BEFORE INSERT OR UPDATE ON comments
    FOR EACH ROW
    EXECUTE FUNCTION handle_comment_timestamps();

-- Add RLS (Row Level Security) policies for comments
ALTER TABLE comments ENABLE ROW LEVEL SECURITY;

-- Policy for all users to read active comments
CREATE POLICY "All users can read active comments" ON comments
    FOR SELECT
    USING (is_active = TRUE);

-- Policy for admins to read all comments
CREATE POLICY "Admins can read all comments" ON comments
    FOR SELECT
    USING (
        EXISTS (
            SELECT 1 FROM users
            WHERE uid = auth.uid() AND role = 'admin'
        )
    );

-- Policy for users to insert their own comments
CREATE POLICY "Users can insert their own comments" ON comments
    FOR INSERT
    WITH CHECK (auth.uid() IS NOT NULL);


-- Policy for admins to delete comments
CREATE POLICY "Admins can delete comments" ON comments
    FOR DELETE
    USING (
        EXISTS (
            SELECT 1 FROM users
            WHERE uid = auth.uid() AND role = 'admin'
        )
    );

-- Policy for creators to delete their own comments
CREATE POLICY "Creators can delete their own comments" ON comments
    FOR DELETE
    USING (created_by = (SELECT id FROM users WHERE uid = auth.uid()));

