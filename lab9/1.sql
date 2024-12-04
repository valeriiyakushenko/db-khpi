CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE projects (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    created INT REFERENCES users(id)
);

CREATE TABLE tasks (
    id SERIAL PRIMARY KEY,
    project_id INT REFERENCES projects(id),
    name VARCHAR(100) NOT NULL,
    author_id INT REFERENCES users(id),
    assigned_to INT REFERENCES users(id),
    description TEXT
);

CREATE TABLE task_users (
    task_id INT REFERENCES tasks(id),
    user_id INT REFERENCES users(id), 
    PRIMARY KEY (task_id, user_id)
);

CREATE TABLE files (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    project_id INT REFERENCES projects(id),
    task_id INT REFERENCES tasks(id),
    link TEXT NOT NULL
);
