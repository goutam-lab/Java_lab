-- MySQL script to create users table
CREATE DATABASE IF NOT EXISTS userdb;
USE userdb;

CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL UNIQUE,
  password VARCHAR(50) NOT NULL
);

-- Insert sample user
INSERT INTO users (username, password) VALUES ('testuser', 'testpass');
