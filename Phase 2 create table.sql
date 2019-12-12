create database project;
drop database project;

use project;
drop table customer;
create table customer(
	customerID int, 
    primary key (customerID),
    name varchar(120) not null
);

drop table article;
create table article(
	articleID int,
    primary key (articleID),
	customerID int,
    foreign key (customerID) references customer(customerID),
	title varchar(50), 
	author varchar(120),
    topic varchar(100),
	lastUpdated datetime, 
    publicationDate date
);

drop table billing;
create table billing(
	billingID int,
    primary key (billingID),
	customerID int,
    foreign key (customerID) references customer(customerID),
    articleID int,
    foreign key (articleID) references article(articleID),
	bill double, 
    numberOfComments int,
    dateOfBill date
);

use project;
drop table user;
create table user(
	userID int,
    primary key (userID),
	customerID int,
    foreign key (customerID) references customer(customerID),
    name varchar(120) not null, 
    email varchar(50), 
    country varchar(50),
	state varchar(50), 
    login boolean, 
    password varchar(50), 
    avatar varchar(360)
);

drop table seniorUser;
create table seniorUser(
	seniorUserID int,
    primary key (seniorUserID),
    customerID int,
    foreign key (customerID) references customer(customerID)
);

use project;
drop table comment;
create table comment(
	commentID int,
    primary key (commentID),
	userID int,
    foreign key (userID) references user(userID),
    articleID int,
    foreign key (articleID) references article(articleID),
    customerID int,
    foreign key (customerID) references customer(customerID),
	directComment varchar(250), 
    reply varchar(250), 
    likeDislike boolean,
	date date, 
    time time, 
    content varchar(500), 
    flag boolean,
    derogatory boolean
);

drop table dummyComments;
create table dummyComments(
	backID int not null auto_increment,
    primary key (backID),
    articleID int,
    foreign key (articleID) references article(articleID),
    directComment varchar(250),
    flag boolean
);

drop trigger wordCheck;
DELIMITER $$
CREATE TRIGGER wordCheck 
	BEFORE INSERT ON dummyComments 
    FOR EACH ROW 
    begin
		IF (NEW.directComment like '%Bloody Hell%' || NEW.directComment like '%Damn%' || NEW.directComment like '%Piss off%' ||
        NEW.directComment like '%Bastard%' || NEW.directComment like '%Bollocks%' || NEW.directComment like '%Bugger%' || 
        NEW.directComment like '%Crikey%' || NEW.directComment like '%Rubbish%' || NEW.directComment like '%Bloody Oath%' ||
        NEW.directComment like '%Root%' || NEW.directComment like '%Get Stuffed%' || NEW.directComment like '%Bugger me%' ||
        NEW.directComment like '%frigger%' || NEW.directComment like '%goddamn%' || NEW.directComment like '%nigga%' ||
        NEW.directComment like '%nigger%' || NEW.directComment like '%twat%') THEN 
        SET NEW.flag = true;
        END IF;
END$$
DELIMITER ;



