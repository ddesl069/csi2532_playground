  
CREATE TABLE Migrations (
 migration varchar(255),
 migrated_at time,
 PRIMARY KEY (migration)
);

INSERT INTO migrations (migration, migrated_at) VALUES
('20210301173000-create-athletes.sql', '2021-03-01 17:30:00');

INSERT INTO migrations (migration, migrated_at) VALUES 
('20210301173000-create-migrations.sql', '2021-03-01 17:30:00');