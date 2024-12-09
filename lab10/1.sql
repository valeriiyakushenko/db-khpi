CREATE TABLE lines_table (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    color VARCHAR(20)
);

CREATE TABLE stations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    line_id INT,
    latitude FLOAT,
    longitude FLOAT,
    FOREIGN KEY (line_id) REFERENCES lines_table(id) ON DELETE CASCADE
);

CREATE TABLE connections (
    id INT AUTO_INCREMENT PRIMARY KEY,
    station1_id INT NOT NULL,
    station2_id INT NOT NULL,
    transfer BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (station1_id) REFERENCES stations(id) ON DELETE CASCADE,
    FOREIGN KEY (station2_id) REFERENCES stations(id) ON DELETE CASCADE
);
