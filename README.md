# Movie Store Database

## Description  
This project implements a database system for managing the inventory of a movie rental store. It efficiently stores and retrieves movie records, customer information, and rental transactions using SQL queries. The system ensures that all movie-related data is properly organized and easily accessible.

## Features  
- **Movie Inventory Management**: Add, update, and delete movie records.  
- **Customer Management**: Store customer details and manage rental history.  
- **Rental Transactions**: Track rental transactions including rental date and return date.  
- **Efficient Data Querying**: Use SQL for fast and optimized data retrieval.

## Technologies Used  
- SQL  

## Setup Instructions  
To get started with the Movie Store Database project, follow these steps:

1. **Clone the Repository**  
   Clone this repository to your local machine using the following command:
   ```bash
   git clone https://github.com/your-username/movie-store-database.git
2. Set Up the Database

If you're using MySQL, you can create a new database using the following command:
sql
CREATE DATABASE video_store;
Import the provided SQL files to set up the necessary tables and data. You can do this in your SQL client or terminal.

3. Run Queries
After setting up the database, run the queries for adding, updating, and retrieving movie and customer data.

4. Example Queries
Here are some example SQL queries you can run:

Add a New Movie:
sql
INSERT INTO movies (title, genre, release_year, director) VALUES ('The Matrix', 'Sci-Fi', 1999, 'The Wachowskis');

Find Movies by Genre:
sql
SELECT * FROM movies WHERE genre = 'Action';


Track a Rental Transaction:
sql
INSERT INTO rentals (movie_id, customer_id, rental_date, return_date) VALUES (1, 2, '2025-01-01', '2025-01-10');

