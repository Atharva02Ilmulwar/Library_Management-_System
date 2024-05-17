# Library_Management-_System
## Library Database Schema

This repository contains SQL code for setting up a basic library database schema. The schema includes three tables:

* **Authors:** Stores information about authors, including their ID and name.
* **Books:** Stores information about books, including their ID, title, author ID, genre, and publication year. The author ID references the Authors table using a foreign key relationship.
* **Dates:** Stores a range of dates for potential future use (e.g., for loan due dates).

## Usage

1. Clone this repository to your local machine.

2. Open your preferred SQL client and connect to your database.

3. Execute the SQL statements in the following order:

    * The statements creating the tables (`Authors`, `Books`, and `Dates`).
    * The statements inserting data into the tables (`Authors` and `Books`).
    * (Optional) The final `SELECT` statement retrieves dates between a specific range (`2023-01-01` and `2024-05-30`). You can modify this statement to fit your needs.

## License

This code is provided without any specific license. You are free to use and modify it for your own purposes.
