drop database if exists sedb; -- if not need, delete it
create database sedb;

use sedb;

create table users(
                      user_id INT NOT NULL AUTO_INCREMENT,
                      user_name VARCHAR(100) NOT NULL,
                      id VARCHAR(50) NOT NULL UNIQUE,
					  pw VARCHAR(64) NOT NULL, -- sha256
                      PRIMARY KEY (user_id)
)ENGINE = InnoDB AUTO_INCREMENT = 1 ROW_FORMAT = DEFAULT CHARACTER SET utf8;

create table managers(
                         manager_id INT NOT NULL AUTO_INCREMENT,
                         manager_name VARCHAR(100) NOT NULL,
                         id VARCHAR(50) NOT NULL UNIQUE,
                         pw VARCHAR(64) NOT NULL, -- sha256
                         PRIMARY KEY (manager_id)
)ENGINE = InnoDB AUTO_INCREMENT = 1 ROW_FORMAT = DEFAULT CHARACTER SET utf8;

create table restaurant_table(
                                 table_id INT NOT NULL,
                                 PRIMARY KEY(table_id)
)ENGINE = InnoDB;

create table reservations(
                             reserv_id INT NOT NULL AUTO_INCREMENT,
							 reserv_user varchar(50) NOT NULL,
							 reserv_userId INT NOT NULL,
                             reserv_date varchar(50) NOT NULL,
                             reserv_time INT NOT NULL,
                             reserv_NOP INT NOT NULL,
                             reserv_table_num INT NOT NULL,
                             r_code INT NOT NULL,
                             -- arriusersved_at TIMESTAMP DEFAULT '0000-00-00 00:00:00',
                             
                             PRIMARY KEY (reserv_id)
)ENGINE = InnoDB AUTO_INCREMENT = 1 ROW_FORMAT = DEFAULT CHARACTER SET utf8;

create table file_management(
                            id int(10) NOT NULL AUTO_INCREMENT,
							user_id varchar(100) NOT NULL,
							uploadFile varchar(100) NOT NULL,
							newFileName varchar(100) NOT NULL,
							upload_time date NOT NULL,
							savePath varchar(100) NOT NULL,
							folder varchar(100) NOT NULL,
							uploaded varchar(10) NOT NULL DEFAULT 'false',
							PRIMARY KEY (id)
)ENGINE = InnoDB AUTO_INCREMENT = 1 ROW_FORMAT = DEFAULT CHARACTER SET utf8;

create table products(
                             product_id INT NOT NULL AUTO_INCREMENT,
							 product_page varchar(50) NOT NULL,
							 product_pic varchar(50) NOT NULL,
                             product_name varchar(50) NOT NULL,
                             uploaded_time INT NOT NULL,
                             -- arriusersved_at TIMESTAMP DEFAULT '0000-00-00 00:00:00',
                             product_text varchar(256),
                             PRIMARY KEY (product_id)
)ENGINE = InnoDB AUTO_INCREMENT = 1 ROW_FORMAT = DEFAULT CHARACTER SET utf8;




#users
insert into users value(0, 'ham', '0000',
                        '1111'); -- name : user1, id : 1234, pw : qwer
insert into users value(0, 'ureservationsser2', '5678',
                        'qwer2'); -- name : user2, id : 5678, pw : asdf

insert into products value(1, 'detail.jpt', 'assets/images/demo/op-1.jpg', 'one products', '11', 'dummy texts1');
-- id, page, picture, name, time
insert into products value(2, 'detail.jpt', 'assets/images/demo/op-2.jpg', 'two products', '12', 'dummy texts2');
insert into products value(3, 'detail.jpt', 'assets/images/demo/op-3.jpg', 'three products', '13', 'dummy texts3');
insert into products value(4, 'detail.jpt', 'assets/images/demo/op-4.jpg', 'four roducts', '13', 'dummy texts4');
insert into products value(5, 'detail.jpt', 'assets/images/demo/op-5.jpg', 'five products', '13', 'dummy texts5');
insert into products value(6, 'detail.jpt', 'assets/images/demo/op-6.jpg', 'six products', '13', 'dummy texts6');
insert into products value(7, 'detail.jpt', 'assets/images/demo/op-7.jpg', 'seven products', '13', 'dummy texts7');
insert into products value(8, 'detail.jpt', 'assets/images/demo/op-8.jpg', 'eight products', '13', 'dummy texts8');
insert into products value(9, 'detail.jpt', 'assets/images/demo/op-1.jpg', 'nine products', '13', 'dummy texts9');
insert into products value(11, 'detail.jpt', 'assets/images/demo/op-1.jpg', 'eleven products', '13', 'dummy texts11');



