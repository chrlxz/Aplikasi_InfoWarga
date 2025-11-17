CREATE DATABASE IF NOT EXISTS info_warga;
USE info_warga;

CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) UNIQUE,
  password VARCHAR(255),
  nama VARCHAR(100),
  telepon VARCHAR(20),
  role VARCHAR(20) DEFAULT 'user'
);

CREATE TABLE IF NOT EXISTS announcements (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255),
  description TEXT
);

CREATE TABLE IF NOT EXISTS events (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255),
  date VARCHAR(50),
  location VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS attendance (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  event_id INT,
  status VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS docs (
  id INT AUTO_INCREMENT PRIMARY KEY,
  event_id INT,
  path VARCHAR(255)
);

INSERT INTO users (username, password, nama, telepon, role) VALUES
('admin','admin123','Admin RT','08123456789','admin'),
('budi','budi123','Budi Warga','081298765432','user');
