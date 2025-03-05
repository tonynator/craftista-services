CREATE TABLE IF NOT EXISTS origami (
    origami_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    votes INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS votes (
    id SERIAL PRIMARY KEY,
    product_id INTEGER NOT NULL,
    vote_value INTEGER NOT NULL,
    date_added TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO origami (name, votes) VALUES 
    ('Origami Crane', 0),
    ('Origami Frog', 0),
    ('Origami Kangaroo', 0),
    ('Origami Camel', 0),
    ('Origami Butterfly', 0);
