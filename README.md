README file for lab 2, playground updated version
name: Dante Deslauriers,
student number: 300114162
#lab2
![ImageSQL](https://github.com/ddesl069/csi2532_playground/blob/Lab02/sql.PNG?raw=true)

#lab3
#Diagrame ER

#Cas 1

![Cas1 ER](https://github.com/ddesl069/csi2532_playground/blob/Lab03/lab%2003/Cas1.png)

#Cas 2

![Cas2 ER](https://github.com/ddesl069/csi2532_playground/blob/Lab03/lab%2003/Cas2.png)

#Cas 3

![Cas3 ER](https://github.com/ddesl069/csi2532_playground/blob/Lab03/lab%2003/Cas3.png)

#Cas 4

![Cas4 ER](https://github.com/ddesl069/csi2532_playground/blob/Lab03/lab%2003/Cas4.png)

#Cas 5

![Cas5 ER](https://github.com/ddesl069/csi2532_playground/blob/Lab03/lab%2003/Cas5.png)

#cas 6

![Cas6 ER](https://github.com/ddesl069/csi2532_playground/blob/Lab03/lab%2003/Cas6.png)

#Lab 4

#Diagrammes Relationnels

#Cas 1
![Cas1 RE](https://github.com/ddesl069/csi2532_playground/blob/Lab04/lab%2004/Cas1.png)

#Cas 3
![Cas3 RE](https://github.com/ddesl069/csi2532_playground/blob/Lab04/lab%2004/Cas3.png)

#Cas 5
![Cas5 RE](https://github.com/ddesl069/csi2532_playground/blob/Lab04/lab%2004/Cas5.png)

#Cas 6
![Cas6 RE](https://github.com/ddesl069/csi2532_playground/blob/Lab04/lab%2004/Cas6.png)

# SQL code for Lab 4
#Schema 1
```sql
  CREATE TABLE  Classes (
    coursID int,
    PRIMARY KEY (coursID)
   );

   CREATE TABLE Professors (
      ID int,
      PRIMARY KEY (ID)
     );

  CREATE TABLE Teaches (
    semester_id int,
    ID int,
    coursID int,
    FOREIGN KEY (coursID) REFERENCES Classes(coursID),
    FOREIGN KEY (ID) REFERENCES Professors(ID),
    PRIMARY KEY (ID, courseID)
   );
```
#Schema 3
```sql
  CREATE TABLE  Classes (
    coursID int,
    PRIMARY KEY (coursID)
   );

   CREATE TABLE Professors (
      ID int,
      PRIMARY KEY (ID)
      FOREIGN KEY (CcourseID) REFERENCES Professors(ID)
     );
 ```
#Schema 5
```sql
 CREATE TABLE  Classes (
  coursID int,
  PRIMARY KEY (coursID)
 );
  
 CREATE TABLE Professors (
    ID int,
    PRIMARY KEY (ID)
   );
CREATE TABLE Semsester (
  semesterID int,
  PRIMARY KEY (semesterID)
);

CREATE TABLE Teaches (
  semesterID int,
  coursID int,
  ID int,
  FOREIGN KEY (semesterID) REFERENCES Semester(semesterID)
  FOREIGN KEY (coursID) REFERENCES Classes(coursID),
  FOREIGN KEY (ID) REFERENCES Professors(ID),
  PRIMARY KEY (semesterID, coursID, ID)
 );
 ```
 #Schema 6
 ```sql
 CREATE TABLE  Classes (
  coursID int,
  PRIMARY KEY (coursID)
 );
  
 CREATE TABLE Professors (
    ID int,
    PRIMARY KEY (ID)
   );

CREATE TABLE Teaches (
  semesterID int,
  coursID int,
  groupID int,
  FOREIGN KEY (coursID) REFERENCES Classes(coursID),
  FOREIGN KEY (groupID) REFERENCES pgroup(groupID),
  PRIMARY KEY (semesterID)
 );
 
 CREATE TABLE Pgroup (
  groupID int,
  PRIMARY KEY (groupID)
 );
 
 CREATE TABLE Membersof(
  ID int,
  groupID int,
  FOREIGN KEY (ID) REFERENCES Professors(ID),
  FOREIGN KEY (groupID) REFERENCES Pgroup(groupID)
 );
 ```
 
 Lab 5
 
 Migrations:
 
 1:
 
 ```sql
  CREATE TABLE Athlete (
    id int,
    nom varchar(255),
    gender varchar(1),
    age int,
    PRIMARY KEY(id)
  );
```

2:

```sql
  CREATE TABLE Migrations (
 migration varchar(255),
 migrated_at time,
 PRIMARY KEY (migration)
  );

  INSERT INTO migrations (migration, migrated_at) VALUES
  ('20210301173000-create-athletes.sql', '2021-03-01 17:30:00');

  INSERT INTO migrations (migration, migrated_at) VALUES 
  ('20210301173000-create-migrations.sql', '2021-03-01 17:30:00');
```

3:

```sql
  ALTER TABLE Athlete
  RENAME COLUMN gender TO athlete_gender;

  INSERT INTO migrations (migration, migrated_at) VALUES
  ('202003011730000-update-athletes.sql', '2020-03-01 17:30:00');
```

4:

```sql 
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
```

Lab 6

Question 1
```sql
  SELECT name, birthplace
  FROM artists;
```
Question 2
```sql
  SELECT title, price
  FROM artworks
  WHERE price >1600;
```
Question 3
```sql
  SELECT title, type
  FROM artworks
  WHERE year = 2000 OR artist_name= 'Picasso';
```
Question 4
```sql
  SELECT name, birthplace
  FROM artists
  WHERE dateofbirth BETWEEN '1880-01-01' AND '1930-12-31';
```
Question 5
```sql
  SELECT name, country
  FROM artists
  WHERE style IN ('Modern', 'Baroque', 'Renaissance');
```
Question 6
```sql
  SELECT *
  FROM artworks
  GROUP BY title;
```
Question 7
