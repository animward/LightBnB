-- insert data into the users table
INSERT INTO users (name, email, password)
VALUES 
  ('Eva Stanley', 'sebastianguerra@ymail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  ('Louisa Meyer', 'jacksonrose@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  ('Dominic Parks', 'victoriablackwell@outlook.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

-- insert data into the properties table
INSERT INTO properties (owner_id, title, description, cost_per_night, number_of_bedrooms, number_of_bathrooms)
VALUES
  (1, 'Property1', 'Description1', 100, 2, 1),
  (2, 'Property2', 'Description2', 200, 3, 2),
  (3, 'Property3', 'Description3', 150, 1, 1);

-- insert data into the reservations table
INSERT INTO reservations (start_date, end_date, property_id, guest_id, number_of_guests)
VALUES
  ('2022-04-01', '2022-04-07', 1, 2, 3),
  ('2022-05-15', '2022-05-20', 2, 3, 2),
  ('2022-06-10', '2022-06-15', 3, 1, 4);