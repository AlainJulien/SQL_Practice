--SQL Practice from Sample Data on Consumer Complaints--
--Links to original data will be provided in separate file--
--Section 3 - Preparation-- 

--Identify all columns in table--
select * from ConsumerComplaints$;

--Find out sent/received complaints that were on the same day--
select count(ComplaintID) as No_of_Complaints, DateReceived
from ConsumerComplaints$
group by DateReceived;

--Extract complaints recevied by people from New York--
select ComplaintID, Issue, State_Name
from ConsumerComplaints$
where State_Name = 'NY';

--Extract complaints recevied by people from New York and California--
select ComplaintID, Issue, State_Name
from ConsumerComplaints$
where State_Name = 'NY' or State_Name = 'CA'
order by ComplaintID;

--Extracting the word "Credit" from Products--
select *
from ConsumerComplaints$
where Product_Name Like '%Credit%' or Sub_Product Like '%Credit%';

--Extracting the word "Late" from the Issue field--
select *
from ConsumerComplaints$
where Issue Like '%Late%';

