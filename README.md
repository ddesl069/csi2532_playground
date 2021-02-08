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
![Cas1 RE](https://github.com/ddesl069/csi2532_playground/blob/Lab04/lab%2004/Cas%201.png?raw=true)

#Cas 3
![Cas3 RE](https://github.com/ddesl069/csi2532_playground/blob/Lab04/lab%2004/Cas%203.png?raw=true)

#Cas 5
![Cas5 RE](https://github.com/ddesl069/csi2532_playground/blob/Lab04/lab%2004/Cas%205.png?raw=true)

#Cas 6
![Cas6 RE](https://github.com/ddesl069/csi2532_playground/blob/Lab04/lab%2004/Cas%206.png?raw=true)

# SQL code for Lab 3

CREATE TABLE  Classes (
  coursID int,
  PRIMARY KEY (coursID)
 );
  
 CREATE TABLE Professors (
    ID int,
    PRIMARY KEY (ID)
   );

CREATE TABLE Teaches (
  coursID int,
  ID int,
  FOREIGN KEY (ID) REFERENCES Professors(ID)
 );
  
