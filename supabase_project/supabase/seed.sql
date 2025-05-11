-- サンプルデータ: bgmsテーブル
INSERT INTO bgms (title, artist, music_url, description, is_active)
VALUES
  ('リラックス BGM', 'リラックスミュージック', 'https://senmgccaddgpcsxjokld.supabase.co/storage/v1/object/public/bgm//220_long_BPM86.mp3', 'リラックスできる静かなBGM', TRUE),
  ('集中力アップ BGM', 'フォーカスサウンド', 'https://senmgccaddgpcsxjokld.supabase.co/storage/v1/object/public/bgm//220_long_BPM86.mp3', '集中力を高めるBGM', TRUE),
  ('モチベーション向上 BGM', 'モチベーションミュージック', 'https://senmgccaddgpcsxjokld.supabase.co/storage/v1/object/public/bgm//220_long_BPM86.mp3', 'モチベーションを高めるBGM', TRUE),
  ('瞑想 BGM', 'メディテーションミュージック', 'https://senmgccaddgpcsxjokld.supabase.co/storage/v1/object/public/bgm//220_long_BPM86.mp3', '瞑想に適したBGM', TRUE),
  ('クリエイティブ BGM', 'クリエイティブサウンド', 'https://senmgccaddgpcsxjokld.supabase.co/storage/v1/object/public/bgm//220_long_BPM86.mp3', 'クリエイティブな作業に適したBGM', TRUE),
  ('運動 BGM', 'エクササイズミュージック', 'https://senmgccaddgpcsxjokld.supabase.co/storage/v1/object/public/bgm//220_long_BPM86.mp3', '運動に適したBGM', TRUE),
  ('読書 BGM', 'リーディングミュージック', 'https://senmgccaddgpcsxjokld.supabase.co/storage/v1/object/public/bgm//220_long_BPM86.mp3', '読書に適したBGM', TRUE),
  ('睡眠 BGM', 'スリープミュージック', 'https://senmgccaddgpcsxjokld.supabase.co/storage/v1/object/public/bgm//294_long_BPM88.mp3', '睡眠に適したBGM', TRUE),
  ('朝活 BGM', 'モーニングミュージック', 'https://senmgccaddgpcsxjokld.supabase.co/storage/v1/object/public/bgm//294_long_BPM88.mp3', '朝活に適したBGM', TRUE),
  ('夜活 BGM', 'ナイトミュージック', 'hhttps://senmgccaddgpcsxjokld.supabase.co/storage/v1/object/public/bgm//294_long_BPM88.mp3', '夜活に適したBGM', TRUE);

-- サンプルデータ: work_space_categoriesテーブル
INSERT INTO work_space_categories (name, description, is_active)
VALUES
  ('試験勉強', '大学入試、高校入試などの試験勉強に適したワークスペース', TRUE),
  ('資格勉強', '資格取得のための勉強に適したワークスペース', TRUE),
  ('仕事', 'リモートワークや在宅勤務などの仕事に適したワークスペース', TRUE),
  ('趣味', '趣味活動に適したワークスペース', TRUE),
  ('読書', '読書に適したワークスペース', TRUE),
  ('創作活動', '絵画、音楽、文章作成などの創作活動に適したワークスペース', TRUE),
  ('運動', '運動やエクササイズに適したワークスペース', TRUE),
  ('瞑想', '瞑想やリラックスに適したワークスペース', TRUE),
  ('語学学習', '語学学習に適したワークスペース', TRUE),
  ('その他', 'その他の目的に適したワークスペース', TRUE); 