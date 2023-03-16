CREATE TABLE person (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  birth_date DATE,
  death_date DATE
);

CREATE TABLE film (
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  year INTEGER,
  plot TEXT,
  budget NUMERIC,
  box_office NUMERIC,
  runtime INTEGER,
  language TEXT,
  country TEXT,
  release_date DATE,
  imdb_rating NUMERIC,
  imdb_votes INTEGER,
  poster_url TEXT,
  trailer_url TEXT
);

CREATE TABLE film_person (
  film_id INTEGER REFERENCES film(id),
  person_id INTEGER REFERENCES person(id),
  role TEXT,
  PRIMARY KEY (film_id, person_id, role)
);

CREATE TABLE genre (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE film_genre (
  film_id INTEGER REFERENCES film(id),
  genre_id INTEGER REFERENCES genre(id),
  PRIMARY KEY (film_id, genre_id)
);

CREATE TABLE audience_country (
  id SERIAL PRIMARY KEY,
  country TEXT NOT NULL
);

CREATE TABLE film_audience (
  film_id INTEGER REFERENCES film(id),
  audience_country_id INTEGER REFERENCES audience_country(id),
  rating NUMERIC,
  PRIMARY KEY (film_id, audience_country_id)
);
