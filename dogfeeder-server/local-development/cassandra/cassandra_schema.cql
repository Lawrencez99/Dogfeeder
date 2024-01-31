CREATE KEYSPACE IF NOT EXISTS spaceship_cassandra WITH replication = {'class' : 'SimpleStrategy', 'replication_factor' : 1};

USE spaceship_cassandra;

CREATE TABLE IF NOT EXISTS "spaceship_coordinate" (
      id uuid,
      spaceship_id text,
      x int,
      y int,
      z int,
      timestamp timestamp,
      PRIMARY KEY (spaceship_id, id)
);