-- Insert three users
INSERT INTO users (name, email, password)
VALUES
  ('John Doe', 'john@example.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  ('Jane Doe', 'jane@example.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  ('Bob Smith', 'bob@example.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

-- Insert three properties
INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES
  (1, 'Cozy Cabin', 'description', 'cabin_thumbnail.jpg', 'cabin_cover.jpg', 50, 2, 1, 1, 'Canada', 'Forest Street', 'Natureville', 'Natureland', 'NAT123', TRUE),
  (2, 'Beach House', 'description', 'beach_thumbnail.jpg', 'beach_cover.jpg', 100, 3, 2, 3, 'USA', 'Sunny Street', 'Sunshine City', 'Sunland', 'SUN456', TRUE),
  (3, 'City Apartment', 'description', 'apartment_thumbnail.jpg', 'apartment_cover.jpg', 80, 1, 1, 2, 'UK', 'Downtown Street', 'Metropolis', 'Cityville', 'CITY789', TRUE);

-- Insert three reservations
INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES
  ('2023-01-15', '2023-01-20', 1, 2),
  ('2023-02-05', '2023-02-10', 2, 1),
  ('2023-03-01', '2023-03-10', 3, 3);

-- Insert three property reviews
INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES
  (1, 1, 1, 4, 'description'),
  (2, 2, 2, 5, 'description'),
  (3, 3, 3, 3, 'description');