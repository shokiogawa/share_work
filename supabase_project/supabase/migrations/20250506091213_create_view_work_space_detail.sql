CREATE OR REPLACE VIEW work_space_detail AS
SELECT 
 ws.*,
 bm.title AS bgm_title,
 bm.description AS bgm_description,
 bm.music_url AS music_url,
 wsc.name AS category_name
FROM 
  work_spaces AS ws
INNER JOIN 
  bgms AS bm ON bm.id = ws.bgm_id
INNER JOIN
  work_space_categories AS wsc ON wsc.id = ws.category_id
LIMIT 1;