--Challenge 2--
select * from ConsoleDates$;

select * from ConsoleGames$;

--Global sales calculations--
select round((sum(NA_Sales)/(sum(NA_Sales)+sum(EU_Sales)+sum(JP_Sales)+sum(Other_Sales))) * 100, 2)  as NA_Global_Sales
from ConsoleGames$;

--Create a view and show columns--
create view consoleGame 
AS
select Platform, Year, Name
from ConsoleGames$;

select * from consoleGame
order by Platform asc, Year desc;

--Extract the first four letter of the publisher's name--
select left(Publisher, 4) as Short_Pub
from ConsoleGames$;

--All platforms before 'Black Friday' or 'Christmas'--
select format(FirstRetailAvailability, 'MM-dd') as time_frame, Platform
from ConsoleDates$
where format(FirstRetailAvailability, 'MM-dd') < '11-25' OR format(FirstRetailAvailability, 'MM-dd') < '12-25';

--Length of time console has been around in days--
select format(FirstRetailAvailability, 'yyyy-MM-dd') as release, format(Discontinued, 'yyyy-MM-dd') as shelf_end, 
DATEDIFF(day,format(FirstRetailAvailability, 'yyyy-MM-dd'), format(Discontinued, 'yyyy-MM-dd')) as Time_on_shelf
from ConsoleDates$;

--I would say to reaearch the release dates of the games and then use that data to build whichever conversion a client may want--

--Either go back to the source or reesearch and enter the data on your own--