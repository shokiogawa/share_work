-- Create users table
CREATE TABLE IF NOT EXISTS users (
    id bigint primary key generated always as identity,
    uid UUID UNIQUE,
    email VARCHAR(255),
    name VARCHAR(100) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE,
    updated_at TIMESTAMP WITH TIME ZONE,
    last_login_at TIMESTAMP WITH TIME ZONE,
    is_active BOOLEAN DEFAULT TRUE,
    role VARCHAR(20) DEFAULT 'user' CHECK (role IN ('user', 'admin')),
    profile_image_url TEXT,
    phone_number VARCHAR(20),
    address TEXT
);

-- uidにインデックスを貼る
CREATE INDEX IF NOT EXISTS idx_users_uid ON users(uid);
-- Create index for email searches
CREATE INDEX IF NOT EXISTS idx_users_email ON users(email);

-- created_at、updated_atを更新するクエリ
CREATE OR REPLACE FUNCTION handle_timestamp()
RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        NEW.created_at = CURRENT_TIMESTAMP;
        NEW.updated_at = CURRENT_TIMESTAMP;
    ELSIF TG_OP = 'UPDATE' THEN
        NEW.updated_at = CURRENT_TIMESTAMP;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE 'plpgsql';

-- usersテーブル追加、更新時
CREATE TRIGGER handle_users_timestamp
    BEFORE INSERT OR UPDATE ON users
    FOR EACH ROW
    EXECUTE FUNCTION handle_timestamp();

-- Add RLS (Row Level Security) policies
ALTER TABLE users ENABLE ROW LEVEL SECURITY;

create policy "Enable insert access for authenticated users"
on users
for insert
to authenticated
with check (auth.uid() = uid);

create policy "Enable update access for users"
on users
for update
to authenticated
using (auth.uid() = uid);

-- Policy for all users to select all data
CREATE POLICY "All users can select all data"
ON users
FOR SELECT
TO authenticated
USING (true);

-- Policy for users to update their own data
--CREATE POLICY "Users can update own data" ON users
--    FOR UPDATE
--    USING (uid = auth.uid());

-- Policy for admins to read all data
--CREATE POLICY "Admins can read all data" ON users
--    FOR SELECT
--    USING (
--        EXISTS (
--            SELECT 1 FROM users
--            WHERE uid = auth.uid() AND role = 'admin'
--        )
--    );