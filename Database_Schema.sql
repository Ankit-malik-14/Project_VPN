create database VPNProfiles;

use VPNProfiles;

create table users(
id integer auto_increment primary key,
uname varchar(50) not null,
email varchar(200) not null unique,
location varchar(50) not null,
passwd varchar(20) not null
);
 