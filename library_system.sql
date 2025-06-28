START TRANSACTION;
DROP TABLE IF EXISTS movies, albums, media_library;
CREATE TABLE movies (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    available BOOLEAN NOT NULL DEFAULT 0,
    director VARCHAR(50) NOT NULL,
    duration INT NOT NULL
);
CREATE TABLE albums (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    available BOOLEAN NOT NULL DEFAULT 0,
    artist VARCHAR(50) NOT NULL,
    track_count INT NOT NULL
);
CREATE TABLE media_library (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    movies_id INT,
    albums_id INT,
    FOREIGN KEY (movies_id)
        REFERENCES movies (id),
    FOREIGN KEY (albums_id)
        REFERENCES albums (id)
);
INSERT INTO movies(title, available, director, duration)
VALUES('Pirates of the Caribbean', 1, 'James Gunn', 140),
('Top Gun', 1, 'Tom Cruise', 200);
INSERT INTO albums(title, available, artist, track_count)
VALUES('Abbey Road', 1, 'The Beatles', 15),
('Title', 1, 'Megan Trainor', 15);
ROLLBACK;