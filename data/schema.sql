CREATE TABLE remember_me (
  sid VARCHAR(16) NOT NULL,
  token VARCHAR(16) NOT NULL,
  user_id INTEGER(11) NOT NULL,
  UNIQUE KEY sid (sid,token,user_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE remember_me
  ADD CONSTRAINT remember_me FOREIGN KEY (user_id) REFERENCES user (user_id) ON DELETE CASCADE ON UPDATE CASCADE;