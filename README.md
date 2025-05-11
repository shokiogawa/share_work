# stamp_rally_worship

# Flutter アプリ構成

| 名前             | 説明                              | 詳細                       |
| ---------------- | --------------------------------- | -------------------------- |
| 状態管理         | hooks_riverpod、flutter_hooks     |                            |
| クラウド DB      | supabase                          | ローカルでの開発がしやすい |
| ローカル DB      | shred_preference                  |                            |
| 画面遷移         | go_router, go_router_builder      | 引数などは型セーフにする   |
| 画像             | flutter_gen                       | タイポ防止                 |
| フォルダ構成     | Feature First                     |                            |
| アーキテクチャー | View、UseCase、Repository、Entity |                            |
| サーバーレス     | edge functon (superbase)          |                            |
| 課金処理         | edge function、revenuecat         | 現状 revenuecat 優勢       |
| lint             | pedantic_mono                     |                            |

## 状態管理

### 参照系

FutureProvider を使用して Widget 内で AsyncValue の条件分岐を行う。

```dart
@riverpod
Future<Shrine> fetchShrineDetailUseCase(
    FetchShrineDetailUseCaseRef ref, int idShrine) async {
  final shrine = await ref.watch(shrineRepositoryProvider).detail(idShrine);
  return shrine;
}
```

### 更新系

#### 参照後更新の場合

AsyncNotifierProvider を使用して、データ取得後、AsyncNotifierProvider で状態を管理しつつ、そのモデルにまつわる更新系の処理を記載する。
更新後は、invalidateSelf で自信を invalidate して DB からデータを際フェッチする。

```dart
@riverpod
class CommandWorshipUseCase extends _$CommandWorshipUseCase {
  // use_case内で共通で使用するrepository
  WorshipCardRepository get _worshipRepository =>
      ref.read(worshipCardRepositoryProvider);

  // データフェッチ
  @override
  Future<List<WorshipCard>> build(int shrineId) async {
    return _future();
  }

  Future<List<WorshipCard>> _future() async {
    return _worshipRepository.fetchOwnList(shrineId, 1);
  }

  Future<void> create() async {

    // 更新データを作成
    final createParameter = OwnWorshipCardData.create();

    // 更新処理
    await _worshipRepository.create(createParameter);

    // 最新のデータを取得
    final newData = await _future();

    // データ更新
    state = AsyncData(newData);

    // 更新時のエラーハンドリングなどはWidget内で行う。
    // 一旦以下は行わない。
    // await AsyncValue.guard(() async {
    //   await _worshipRepository.create(createParameter);
    //   return _future();
    // });
  }
}
```

#### 更新系のみの場合

Provider を使用する。
状態管理を行わないため、Provider を使用する。
使用 Widget 側で適切なローディング処理などを行う。

※ notifierProvider で sealed class を用いてローディングなどのステート管理を行うのもあり。

```dart
@Riverpod(keepAlive: true)
CommandUserInfoUseCase commandUserInfoUseCase(CommandUserInfoUseCaseRef ref) {
  return CommandUserInfoUseCase(ref);
}

class CommandUserInfoUseCase {
  const CommandUserInfoUseCase(this.ref);

  final Ref ref;

  UserInfoRepository get userInfoRepository =>
      ref.read(userInfoRepositoryProvider);

  Future<void> create() async {
    await userInfoRepository.create();
  }

  Future<void> update() async {
    await userInfoRepository.update();
  }
}


```

## アーキテクチャー

Page → Usecase → Repository (+ entity)の 3 構成の基本 3 構成

※ 場合によっては Controller 層を採用するかも？

### Page

- Widget でのページの表現

### Usecase (state 管理の箇所)

- ドメインロジックの表現
- データ加工など (バックエンドがないため)
- riverpod で管理するため、単一責任で実装する。
- オブジェクト単位でデータを管理する。
  ※ 依存性の管理には注意をする。

#### Riverpod

基本的に、参照系と更新系で命名を分ける。
CQRS を参考にし、単方向データフローを実現するため。

参照系は基本 FutureProvider を使用する。
参照系の命名例: FetchXXUseCase
※ 参照系であることがわかるようにする。

更新系は、AsyncNotifierProvider を使用する。
更新系の命名例: CommandXXUseCase

### Repository

- 外部との連携を表現する箇所
- riverpod で DI を行う。
- データ管理などは行わないため、autoDispose: false にする。

### Entity

- Repository、Usecase から取得したデータを管理する。
- Entity にまつわるロジックなどは、できるだけ Entity に集約させる。
- インスタンス生成は、ファクトリーメソッドを経由させて生成させる。

### 単体テスト

- 基本 usecase or Entity 層に対して単体テストを行う。

## supebase の料金

- API リクエストに制限はなし
- 1 ヶ月に 50,000 ユーザーアクティブ可能
- 500MB データ量格納可能
- 1G ファイル格納可能

## 参考

https://peppermint-sunset-fc2.notion.site/Never-0ee09657e5744cc8bb3c99cf9cdb2cff
https://github.com/hukusuke1007/flutter_app_template/blob/main/feature_first/lib/features/timeline/use_cases/fetch_poster.dart

# Work BGM With

ワークスペースと BGM を組み合わせたアプリケーション

## 開発環境

- Flutter
- Supabase

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
supabase db reset --linked

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

## プロジェクト構造

```
supabase_project/
├── migrations/           # マイグレーションファイル
│   ├── 202404101_create_users_table.sql
│   ├── 202404102_create_bgms_table.sql
│   ├── 202404103_create_category_workspace_tables.sql
│   ├── 202404104_create_workspace_tables.sql
│   └── 202404105_create_comments_table.sql
├── seed.sql              # シードデータ
└── er_diagram.md         # ER図
```

## データベース設計

詳細なデータベース設計については、[ER 図](supabase_project/er_diagram.md)を参照してください。

## 開発手順

1. リポジトリをクローン
2. 依存関係をインストール
3. Supabase のローカル開発環境を起動
4. マイグレーションを実行
5. シードデータを実行
6. アプリケーションを起動

## ライセンス

MIT
