-- Create work_spaces table
CREATE TABLE IF NOT EXISTS work_spaces (
    id bigint PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    uid UUID UNIQUE DEFAULT uuid_generate_v4(),
    name VARCHAR(100) NOT NULL,
    description TEXT,
    category_id bigint REFERENCES work_space_categories(id) ON DELETE SET NULL,
    bgm_id BIGINT REFERENCES bgms(id) ON DELETE SET NULL,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP WITH TIME ZONE,
    updated_at TIMESTAMP WITH TIME ZONE,
    deleted_at TIMESTAMP WITH TIME ZONE,
    created_by BIGINT REFERENCES users(id),
    updated_by BIGINT REFERENCES users(id),
    deleted_by BIGINT REFERENCES users(id)
);

-- Create index for uid searches
CREATE INDEX IF NOT EXISTS idx_work_spaces_uid ON work_spaces(uid);

-- Create index for name searches
CREATE INDEX IF NOT EXISTS idx_work_spaces_name ON work_spaces(name);

-- Create index for category_id searches
CREATE INDEX IF NOT EXISTS idx_work_spaces_category_id ON work_spaces(category_id);

-- Create function to handle timestamps for work_space_categories
CREATE OR REPLACE FUNCTION handle_work_space_category_timestamps()
RETURNS TRIGGER AS $$
BEGIN
    -- 新規作成時
    IF TG_OP = 'INSERT' THEN
        NEW.created_at = CURRENT_TIMESTAMP;
        NEW.updated_at = CURRENT_TIMESTAMP;
    -- 更新時
    ELSIF TG_OP = 'UPDATE' THEN
        NEW.updated_at = CURRENT_TIMESTAMP;
        NEW.updated_by = OLD.updated_by;
        -- created_atとcreated_byは変更しない
        NEW.created_at = OLD.created_at;
        NEW.created_by = OLD.created_by;
    END IF;
    RETURN NEW;
END;
$$ language 'plpgsql';

-- Create trigger for timestamps for work_space_categories
CREATE TRIGGER handle_work_space_categories_timestamps
    BEFORE INSERT OR UPDATE ON work_space_categories
    FOR EACH ROW
    EXECUTE FUNCTION handle_work_space_category_timestamps();

-- Create function to handle timestamps for work_spaces
CREATE OR REPLACE FUNCTION handle_work_space_timestamps()
RETURNS TRIGGER AS $$
BEGIN
    -- 新規作成時
    IF TG_OP = 'INSERT' THEN
        NEW.created_at = CURRENT_TIMESTAMP;
        NEW.updated_at = CURRENT_TIMESTAMP;
        NEW.created_by = (SELECT id FROM users WHERE uid = auth.uid() LIMIT 1);
        NEW.updated_by = (SELECT id FROM users WHERE uid = auth.uid() LIMIT 1);
    -- 更新時
    ELSIF TG_OP = 'UPDATE' THEN
        NEW.updated_at = CURRENT_TIMESTAMP;
        NEW.updated_by = OLD.updated_by;
        -- created_atとcreated_byは変更しない
        NEW.created_at = OLD.created_at;
        NEW.created_by = OLD.created_by;
    END IF;
    RETURN NEW;
END;
$$ language 'plpgsql';

-- Create trigger for timestamps for work_spaces
CREATE TRIGGER handle_work_spaces_timestamps
    BEFORE INSERT OR UPDATE ON work_spaces
    FOR EACH ROW
    EXECUTE FUNCTION handle_work_space_timestamps();

-- Add RLS (Row Level Security) policies for work_space_categories
ALTER TABLE work_space_categories ENABLE ROW LEVEL SECURITY;

-- Policy for all users to read active work_space_categories
CREATE POLICY "All users can read active work_space_categories" ON work_space_categories
    FOR SELECT
    USING (is_active = TRUE);

-- Policy for admins to read all work_space_categories
CREATE POLICY "Admins can read all work_space_categories" ON work_space_categories
    FOR SELECT
    USING (
        EXISTS (
            SELECT 1 FROM users
            WHERE uid = auth.uid() AND role = 'admin'
        )
    );

-- Policy for admins to insert work_space_categories
CREATE POLICY "Admins can insert work_space_categories" ON work_space_categories
    FOR INSERT
    WITH CHECK (
        EXISTS (
            SELECT 1 FROM users
            WHERE uid = auth.uid() AND role = 'admin'
        )
    );

-- Policy for admins to update work_space_categories
CREATE POLICY "Admins can update work_space_categories" ON work_space_categories
    FOR UPDATE
    USING (
        EXISTS (
            SELECT 1 FROM users
            WHERE uid = auth.uid() AND role = 'admin'
        )
    );

-- Policy for admins to delete work_space_categories
CREATE POLICY "Admins can delete work_space_categories" ON work_space_categories
    FOR DELETE
    USING (
        EXISTS (
            SELECT 1 FROM users
            WHERE uid = auth.uid() AND role = 'admin'
        )
    );

-- Add RLS (Row Level Security) policies for work_spaces
ALTER TABLE work_spaces ENABLE ROW LEVEL SECURITY;

-- Policy for all users to read active work_spaces
CREATE POLICY "All users can read active work_spaces" ON work_spaces
    FOR SELECT
    USING (is_active = TRUE);

-- Policy for admins to read all work_spaces
CREATE POLICY "Admins can read all work_spaces" ON work_spaces
    FOR SELECT
    USING (
        EXISTS (
            SELECT 1 FROM users
            WHERE uid = auth.uid() AND role = 'admin'
        )
    );

-- Policy for admins to insert work_spaces
CREATE POLICY "Admins can insert work_spaces" ON work_spaces
    FOR INSERT
    WITH CHECK (
        EXISTS (
            SELECT 1 FROM users
            WHERE uid = auth.uid() AND role = 'admin'
        )
    );

-- Policy for admins to update work_spaces
CREATE POLICY "Admins can update work_spaces" ON work_spaces
    FOR UPDATE
    USING (
        EXISTS (
            SELECT 1 FROM users
            WHERE uid = auth.uid() AND role = 'admin'
        )
    );

-- Policy for admins to delete work_spaces
CREATE POLICY "Admins can delete work_spaces" ON work_spaces
    FOR DELETE
    USING (
        EXISTS (
            SELECT 1 FROM users
            WHERE uid = auth.uid() AND role = 'admin'
        )
    );

-- Policy for creators to update their own work_spaces
CREATE POLICY "Creators can update their own work_spaces" ON work_spaces
    FOR UPDATE
    USING (created_by = (SELECT id FROM users WHERE uid = auth.uid()));

-- Policy for creators to delete their own work_spaces
CREATE POLICY "Creators can delete their own work_spaces" ON work_spaces
    FOR DELETE
    USING (created_by = (SELECT id FROM users WHERE uid = auth.uid())); 

create policy "Enable insert access for authenticated users"
on work_spaces
for insert
to authenticated
with check (auth.uid() is not NULL);

create policy "Enable update access for users"
on work_spaces
for update
to authenticated
using (auth.uid() is not NULL);