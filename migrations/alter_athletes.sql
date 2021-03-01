ALTER TABLE Athlete
RENAME COLUMN gender TO athlete_gender;

INSERT INTO migrations (migration, migrated_at) VALUES
('202003011730000-update-athletes.sql', '2020-03-01 17:30:00');