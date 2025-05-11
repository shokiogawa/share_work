CREATE TABLE IF NOT EXISTS work_space_members (
  id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  uid UUID UNIQUE DEFAULT uuid_generate_v4(),
  user_id BIGINT REFERENCES users(id) ON DELETE CASCADE,
  work_space_id BIGINT REFERENCES work_spaces(id) ON DELETE CASCADE,
  role VARCHAR(255) CHECK (role IN ('owner', 'member')) NOT NULL,
  is_active BOOLEAN DEFAULT TRUE,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE,
  deleted_at TIMESTAMP WITH TIME ZONE,
  deleted_by BIGINT REFERENCES users(id)
);

-- Create index for uid searches
CREATE INDEX IF NOT EXISTS idx_work_space_members_uid ON work_space_members(uid);

-- Create index for user_id searches
CREATE INDEX IF NOT EXISTS idx_work_space_members_user_id ON work_space_members(user_id);

-- Create index for work_space_id searches
CREATE INDEX IF NOT EXISTS idx_work_space_members_work_space_id ON work_space_members(work_space_id);

-- Create function to handle timestamps for work_space_members
CREATE OR REPLACE FUNCTION handle_work_space_members_timestamps()
RETURNS TRIGGER AS $$
BEGIN
  -- On insert
  IF TG_OP = 'INSERT' THEN
    NEW.created_at = CURRENT_TIMESTAMP;
    NEW.updated_at = CURRENT_TIMESTAMP;
  -- On update
  ELSIF TG_OP = 'UPDATE' THEN
    NEW.updated_at = CURRENT_TIMESTAMP;
    -- NEW.updated_by = auth.uid();
    -- Preserve created_at and created_by
    NEW.created_at = OLD.created_at;
    NEW.created_by = OLD.created_by;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE 'plpgsql';

-- Create trigger for timestamps for work_space_members
CREATE TRIGGER handle_work_space_members_timestamps
  BEFORE INSERT OR UPDATE ON work_space_members
  FOR EACH ROW
  EXECUTE FUNCTION handle_work_space_members_timestamps();

-- Add RLS (Row Level Security) policies for work_space_members
ALTER TABLE work_space_members ENABLE ROW LEVEL SECURITY;

-- 全てのユーザーがアクティブなwork_space_membersを読み取れるポリシー
CREATE POLICY "All users can read active work_space_members" ON work_space_members
  FOR SELECT
  USING (is_active = TRUE);

-- 管理者が全てのwork_space_membersを読み取れるポリシー
CREATE POLICY "Admins can read all work_space_members" ON work_space_members
  FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM users
      WHERE uid = auth.uid()
    )
  );

-- ユーザーが自分自身のwork_space_membersを挿入できるポリシー
CREATE POLICY "Users can insert their own work_space_members" ON work_space_members
  FOR INSERT
  WITH CHECK (auth.uid() IS NOT NULL);

-- 管理者がwork_space_membersを削除できるポリシー
CREATE POLICY "Admins can delete work_space_members" ON work_space_members
  FOR DELETE
  USING (
    EXISTS (
      SELECT 1 FROM users
      WHERE uid = auth.uid() AND role = 'admin'
    )
  );
