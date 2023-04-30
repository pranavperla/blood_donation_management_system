create database blood_donation_management;
use blood_donation_management;

create table Donor (
don_id varchar(7) not null,
don_name varchar(20) not null,
bloodtype varchar(7) not null,
don_address varchar(255),
don_email varchar(255),
don_ph_no Bigint not null unique,
primary key(don_id));

create table Branch(
branch_no varchar(7) not null,--
street varchar(255) not null,
city char(20) not null,
Pincode int not null,
primary key(branch_no));

create table Patient(
Patient_id varchar(7) not null,
Patient_name varchar(20) not null,
bloodtype varchar(7) not null,
Patient_address varchar(255),
Patient_email varchar(255),
Patient_ph_no bigint not null unique,
primary key(Patient_id));

create table BloodDonEvent(
event_id varchar(7) not null,
branch_no varchar(7) not null,
event_date date not null,
primary key(event_id),
foreign key(branch_no) REFERENCES Branch(branch_no));

create table Blood(
blood_id varchar(7) not null,
don_id varchar(7) not null,
event_id varchar(7) not null,
blood_quantity varchar(7) not null,
primary key(blood_id),
foreign key(don_id) references Donor(don_id),
foreign key(event_id) references BloodDonEvent(event_id));

create table BloodPatient(
Patient_id varchar(7) not null,
Blood_id varchar(7) not null,
blood_date date not null,
Quantity int not null,
foreign key(Patient_id) references Patient(Patient_id),
foreign key(blood_id) references Blood(Blood_id),
primary key(Patient_id,Blood_id)
);
