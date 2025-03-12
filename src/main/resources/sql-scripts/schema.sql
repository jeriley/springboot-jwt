CREATE TABLE random_city (
  id IDENTITY NOT NULL PRIMARY KEY,
  name varchar(255) DEFAULT NULL
);

CREATE TABLE app_role (
  id IDENTITY NOT NULL PRIMARY KEY,
  description varchar(255) DEFAULT NULL,
  role_name varchar(255) DEFAULT NULL
);

CREATE TABLE app_user (
  id IDENTITY NOT NULL PRIMARY KEY,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  username varchar(255) NOT NULL
);

CREATE TABLE user_role (
  user_id bigint NOT NULL,
  role_id bigint NOT NULL,
  CONSTRAINT FK859n2jvi8ivhui0rl0esws6o FOREIGN KEY (user_id) REFERENCES app_user (id),
  CONSTRAINT FKa68196081fvovjhkek5m97n3y FOREIGN KEY (role_id) REFERENCES app_role (id)
);