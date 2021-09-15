/*UC1*/
create database addressbook_service;
show databases;
 use addressbook_service;

/*UC2*/
create table address_book
(
id Int unsigned NOT NULL AUTO_INCREMENT,
firstname Varchar(30) NOT NULL,
lastname Varchar(30) NOT NULL,
address Varchar(100) NOT NULL,
city Varchar(20) NOT NULL,
state Varchar(20) NOT NULL,
zip Int NOT NULL,
phonenumber BIGINT NOT NULL,
email Varchar(30) NOT NULL,
PRIMARY KEY (id)
);

/*UC3*/
insert into address_book(firstname,lastname,address,city,state,zip,phonenumber,email) values
('Devesh','Bhangale','Saidham Complex','Silvassa','DNH',396230,7506385338,'devesh1806@gmail.com'),
('Devesh','Bhangale1','Saidham Complex','Vashi','Maharashtra',400706,7506385338,'devesh@gmail.com'),
('Nikhil','Musale','Mani nagar','Nagpur','Maharashtra',440003,7522632568,'musalenikhil@gmail.com'),
('Parag','Parashar','Mani nagar','Bandra','Maharashtra',400003,7522636568,'parag@gmail.com'),
('Heema','Jetty','Mani nagar','Thane','Maharashtra',400003,7522896568,'heema@gmail.com');

/*UC4*/
update address_book set address = 'Shreerang Society' where firstname = 'Heema' and lastname = 'Jetty';
update address_book set zip = 463207 where firstname = 'Parag' and lastname = 'Parashar';
select * from address_book;

/*UC5*/
delete from address_book where firstname = 'Devesh' and lastname = 'Bhangale1';
select * from address_book;

/*UC6*/
select * from address_book where city = 'Silvassa';
select * from address_book where state = 'Maharashtra';

/*UC7*/
select count(*) from address_book where city = 'Nagpur';
select count(*) from address_book where city = 'Thane';
select count(*) from address_book group by city;
select count(*) from address_book group by state;
select count(*) from address_book where state = 'Maharashtra';
select count(*) from address_book where state = 'DNH';

/*UC8*/
select firstname,lastname from address_book where city='nagpur' order by city asc;
select firstname,lastname,city from address_book order by city asc;

/*UC9*/
alter table address_book add type Varchar(20) NOT NULL;
select * from address_book;
