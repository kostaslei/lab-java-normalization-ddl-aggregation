CREATE TABLE Authors
(
    author_id  INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL
);

CREATE TABLE Articles
(
    article_id INT AUTO_INCREMENT PRIMARY KEY,
    title      VARCHAR(255) UNIQUE NOT NULL,
    word_count INT                 NOT NULL,
    views      INT                 NOT NULL,
    author_id  INT                 NOT NULL,
    FOREIGN KEY (author_id) REFERENCES Authors (author_id)
);

INSERT INTO Authors (first_name, last_name) VALUES
                                                ('Maria', 'Charlotte'),
                                                ('Juan', 'Perez'),
                                                ('Gemma', 'Alcocer');

INSERT INTO Articles (title, word_count, views, author_id) VALUES
                                                               ('Best Paint Colors', 814, 14, 1),
                                                               ('Small Space Decorating Tips', 1146, 221, 2),
                                                               ('Hot Accessories', 986, 105, 1),
                                                               ('Mixing Textures', 765, 22, 1),
                                                               ('Kitchen Refresh', 1242, 307, 2),
                                                               ('Homemade Art Hacks', 1002, 193, 1),
                                                               ('Refinishing Wood Floors', 1571, 7542, 3);

