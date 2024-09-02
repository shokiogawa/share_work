-- https://zenn.dev/slowhand/articles/209699774226af

-- 1. テーブルを作成
create table own_worship_cards (
  id BIGINT primary key generated always as identity,
  id_worship_card BIGINT NOT NULL, -- 取得した参拝カード
  id_user BIGINT NOT NULL, -- 取得したユーザー
  number TEXT, -- 通し番号
  created_at timestamp default now(),
  updated_at timestamp default now(),
  CONSTRAINT worship_cards_id_fk FOREIGN KEY (id_worship_card) REFERENCES worship_cards (id),
  CONSTRAINT users_id_fk FOREIGN KEY (id_user) REFERENCES users (id)
);

-- 2. RLSを有効化
alter table own_worship_cards
  enable row level security;

-- 3. ポリシーを作成
create policy "Public own_worship_cards are viewable by everyone."
  on own_worship_cards for select using (
    true
  );