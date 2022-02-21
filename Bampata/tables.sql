create table users
(  lname  varchar(10) primary key,
   pwd    varchar(10),
   fullname varchar(30)
);

create table books
( bid   number(5)  primary key,
  name  varchar(30),
  authors varchar(50),
  publisher varchar(10),
  subject   varchar(10),
  price   number(4),
  dp      date,
  status  char(1)
);

create table members
( mid    number(5)  primary key,
  name   varchar(30),
  email  varchar(50),
  djoin  date,
  depamt number(4)
);

create table issues
( bid    number(5)  primary key
         references books(bid),
  mid    number(5)
         references members (mid),
  di  date,
  issuedby varchar(10)
        references users (lname)
);

create table returns
( bid    number(5) references books(bid),
  mid    number(5) references members (mid),
  di  date,
  issuedby varchar(10)
         references users(lname),
  dr  date,
  returnedto varchar(10)
        references users (lname),
  primary key(bid,di)
);  


insert into users values('a','a','Anders');
insert into users values('b','b','Benson');

insert into members values(1,'Steve Walther','steve@yahoo.com','1-jan-06',1000);
insert into members values(2,'Jason Hunter','hunter@yahoo.com','1-jan-06',1000);


