PlatinumRx Data Analyst Assignment

Overview

This repository contains my solutions for the PlatinumRx Data Analyst assignment.
The goal of this assignment was to work on real-world scenarios involving SQL, Python, and spreadsheet-based analysis.

I have tried to keep the data realistic and structured in a way that reflects how actual systems behave, rather than using perfectly uniform or synthetic data.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Hotel Management System (SQL)

For this part, I designed a simple hotel database with proper relationships between tables.

 What I did:

* Created 4 related tables:

  * `users`
  * `bookings`
  * `booking_commercials`
  * `items`
* Inserted sample data covering different months in 2021 to support time-based queries
* Ensured that bookings, billing, and items are logically connected

 Queries implemented:

* Retrieved the last booked room for each user
* Calculated total billing for bookings made in November 2021
* Filtered bills in October 2021 with amount greater than 1000
* Identified most and least ordered items for each month
* Found customers with the second highest bill value per month

-----------------------------------------------------------------------------------------------------------------------------------------------------

Clinic Management System (SQL)

In this section, I worked on a clinic-based dataset focusing on revenue and profitability.

What I did:

* Created 4 tables:

  * `clinics`
  * `customer`
  * `clinic_sales`
  * `expenses`
* Added 40+ records per table with varied data distribution
* Included multiple cities, states, and sales channels to make the analysis meaningful
* Made sure both profit and loss scenarios exist for proper evaluation

Queries implemented:

* Calculated revenue generated from each sales channel
* Identified top 10 customers based on total spending
* Generated month-wise revenue, expense, and profit with status (profitable / not-profitable)
* Found the most profitable clinic in each city for a given month
* Identified the second least profitable clinic in each state

-----------------------------------------------------------------------------------------------------------------------------------------------

Python Tasks

Implemented two basic programs using loops:

1. Converted minutes into a human-readable format (hours + minutes)
2. Removed duplicate characters from a string while preserving order

Both programs take dynamic user input.

--------------------------------------------------------------------------------------------------------------------------------------------------

Spreadsheet Task

The spreadsheet contains structured data and analysis as required in the assignment:

--> https://docs.google.com/spreadsheets/d/1O1jQVTkqGkIgiaFDrt37TdrS_3TSyHuqICqVxpxKcBc/edit?usp=sharing

---------------------------------------------------------------------------------------------------------------------------------------------------

Screen Recording

A screen recording is included where I explain:

I had provided the link for the screen recording
--> 
  
* Table creation
* Query logic
* Outputs and reasoning

-------------------------------------------------------------------------------------------------------------------------------------------------------

Tools Used

* MySQL Workbench for database design and queries
* Python for scripting tasks
* Google Sheets for spreadsheet analysis
* GitHub for version control and submission

---------------------------------------------------------------------------------------------------------------------------------------------------------

Final Notes

* The data is manually created to resemble realistic usage patterns
* I focused on clarity and correctness in queries rather than over-complicating logic
* Edge cases like missing data and NULL handling were considered where required

---------------------------------------------------------------------------------------------------------------------------------------------------------

Author

Chebrolu Nandan
