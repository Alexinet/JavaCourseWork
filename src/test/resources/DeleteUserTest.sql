
DELETE FROM t_user_roles
    WHERE user_id=(SELECT id FROM t_user WHERE username='coolNOne');

DELETE FROM t_user
    WHERE username='coolNOne'