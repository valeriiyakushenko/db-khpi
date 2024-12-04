CREATE TABLE categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(255) NOT NULL
);

CREATE TABLE news (
    news_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    publish_date DATETIME NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

CREATE TABLE comments (
    comment_id INT PRIMARY KEY AUTO_INCREMENT,
    news_id INT,
    comment_text TEXT NOT NULL,
    comment_date DATETIME NOT NULL,
    user_ip VARCHAR(45),
    FOREIGN KEY (news_id) REFERENCES news(news_id)
);

CREATE TABLE ratings (
    rating_id INT PRIMARY KEY AUTO_INCREMENT,
    news_id INT,
    rating_value INT CHECK (rating_value BETWEEN 1 AND 5),
    user_ip VARCHAR(45),
    FOREIGN KEY (news_id) REFERENCES news(news_id),
    UNIQUE (news_id, user_ip)  
);