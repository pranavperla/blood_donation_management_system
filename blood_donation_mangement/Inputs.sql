use blood_donation_management;

insert into donor(don_id, don_name, bloodtype,don_address,don_email,don_ph_no)
values('D003','Shivan','A+','Belagam','mypersonalmailthatis@gmail.com',86600808392),
('D004','Vinay','AB-','Kolar','vinaykumar@gmail.com',4805832476),
('D005','Pruthvi','O-','Halasuru','Pruthvi@gmail.com',9045600374),
('D002','Varun','O+','Dubai','Varun@gmail.com',9485068794),
('D001','Rohan','O-','Chandra layout','rockingrohan@gmail.com',8596750492),
('D006','Vivek','B-','HSR Layout','vivek@gmail.com',8940850356);

insert into patient(patient_id, patient_name, bloodtype, patient_address, Patient_email, Patient_ph_no)
values('P006','Sumanth','O-','chandra layout','Sumanth@gmail.com',6868797049),
('P004','Sathyajeeth R','O+','K R Puram','ravi.sathyajeeth@gmail.com',9110585605),
('P003','Srihari','O-','Vijaynagar','Srihari@gmail.com',9958690784),
('P005','Vishal','B-','Chandra layout','vishal@gmail.com',840585006),
('P001','Shashank','A+','nagarbavi','shashank@gmail.com',998877665544),
('P002','Yashasvi','AB-','Suttagalli','yashasvitb@gmail.com',884455667799);

insert into branch(branch_no,street,city,pincode)values
("B002","M.G.ROAD","BANGALORE",262512),
("B003","M.G.ROAD","KOLAR",563101),
("B001","JAYANAGAR","BANGALORE",77000),
("B004","P.C.EXTENSION","KOLAR",76300),
("B005","J.P.NAGAR","BANGALORE",262511),
("B006","INDIRANAGE","BANGALORE",262510);

insert into blooddonevent(event_id,event_date,branch_no)
values('E003','2019-05-24','B004'),
('E005','2019-08-19','B005'),
('E001','2019-12-08','B005'),
('E002','2019-03-22','B006'),
('E004','2019-03-09','B002'),
('E006','2019-07-06','B001');

insert into blood(blood_id,don_id,event_id,blood_quantity)
values('BL01','D005','E002',1),
('BL02','D002','E001',2),
('BL03','D003','E006',1),
('BL04','D004','E004',1),
('BL05','D006','E005',1),
('BL06','D001','E003',2);

insert into bloodpatient(patient_id, blood_id, blood_date,Quantity)
values('P003','BL02','2019-08-15',1),
('P001','BL06','2019-03-24',1),
('P002','BL04','2019-05-27',1),
('P004','BL01','2019-01-13',2),
('P006','BL03','2019-08-23',1),
('P005','BL05','2019-07-24',1);
