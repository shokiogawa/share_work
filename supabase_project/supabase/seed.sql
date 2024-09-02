-- users
INSERT INTO users (uuid, name, email) VALUES
('550e8400-e29b-41d4-a716-446655440000', 'Alice Johnson', 'alice@example.com'),
('550e8400-e29b-41d4-a716-446655440001', 'Bob Smith', 'bob@example.com'),
('550e8400-e29b-41d4-a716-446655440002', 'Charlie Brown', 'charlie@example.com'),
('550e8400-e29b-41d4-a716-446655440003', 'Dana White', 'dana@example.com'),
('550e8400-e29b-41d4-a716-446655440004', 'Evan Green', 'evan@example.com');

-- places
INSERT INTO places (name) VALUES
  ('東京'),
  ('大阪'),
  ('京都'),
  ('札幌');

-- srine
INSERT INTO shrines (id_place, name, ruby, latitude, longitude, type_register_stamp, url) VALUES
(1, '明治神宮', 'めいじじんぐう', 35.6762, 139.6993, 'gps', 'https://www.meijijingu.or.jp/'),
(1, '伏見稲荷大社', 'ふしみいなりたいしゃ', 34.9671, 135.7727, 'gps', 'http://inari.jp/'),
(1, '伊勢神宮', 'いせじんぐう', 34.4565, 136.7254, 'gps', 'https://www.isejingu.or.jp/'),
(1, '厳島神社', 'いつくしまじんじゃ', 34.2954, 132.3195, 'gps', 'https://www.miyajima-wch.jp/'),
(1, '出雲大社', 'いずもたいしゃ', 35.3994, 132.6854, 'gps', 'https://izumooyashiro.or.jp/'),
(2, '春日大社', 'かすがたいしゃ', 34.6824, 135.8481, 'gps', 'https://www.kasugataisha.or.jp/'),
(2, '八坂神社', 'やさかじんじゃ', 35.0037, 135.7784, 'gps', 'https://www.yasaka-jinja.or.jp/'),
(3, '松尾大社', 'まつのおたいしゃ', 34.9951, 135.6867, 'gps', 'https://www.matsunoo.or.jp/'),
(3, '北野天満宮', 'きたのてんまんぐう', 35.0303, 135.7489, 'gps', 'https://kitanotenmangu.or.jp/');

-- worship_cards
INSERT INTO worship_cards (id_shrine, comment, is_current) VALUES
(1,  '初詣に訪れました。', 1),
(2,  '紅葉がとても美しかったです。', 1),
(3,  '大変混雑していましたが、参拝できました。', 1),
(4,  '厳島神社の景色は素晴らしかったです。', 1),
(5,  '出雲大社で特別な祈祷を受けました。', 1);

-- own-worship-card
INSERT INTO own_worship_cards (id_worship_card, id_user, number) VALUES
(1, 1, '0001'),
(2, 1, '0001'),
(3, 1, '0001'),
(4, 1, '0001'),
(5, 1, '0001'),
(1, 1, '0001');