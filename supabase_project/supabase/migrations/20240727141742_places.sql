-- https://zenn.dev/slowhand/articles/209699774226af

-- 1. テーブルを作成
create table places (
  id bigint primary key generated always as identity,
  name VARCHAR(128) NOT NULL,
  created_at timestamp default now(),
  updated_at timestamp default now()
);

-- 2. RLSを有効化
alter table places
  enable row level security;

-- 3. ポリシーを作成
create policy "Public places are viewable by everyone."
  on places for select using (
    true
  );