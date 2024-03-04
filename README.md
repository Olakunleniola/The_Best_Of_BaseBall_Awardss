# The Best Of Baseball Awards
The Best Of Baseball Awards is an SQL project completed during my Codecademy boot camp. This project involves working with a comprehensive baseball database containing player information, team statistics, managerial data, salaries, and more. The dataset spans from the year 1871 to 2019, offering a treasure trove of insights into the world of baseball. The purpose is to use SQL queries to investigate the database and create awards for the categories of the heaviest hitters, shortest sluggers, biggest spenders, and most bang for their buck in 2010.

## Handing Out Awards
The Best of Baseball Awards, using SQL queries to determine the winners of various awards

+ **Heaviest Hitters**: Awarded to the team with the highest average weight of its batters in a given year.
- **Shortest Sluggers**: Awarded to the team with the smallest average height of its batters in a given year.
+ **Biggest Spenders**: Awarded to the team with the largest total salary of all players in a given year.
- **Most Bang For Their Buck In 2010**: Awarded to the team with the smallest "cost per win" in 2010, calculated by total salary divided by the number of wins.
+ **Priciest Starter**: Awarded to the pitcher with the highest cost per game started in a given year (minimum 10 games started).

## Download and Usage
1.  Clone the repository:
    ```bash
        git clone https://github.com/Olakunleniola/The_Best_Of_BaseBall_Awardss.git
    ```
2. Import Database:
    + Locate the baseball_database.sql file.
    - Use your PostgreSQL client to create a new database (e.g., baseball) and import the baseball_database.sql file. This will execute all PostgreSQL commands, setting up the tables and populating them with the dataset.
    + Alternatively, you can use your local PostgreSQL shell by running:
    ```bash
        psql -U username -d database -f baseball_database.sql
    ```
3. Solution File:
    + Inside the repository, you'll find a file named my_solution.sql.
    - This file contains the solution to the project.
    +  Run the following command in your local PostgreSQL shell:
        ```bash
            psql -U username -d database -f my_solution.sql
        ```
    - Alternatively, in your PostgreSQL client, copy the contents of my_solution.sql and paste them into the client's query field.

## Contributing
Contributions to The Best Of Baseball Awards project are encouraged! Share your insights, solutions, or award ideas.

## License
This project is licensed under the Creative Commons Attribution-ShareAlike 3.0 Unported License. Special thanks to Sean Lahman for providing the remarkable dataset.
