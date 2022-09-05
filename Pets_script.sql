--Challenge 7--

select * from Owners$;

select * from Pets$;

select * from ProceduresDetails$;

select * from ProceduresHistory$;

--Owner Name and pet--
select (o.Name + ' ' + o.Surname) as Full_Name, p.Name 
from Owners$ o, Pets$ p
where o.OwnerID = p.OwnerID;

--Pets and procedures performed--
select p.Name, p.Kind, ph.ProcedureType
from Pets$ p, ProceduresHistory$ ph
where p.PetID = ph.PetID;

--Procedures and their description--
select ph.ProcedureType, p.Description
from ProceduresDetails$ p, ProceduresHistory$ ph
where p.ProcedureSubCode = ph.ProcedureSubCode;

--Select pet and the types of procedures they had--
select pe.Name, pe.Kind, p.ProcedureType, p.Description
from ProceduresDetails$ p, ProceduresHistory$ ph, Pets$ pe
where p.ProcedureSubCode = ph.ProcedureSubCode and ph.PetID = pe.PetID;

--Owners and the prices paid for procedures--
select (o.Name +' '+o.Surname) as Full_Name, pd.Price as Price
from Owners$ o
	Inner Join Pets$ p
		on o.OwnerID = p.OwnerID
	Inner Join ProceduresHistory$ ph
		on p.PetID = ph.PetID
	Inner Join  ProceduresDetails$ pd
		on ph.ProcedureSubCode = pd.ProcedureSubCode
group by (o.Name +' '+o.Surname), pd.Price;
