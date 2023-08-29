-- Create patients table
CREATE TABLE patients
(
	id serial primary key not null,
	name varchar(250) not null,
	date_of_birth date not null
);

-- Create medical histories table
CREATE TABLE medical_histories
(
	id serial primary key not null,
	admitted_at timestamp,
	patient_id int REFERENCES patients(id),
	status varchar(100) not null
);

-- Create treatments table
CREATE TABLE treatments
(
	id serial primary key not null,
	type varchar(100),
	name varchar(100)
);