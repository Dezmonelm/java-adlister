USE adlister_db;

INSERT INTO user (username, email, password)
VALUES ('Douglas', 'Douglas@user.com',    'Douglas'),
       ('Mark',    'Mark@user.com',    'Mark'),
       ('Kurt',    'Kurt@user.com', 'Kurt');

INSERT INTO ads (user_id, title, description)
VALUES (1, 'pants', 'Long with a crease in the middle.'),
       (2,    'shirt', 'WU-Tang 4EVER.'),
       (3,    'shoes', 'All white forces.');