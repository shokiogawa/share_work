-- https://zenn.dev/slowhand/articles/209699774226af

-- 1. テーブルを作成
create table worship_cards (
  id BIGINT primary key generated always as identity,
  id_shrine BIGINT NOT NULL,
  comment VARCHAR(128) NOT NULL, -- コメント
  is_current SMALLINT NOT NULL, -- 現在使用されている参拝カードかどうか,
  created_at timestamp default now(),
  updated_at timestamp default now(),
  CONSTRAINT shrines_id_fk FOREIGN KEY (id_shrine) REFERENCES shrines (id)
);

-- 2. RLSを有効化
alter table worship_cards
  enable row level security;

-- 3. ポリシーを作成
create policy "Public worship_cards are viewable by everyone."
  on worship_cards for select using (
    true
  );