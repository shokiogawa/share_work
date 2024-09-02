-- https://zenn.dev/slowhand/articles/209699774226af

-- 1. テーブルを作成
create table users (
  id bigint primary key generated always as identity,
  uuid TEXT NOT NULL,
  name VARCHAR(128) NOT NULL,
  email VARCHAR(255) NOT NULL,
  created_at timestamp default now(),
  updated_at timestamp default now()
);

-- 2. RLSを有効化
alter table users
  enable row level security;

-- 3. ポリシーを作成
create policy "Public users are viewable by everyone."
  on users for select using (
    true
  );