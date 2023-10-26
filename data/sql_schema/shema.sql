CREATE TABLE item (
  id SERIAL PRIMARY KEY,
  genre VARCHAR(100),
  author VARCHAR(100),
  source VARCHAR(100),
  label VARCHAR(100),
  publish_date TIMESTAMP,
  archived BOOLEAN
);

CREATE TABLE Games (
  id INT PRIMARY KEY,
  publish_date DATE,
  multiplayer BOOLEAN,
  last_played_at DATE,
  FOREIGN KEY (id) REFERENCES item(id)
);

CREATE TABLE Authors (
 id INT PRIMARY KEY,
 first_name VARCHAR(255)
 last_name VARCHAR(255),
);

CREATE TABLE books(
  id INT GENERATED ALWAYS AS IDENTITY,
  publish_date DATE NOT NULL,
  archived BOOLEAN,
  cover_state VARCHAR(150),
  publisher VARCHAR(150),
  book_color VARCHAR(100),
  books_id INT,
  PRIMARY KEY(id),
  CONSTRAINT fk_labels FOREIGN KEY(books_id) REFERENCES labels(id)
);

CREATE TABLE Labels (
  id INT PRIMARY KEY,
  title VARCHAR(100),
  color VARCHAR(100),
  FOREIGN KEY (id) REFERENCES item(id)
);

CREATE INDEX idx_book_labels ON books(labels_id);

CREATE TABLE music_albums (
   id INT GENERATED ALWAYS AS IDENTITY,
   genre VARCHAR(100),
   author VARCHAR(100),
   source VARCHAR(100),
   label VARCHAR(100),
   publish_date DATE,
   on_spotify BOOLEAN,
   PRIMARY KEY (id)
);

CREATE TABLE genre (
   id INT GENERATED ALWAYS AS IDENTITY,
   name VARCHAR (100),
   item_id INT,
   CONSTRAINT FK_ITEM_ID FOREIGN KEY (item_id) REFERENCES item(id),
   PRIMARY KEY (id)
);
