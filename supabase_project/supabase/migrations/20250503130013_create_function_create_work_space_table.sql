CREATE OR REPLACE FUNCTION add_work_space()
RETURNS SETOF work_spaces AS $$
DECLARE 
  user_id BIGINT;

BEGIN
  -- Retrieve the user ID of the current authenticated user
  SELECT id 
  INTO user_id
  FROM auth.users 
  WHERE uid = auth.uid();

  -- Insert a new work space into the work_spaces table
  INSERT INTO work_spaces (name, description, created_by, updated_by)
  VALUES ('New Work Space', 'Description of the new work space', user_id, user_id);

  -- Insert the user as an admin member of the newly created work space
  INSERT INTO work_space_members (user_id, role, work_space_id, is_active)
  VALUES (user_id, 'admin', currval('work_spaces_id_seq'), TRUE);

  -- Return the newly created work space
  RETURN QUERY 
  SELECT * 
  FROM work_spaces 
  WHERE id = currval('work_spaces_id_seq');
END;

$$ LANGUAGE plpgsql;