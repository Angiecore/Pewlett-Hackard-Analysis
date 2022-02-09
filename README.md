# **Pewlett-Hackard-Analysis**

## Overview of the analysis

The purpose of this analysis is to build a database with SQL by applying data modeling, engineering and analysis. For this assignment, we have to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. 


## Results

There is a bulleted list with four major points from the two analysis deliverables.

 ***Retiring Titles*** 

* A query is written and executed to create a Retirement Titles table for employees who are born between January 1, 1952 and December 31, 1955. 
* Based on the analysis, 90,398 employees are eligible for retirement.

![image](https://user-images.githubusercontent.com/95327338/153115922-f7124946-ef8d-4c86-8494-fb0307e62cad.png)

![image](https://user-images.githubusercontent.com/95327338/153113529-c2c9b480-adc8-43f5-affa-2146273cd351.png)

 ***Unique Titles***
 
 * A query is written and executed to create a Unique Titles table that contains the employee number, first and last name, and most recent title.

![image](https://user-images.githubusercontent.com/95327338/153120942-a6f2a4d4-48ab-4fc3-9b76-34a3055432a2.png)

![image](https://user-images.githubusercontent.com/95327338/153113682-ded6e1c1-3451-43aa-8088-6b456fb93814.png)

***Retirement Titles***

* The three groups with the highest quantity of employees are engineers, staff and senior engineers.

![image](https://user-images.githubusercontent.com/95327338/153118345-02ecee41-d743-4d4d-9be2-51a43ebb425f.png)

![image](https://user-images.githubusercontent.com/95327338/153113802-e7e6100f-530c-4326-83ff-a297a1ef47f0.png)

***Mentoship Elegibility***

* I wrote a query to create a Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program.
* I used a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows.
* Also, the total eligible to participate in a mentorship program is 1549 employees.

![image](https://user-images.githubusercontent.com/95327338/153121808-5404de30-96ac-4766-97ac-5878f3c07c1e.png)

![image](https://user-images.githubusercontent.com/95327338/153113892-af8b69b4-2656-4a4b-b0df-02f92e887f82.png)


## Summary

The summary addresses the two questions and contains two additional queries or tables that may provide more insight.

Summary: 

Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

How many roles will need to be filled as the "silver tsunami" begins to make an impact?

Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
