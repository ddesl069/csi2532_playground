CREATE TABLE Competitions (
    compid int,
    comp_name varchar(255),
    venue varchar(255),
    start_time date,
    duration time(0),
    PRIMARY KEY(compid)
);

INSERT INTO schema_migrations (migration, migrated_at) VALUES
('20210301173000-create-migrations.sql', '2021-03-01 17:30:00');