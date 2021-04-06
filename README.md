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
![question1](https://github.com/ddesl069/csi2532_playground/blob/Lab06/images%20lab06/question1.png)

Question 2
```sql
  SELECT title, price
  FROM artworks
  WHERE price >1600;
```
![question2](https://github.com/ddesl069/csi2532_playground/blob/Lab06/images%20lab06/question2.png)

Question 3
```sql
  SELECT title, type
  FROM artworks
  WHERE year = 2000 OR artist_name= 'Picasso';
```
![question3](https://github.com/ddesl069/csi2532_playground/blob/Lab06/images%20lab06/question3.png)

Question 4
```sql
  SELECT name, birthplace
  FROM artists
  WHERE dateofbirth BETWEEN '1880-01-01' AND '1930-12-31';
```
![question4](https://github.com/ddesl069/csi2532_playground/blob/Lab06/images%20lab06/question4.png)

Question 5
```sql
  SELECT name, country
  FROM artists
  WHERE style IN ('Modern', 'Baroque', 'Renaissance');
```
![question5](https://github.com/ddesl069/csi2532_playground/blob/Lab06/images%20lab06/question5.png)

Question 6
```sql
  SELECT *
  FROM artworks
  GROUP BY title;
```
![question6](https://github.com/ddesl069/csi2532_playground/blob/Lab06/images%20lab06/question6.png)

Question 7
```sql
  SELECT name, id 
  FROM customers
  INNER JOIN likeartists ON customers.id = likeartists.customer_id
  WHERE artist_name = 'Picasso';
```
![question7](https://github.com/ddesl069/csi2532_playground/blob/Lab06/images%20lab06/question7.png)

Question 8
```sql
  SELECT name 
  FROM customers
  INNER JOIN likeartists ON customers.id = likeartists.customer_id
  WHERE artist_name 
  IN(SELECT artist_name FROM likeartists
      INNER JOIN artists ON likeartists.artist_name = artists.name
      WHERE style = 'Renaissance')
  AND amount > 30000;
```
![question8](https://github.com/ddesl069/csi2532_playground/blob/Lab06/images%20lab06/question8.png)

Lab 07

``` Question 1a:
  Les clés candidates de R sont: AB,BC,BD.
  La relation R n'est pas dans BCNF, La relation R est dans 3NF.
  
Question 1b:
  Les clés candidates de R sont: A,B,C,D.
  La relation R est dans BCNF, La relation R est dans 3NF.
  
Question 1c:
  Les clés candidates de R sont: B.
  La relation R n'est pas dans BCNF, La relation R n'est pas dans 3NF.
 
Question 1d:
  Les clés candidates de R sont: ABC,BCD.
  La relation R n'est pas dans BCNF, La relation R est dans 3NF.
  
Question 1e:
  Les clés candidates de R sont: AB.
  La relation R n'est pas dans BCNF, La relation R n'est pas dans 3NF.
  
Question 2a:
  AB->D, est valide. Avec la règle de transitivité
  if a->B and B->y,
  then a->y.
  
  AB->C and BC->AD,
  then AB->C.
  
Question 2b:
  A->C est invalide puisque a ne puisse pas identifier de manière unique B. A à besoin de B pour -> C.
  
Question 2c:
  AB->C invalide pour la même raison de 2b.
  
Question 2d:
  A->C or B->C est valide par la règle de décomposition.
  if a->By,
  then a->B, a->y.
  
  if AB->C,
  A->C and B->C.
  
Question 3:
  La converture canonique de F={B->A, D->A, AB-> D} est Fd={D->A, B->D}.
  
Question 4:
  La décomposition BCNF de R est ABH-> C, la relation R est dans BCNF.
```
