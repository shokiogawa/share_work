## マイグレーションルール

1. id は primarykey
2. uid を作成すること。それにインデックスをつける。
3. created_at、updated_at を自動更新する handle\*テーブル名\_timestamps を作成すること。
4. 削除フラグの deleted_at カラムを作成すること。
5. created_at、updated_at、deleted_at は基本インデックスをつけること。

##
