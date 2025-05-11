# データベース ER 図

```mermaid
erDiagram
    users {
        bigint id PK
        VARCHAR name
    }

    bgms {
        bigint id PK
        VARCHAR title
    }

    work_space_categories {
        bigint id PK
        VARCHAR name
        bigint created_by FK
    }

    work_spaces {
        bigint id PK
        VARCHAR name
        bigint category_id FK
        bigint created_by FK
        bigint bgm_id FK
    }

    comments {
        bigint id PK
        UUID user_id FK
        bigint work_space_id FK
    }

    users ||--o{ work_spaces : "creates"
    users ||--o{ comments : "creates"
    work_space_categories ||--o{ work_spaces : "contains"
    work_spaces ||--o{ comments : "has"
    bgms ||--o{ work_spaces : "used in"
```

## テーブル間の関係

1. **users** テーブル

   - ユーザー情報を管理
   - 主キー: id

2. **bgms** テーブル

   - BGM 情報を管理
   - 主キー: id

3. **work_space_categories** テーブル

   - ワークスペースカテゴリを管理
   - 主キー: id
   - 外部キー: created_by (users.id)

4. **work_spaces** テーブル

   - ワークスペースを管理
   - 主キー: id
   - 外部キー: category_id (work_space_categories.id)
   - 外部キー: created_by (users.id)
   - 外部キー: bgm_id (bgms.id)

5. **comments** テーブル
   - コメントを管理
   - 主キー: id
   - 外部キー: user_id (users.id)
   - 外部キー: work_space_id (work_spaces.id)

## 主な関係性

- ユーザーは複数のワークスペースを作成できる (1 対多)
- ユーザーは複数のコメントを作成できる (1 対多)
- ワークスペースカテゴリは複数のワークスペースを含む (1 対多)
- ワークスペースは複数のコメントを持つ (1 対多)
- BGM は複数のワークスペースで使用される (1 対多)

# subase ロゴ

## Supabase コマンド

### 初期設定

```bash
# Supabase CLIのインストール
brew install supabase/tap/supabase

# プロジェクトの初期化
supabase init

# ローカル開発環境の起動
supabase start

# ローカル開発環境の停止
supabase stop

# ローカル開発環境の再起動
supabase restart
```

### マイグレーション

```bash
# マイグレーションファイルの作成
supabase migration new create_users_table

# マイグレーションの実行
supabase db reset

# マイグレーションの確認
supabase db diff
```

### シードデータ

```bash
# シードデータの実行
supabase db reset --db-url postgresql://postgres:postgres@localhost:54322/postgres
```

### デプロイ

```bash
# リモート環境へのデプロイ
supabase link --project-ref your-project-ref

# マイグレーションのデプロイ
supabase db push

# シードデータのデプロイ
supabase db push --db-url postgresql://postgres:postgres@localhost:54322/postgres
```

### その他

```bash
# プロジェクトの状態確認
supabase status

# プロジェクトの設定確認
supabase config

# プロジェクトのログ確認
supabase logs
```
