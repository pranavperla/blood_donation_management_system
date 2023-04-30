-- Selecting a name from the table.
select don_name, don_ph_no
from donor
where don_name LIKE 'D%';

select *
from patient
where bloodtype = 'O-';

select don_id
from blood
where event_id = 'E005';

select event_id
from blooddonevent
where event_date = '07/06/2019';

select street, city, postcode
from branch
where branch_no ='B004';

-- Aggregation and grouping 
select count(blood_id)
from bloodpatient
where Quantity >1 ;

select count(patient_id), sum(quantity)
from bloodpatient
where blood_date like '%8%';

select bloodtype, count(patient_id)
from patient
group by bloodtype;

select bloodtype, don_name, don_address, don_ph_no
from donor
where bloodtype = 'O-'
order by don_name;

select branch_no, event_id, event_date
from blooddonevent
order by event_date desc;

-- Join queries
select b.don_id, d.bloodtype, b.blood_quantity
from blood as b, donor as d
where b.don_id = d.don_id;

select p.patient_id, p.bloodtype, b.quantity
from Patient as p, bloodpatient as b
where b.patient_id = p.patient_id;

-- outer join 
SELECT * FROM blood
LEFT JOIN donor ON blood.don_id = donor.don_id
UNION
SELECT * FROM blood
RIGHT JOIN donor ON blood.don_id = donor.don_id;

-- Nested queries
select *
from patient
where patient_id = (select Patient_id from bloodpatient where Blood_date = '2019-08-23');

select don_id,don_name, Bloodtype, Don_ph_no
from donor
where don_id in (select don_id from blood where event_id = 'E004');

select * from blooddonevent
where Branch_no in (select Branch_no from branch where branch_no = 'B005');

select Don_id, don_name, don_ph_no, Bloodtype
from donor
where don_id in (select don_id from blood where bloodtype like '%0');

select patient_id, patient_name, patient_ph_no
from patient
where patient_id in (select patient_id from bloodPatient where quantity >1);

select patient.patient_id,patient_name,patient_ph_no
from patient
INNER JOIN bloodPatient
ON patient.patient_id=bloodPatient.patient_id and bloodpatient.quantity>1;