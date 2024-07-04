#Task 1 Using count, get the number of cities in the USA
Select count(name) as Number_of_City, countrycode as Country
From city
Where countrycode = 'USA';

#Task 2 Find out what the population and average life expectancy for people in Argentina (ARG) is.​

Select name as Country, Population, round(avg(LifeExpectancy),2) as 'Average Life Expectancy'
From Country
Where code = 'ARG';

# Task 3 Using ORDER BY, LIMIT, what country has the highest life expectancy?​

Select  Name, LifeExpectancy
From country
Order By LifeExpectancy desc
Limit 10;

-- #Task 4 Select 25 cities around the world that start with the letter 'F' in a single SQL query.​

Select Name as '25 Cities starting with letter F'
From city
Where name like 'F%'
Order By Name
Limit 25;

-- # Task 5 Create a SQL statement to display columns Id, Name, Population from the city table and limit results to first 10 rows only.​
Select ID, Name, Population
From city
Limit 10;

-- #Task 6 Create a SQL statement to find only those cities from city table whose population is larger than 2000000.​
Select Name as City, Population
From city
Where Population > 2000000
Order By Population DESC;

-- #Task 7 	Create a SQL statement to find all city names from city table whose name begins with “Be” prefix.​

Select Name as ' Cities'
From city
Where name like 'Be%'
Order By Name;

-- #Task 8 Create a SQL statement to find only those cities from city table whose population is between 500000-1000000.​

Select Name as City, Population
From city
Where Population Between 500000 and 1000000
Order By Population DESC;

-- #Task 9 Create a SQL statement to find a city with the lowest population in the city table.​
Select name as City, Population
From City
Order By Population ASC
Limit 1;

-- #Task Bonus Create a SQL statement to find the capital of Spain (ESP).​

Select  city.name as Capital, country.Name as Country
From city
Inner Join country on city.ID = country.Capital
Where country.Name = 'Spain';

-- #Task Bonus 2 Create a SQL statement to list all the languages spoken in the Caribbean region.​

Select Distinct country.Region, countrylanguage.Language
From country
Inner Join countrylanguage on country.Code=countrylanguage.CountryCode
Where country.Region = 'Caribbean';

-- #Task Bonus 3 Create a SQL statement to find all cities from the Europe continent.​

Select city.Name as City, country.Name as Country, country.Continent
From City
Join country on city.countrycode=country.code
Where Continent = 'Europe';


Select *
From countrylanguage







