-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS test;

-- Use the test database
USE test;

-- Create the 'dogs' table
CREATE TABLE IF NOT EXISTS dogs (
  id INT AUTO_INCREMENT PRIMARY KEY,
  breed VARCHAR(100) NOT NULL,
  origin VARCHAR(100),
  temperament VARCHAR(200),
  height VARCHAR(50),
  weight VARCHAR(50)
);

-- Insert some sample data into the 'dogs' table
INSERT INTO dogs (breed, origin, temperament, height, weight)
VALUES ('Labrador Retriever', 'Canada', 'Friendly, Outgoing, and Trainable', '21.5-24.5 inches', '55-80 pounds');

INSERT INTO dogs (breed, origin, temperament, height, weight)
VALUES ('German Shepherd', 'Germany', 'Confident, Courageous, and Smart', '22-26 inches', '49-88 pounds');

INSERT INTO dogs (breed, origin, temperament, height, weight)
VALUES ('Golden Retriever', 'Scotland', 'Friendly, Intelligent, and Devoted', '21.5-24 inches', '55-75 pounds');

INSERT INTO dogs (breed, origin, temperament, height, weight)
VALUES ('French Bulldog', 'France', 'Lively, Playful, and Affectionate', '11-12 inches', '16-28 pounds');

INSERT INTO dogs (breed, origin, temperament, height, weight)
VALUES ('Siberian Husky', 'Russia', 'Outgoing, Mischievous, and Loyal', '20-24 inches', '35-60 pounds');
