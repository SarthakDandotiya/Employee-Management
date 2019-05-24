# Design Document

A Member Management System

## Database

MySQL -> Members (Id, Name, Email, Age, Country)

## Java Files

-   Member

     Basically a user defined datatype to store Employee details.

     Will contain getter and setter methods.

-   Actions

    Class containing all methods for the system
    
    - getConnection
    - save
    - update
    - delete
    - getMemberById
    - getAllMembers

- Save

- Edit

    - get 
    - post
    - if both arent ppossible on same route, make 'Editor' servlet
  
- Delete

- View


## Views

- index.html

- other views will be generated from within the java files as we shall not be using JSP in this project.
