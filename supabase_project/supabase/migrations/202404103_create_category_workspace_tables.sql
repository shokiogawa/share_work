-- Create work_space_categories table
CREATE TABLE IF NOT EXISTS work_space_categories (
    id bigint PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    uid UUID UNIQUE DEFAULT uuid_generate_v4(),
    name VARCHAR(100) NOT NULL,
    description TEXT,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP WITH TIME ZONE,
    updated_at TIMESTAMP WITH TIME ZONE
);

-- Create index for uid searches
CREATE INDEX IF NOT EXISTS idx_work_space_categories_uid ON work_space_categories(uid);

-- Create index for name searches
CREATE INDEX IF NOT EXISTS idx_work_space_categories_name ON work_space_categories(name);

