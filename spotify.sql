create database cad_musify;
use cad_musify;
alter table musify_registration rename musify_reg;  
create TABLE  musify_reg(
  SNo int DEFAULT NULL,
  User_ID int NOT NULL,                           
  FirstName varchar(50) DEFAULT NULL,
  MiddleName varchar(50) DEFAULT NULL,
  LastName varchar(50) DEFAULT NULL,
  User_Password varchar(255) DEFAULT NULL,
  Gender varchar(10) DEFAULT NULL,
  PhoneNumber long,
  Age int DEFAULT NULL,
  Email_Id varchar(255) DEFAULT NULL,
  Created_By date DEFAULT NULL,
  Created_On date DEFAULT NULL,
  Modify_By date DEFAULT NULL,
  Modify_On date DEFAULT NULL,
  PRIMARY KEY (User_ID)
) ;
create TABLE musify_product_stack (
   User_ID int NOT NULL,
  PRO_ID int NOT NULL,
  PRO_NAME varchar(255) DEFAULT NULL,
  PRICE double DEFAULT NULL,
  PHONE_NUMBER mediumtext,
  ADDRESS varchar(255) DEFAULT NULL,
  PURCHASED_BY varchar(255) DEFAULT NULL,
  MODIFIED_BY varchar(255) DEFAULT NULL,
  PURCHASED_ON datetime DEFAULT NULL,
  MODIFIED_ON datetime DEFAULT NULL,
  PRIMARY KEY (PRO_ID),
  foreign key( User_ID) references musify_reg(User_ID)
);

 insert into  musify_reg(SNo,User_ID,FirstName,MiddleName,LastName, User_Password,Gender,PhoneNumber, Age,Email_Id,Created_By,
  Created_On,Modify_By,Modify_On)
  values(13,1013,'Domenig','Vasanthan','A',null,'Male','8220904749',25,null,null,null,null,null),					
(14,1014,'Gopal','S',null,null,'Male','9361448297',22,null,null,null,null,null),					
(15,1015,'HARSH','A',null,null,'Male','9025664587',20,null,null,null,null,null),					
(16,1016,'Jayapravin','D',null,null,'male','7094937902',22,null,null,null,null,null),					
(17,1017,'jemimah','j',null,null,'Male','9489189043',22,null,null,null,null,null),					
(18,1018,'Manimohana','S',null,null,'male','9994987424',26,null,null,null,null,null),					
(19,1019,'Kiruthiga','R',null,null,'Male','7339220870',26,null,null,null,null,null),					
(20,1020,'Nancy','A',null,null,'Male','8428267221',24,null,null,null,null,null),					
(21,1021,'Natrayan','M',null,null,'','8825684098',26,null,null,null,null,null),					
(22,1022,'Pavithra','K',null,null,'','9025862493',21,null,null,null,null,null),					
(23,1023,'prabhaharn.M','',null,null,'','9043792705',29,null,null,null,null,null),					
(24,1024,'RAMKI','S',null,null,'','6383693933',23,null,null,null,null,null),					
(25,1025,'Sahith','Afridi','Sabibulla',null,'','9042314497',22,null,null,null,null,null),					
(26,1026,'sakthivel.','S',null,null,'','9514605031',20,null,null,null,null,null),					
(27,1027,'Sanjay','Balakrishnan',null,null,'','7708407173',22,null,null,null,null,null),					
(28,1028,'Santhosh','Kumar','S',null,'','9344560546',21,null,null,null,null,null),					
(29,1029,'Saran','S',null,null,'','6380026784',21,null,null,null,null,null),					
(30,1030,'Siranjeevi','S',null,null,'','6383685553',22,null,null,null,null,null);					
								
create TABLE musify_login (
  user_id int NOT NULL,
  user_name varchar(255) NOT NULL,
  Password varchar(255) NOT NULL,
  new_Password varchar(255) NOT NULL,
  PRIMARY KEY (user_name),
  foreign key(user_id) references musify_reg(User_ID)
);

CREATE TABLE musify_pro (
  usr_id int NOT NULL,
  usr_name varchar(255) DEFAULT NULL,
  category_name varchar(255) NOT NULL,
  actor_name varchar(255) NOT NULL,
  musicDirector_name varchar(255) NOT NULL,
  createdby varchar(255) DEFAULT NULL,
  createdon date DEFAULT NULL,
  modifyiedby varchar(255) DEFAULT NULL,
  modifiedon date DEFAULT NULL,
  PRIMARY KEY (category_name),
 foreign key(usr_id) references musify_reg(User_ID));
 CREATE TABLE musify_order (
  order_id int NOT NULL AUTO_INCREMENT,
  usr_id int NOT NULL,
  usr_name varchar(255) NOT NULL,
  order_name varchar(255) NOT NULL,
 category_name varchar(255) NOT NULL,
  price double NOT NULL,
  order_by varchar(255) NOT NULL,
  order_on date DEFAULT NULL,
  createdby varchar(255) DEFAULT NULL,
  createdon date DEFAULT NULL,
  modifyiedby varchar(255) DEFAULT NULL,
  modifiedon date DEFAULT NULL,
  PRIMARY KEY (order_id),
  foreign key(usr_id) references  musify_reg(User_ID)
);CREATE TABLE musify_usr (
  usr_id int NOT NULL,
  usr_name varchar(255) NOT NULL,
  category_name varchar(255) NOT NULL,
  price double NOT NULL,
  createdby varchar(255) DEFAULT NULL,
  createdon date DEFAULT NULL,
  modifyiedby varchar(255) DEFAULT NULL,
  modifiedon date DEFAULT NULL,
  PRIMARY KEY (category_name),
  foreign key(usr_id) references  musify_reg(User_ID) );
  show tables;
(1,1001,'Aarif S','Aarif','S',null,null,' male','9025171297',25,null,null,null,null,null),					
(2,1002,'Abdul rahman A','Abdul','rahman',A,null,'Male','9042116396',19,null,null,null,null,null),					
(3,1003,'Abinaya.J','Abinaya.J','',null,null,'Male','8124568273',19,null,null,null,null,null),					
(4,1004,'Ahamed J','Ahamed','J',null,null,'MALE','9659021407',21,null,null,null,null,null),					
(5,1005,'ALEXANDAR A ','ALEXANDAR','A',null,null,'MALE','9360415014',22,null,null,null,null,null),					
(6,1006,'Anand R','Anand','R',null,null,'MALE','8489903993',27,null,null,null,null,null),					
(7,1007,'Anjuka P','Anjuka','P',null,null,'Female ','6379944693',21,null,null,null,null,null),					
(8,1008,'Aravind.K','Aravind.K','',null,null,'Female ','8778624466',24,null,null,null,null,null),					
(9,1009,'Basheer Ahamed M','Basheer','Ahamed',M,null,'Female ','9514690405',21,null,null,null,null,null),					
(10,1010,'Chandran P','Chandran','P',null,null,'Female ','9361313775',22,null,null,null,null,null),					
(11,1011,'Danielraj A','Danielraj','A',null,null,'male','9092838116',24,null,null,null,null,null),					
(12,1012,'Dinesh T','Dinesh','T',null,null,'Female ','9629724889',24,null,null,null,null,null),					
(13,1013,'Domenig Vasanthan A','Domenig','Vasanthan',A,null,'Male','8220904749',25,null,null,null,null,null),					
(14,1014,'Gopal S','Gopal','S',null,null,'Male','9361448297',22,null,null,null,null,null),					
(15,1015,'HARSH A','HARSH','A',null,null,'Male','9025664587',20,null,null,null,null,null),					
(16,1016,'Jayapravin D','Jayapravin','D',null,null,'male','7094937902',22,null,null,null,null,null),					
(17,1017,'jemimah j','jemimah','j',null,null,'Male','9489189043',22,null,null,null,null,null),					
(18,1018,'Manimohana S','Manimohana','S',null,null,'male','9994987424',26,null,null,null,null,null),					
(19,1019,'Kiruthiga R','Kiruthiga','R',null,null,'Male','7339220870',26,null,null,null,null,null),					
(20,1020,'Nancy A','Nancy','A',null,null,'Male','8428267221',24,null,null,null,null,null),					
(21,1021,'Natrayan M','Natrayan','M',null,null,'','8825684098',26,null,null,null,null,null),					
(22,1022,'Pavithra K','Pavithra','K',null,null,'','9025862493',21,null,null,null,null,null),					
(23,1023,'prabhaharn.M','prabhaharn.M','',null,null,'','9043792705',29,null,null,null,null,null),					
(24,1024,'RAMKI S','RAMKI','S',null,null,'','6383693933',23,null,null,null,null,null),					
(25,1025,'Sahith Afridi Sabibulla','Sahith','Afridi',Sabibulla,null,'','9042314497',22,null,null,null,null,null),					
(26,1026,'sakthivel. S','sakthivel.','S',null,null,'','9514605031',20,null,null,null,null,null),					
(27,1027,'Sanjay Balakrishnan','Sanjay','Balakrishnan',null,null,'','7708407173',22,null,null,null,null,null),					
(28,1028,'Santhosh Kumar S','Santhosh','Kumar',S,null,'','9344560546',21,null,null,null,null,null),					
(29,1029,'Saran S','Saran','S',null,null,'','6380026784',21,null,null,null,null,null),					
(30,1030,'Siranjeevi S','Siranjeevi','S',null,null,'','6383685553',22,null,null,null,null,null),					

//delimiter
delimiter $$
drop procedure if exists insertvalue;$$
create procedure insertval(
in nameparam varchar(50),
in systemnoparam int,
in errorparam varchar(50),
in keyboardcondparam varchar(50) 
)
begin
insert into cad_sys_info_demo (name,system_no,error,keyboard_codition) values(nameparam,systemparam,errorparam,keyboardcondparam);
end $$
delimiter ;
select*from musify_reg;

 
 
 
 



