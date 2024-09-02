-- https://zenn.dev/slowhand/articles/209699774226af

-- 1. テーブルを作成
create table shrines (
  id bigint primary key generated always as identity,
  id_place BIGINT,
  name VARCHAR(128) NOT NULL,
  ruby VARCHAR(128) NOT NULL,
  latitude double precision NOT NULL,
  longitude double precision NOT NULL,
  type_register_stamp VARCHAR(32),
  url TEXT,
  number TEXT, -- 通し番号
  created_at timestamp default now(),
  updated_at timestamp default now(),
  CONSTRAINT places_id_fk FOREIGN KEY (id_place) REFERENCES places (id)
);

-- 2. RLSを有効化
alter table shrines
  enable row level security;

-- 3. ポリシーを作成
create policy "Public shrines are viewable by everyone."
  on shrines for select using (
    true
  );