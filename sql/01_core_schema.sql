create table object_type
(
    id INT PRIMARY KEY,
    name VARCHAR2(50) NOT NULL UNIQUE 
);
 
create table attribute
(
    id INT PRIMARY KEY,
    type_id INT NOT NULL,
    name VARCHAR2(50) NOT NULL,
    data_type VARCHAR2(50) NOT NULL,
    FOREIGN KEY (type_id) REFERENCES object_type(id),
    UNIQUE(type_id, name)
);

create table object 
(
id int Primary key, 
type_id int not null,
name varchar2(50) not null,
foreign key(type_id) references object_type(id) 
);

create table allowed_value
(
attribute_id int not null, 
allowed_value varchar2(50) not null, 
foreign key (attribute_id) references attribute(id), 
primary key (attribute_id, allowed_value) 
);

create table object_value
(
object_id int not null,
attribute_id int not null, 
text_value varchar2(50),
number_value number,
date_value date,
Foreign key (object_id) references OBJECT(id) ,
Foreign key (attribute_id) references ATTRIBUTE(id),
Primary key (object_id,attribute_id )
);
