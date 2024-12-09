CREATE TABLE users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE tasks(
    id INT PRIMARY KEY AUTO_INCREMENT,
    project_id INT NOT NULL,
    author_id INT NOT NULL,
    title VARCHAR(100) NOT NULL,
    description TEXT NOT NULL
);

CREATE TABLE projects(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE files(
    id INT PRIMARY KEY AUTO_INCREMENT,
    file_path VARCHAR(255) NOT NULL,
    about_file VARCHAR(255) DEFAULT NULL	
);

CREATE TABLE tasks_users(
    user_id INT NOT NULL,
    task_id INT NOT NULL,
    PRIMARY KEY (user_id,task_id)
);

CREATE TABLE projects_users(
    user_id INT NOT NULL,
    project_id INT NOT NULL,
    PRIMARY KEY (user_id,project_id)
);

CREATE TABLE entity_files(
    entity_id INT NOT NULL,
    files_id INT NOT NULL, 
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (entity_id, files_id)
);