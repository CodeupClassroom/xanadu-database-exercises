
DROP DATABASE IF EXISTS join_test_db;
CREATE DATABASE join_test_db;

USE join_test_db;

CREATE TABLE IF NOT EXISTS roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS  users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
  ('bob', 'bob@example.com', 1),
  ('joe', 'joe@example.com', 2),
  ('sally', 'sally@example.com', 3),
  ('adam', 'adam@example.com', 3),
  ('jane', 'jane@example.com', null),
  ('fred', 'fred@example.com', null),
  ('cindy', 'cindy@example.com', 2),
  ('bobby', 'bobby@example.com', 2),
  ('michael', 'michael@example.com', 2),
  ('kyle', 'kyle@example.com', 2);


SELECT * FROM users;
SELECT * FROM roles;
#

SELECT users.name, roles.name FROM users
INNER JOIN roles
  ON roles.id = users.role_id;

# SELECT users.name, roles.name FROM users
# LEFT JOIN roles
#  ON roles.id = users.role_id;


# SELECT users.name, roles.name FROM users
# INNER JOIN roles
#  ON roles.id = users.role_id;
#
SELECT users.name, roles.name FROM users
RIGHT JOIN roles
 ON roles.id = users.role_id;
#
SELECT roles.name, COUNT(*) FROM users
JOIN roles
 ON roles.id = users.role_id
GROUP BY roles.name;