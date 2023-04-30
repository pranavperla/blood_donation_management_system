-- Trigger in Mysql?
use blood_donation_management;

create table backup_patient like patient;
create table backup_bloodpatient like bloodpatient;

DELIMITER //
CREATE TRIGGER Keep_track 
before delete ON patient
FOR EACH ROW
BEGIN
		INSERT INTO backup_patient (select * from patient where patient_id = old.patient_id);
		INSERT INTO backup_bloodpatient (select * from bloodpatient where patient_id = old.patient_id);
		delete from bloodpatient where Patient_id = old.Patient_id;
        
END //        
DELIMITER ;

delete from patient where patient_id = 'E034';
select * from backup_patient;
select * from backup_bloodpatient;



insert into patient(Patient_id,patient_name,bloodtype,patient_address,patient_email,patient_ph_no)
values('E034','Viresh','O-','suttagalli','viresh@gmail.com',937530234);
insert into donor value('D034','vinay','O-','Kolar','vinaykumar@gmail.com',9930049302);
insert into branch value('B01','banashankari','Bangalore',560035);
insert into blooddonevent value('E342','B01','2002-03-12');

insert into blood value('453','D034','E342','2');
insert into bloodpatient value('E034','453','2002-03-12',3);


