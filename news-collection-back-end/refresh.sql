drop database if exists `zjuNews`;
create database zjuNews;
use zjuNews;
create table userinfo(
	id int not null auto_increment primary key,
    username varchar(20),
    password char(20)
);
insert into userinfo (username, password) values ("zju123", "zju123");
create table ch(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table sis(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table cmic(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table soaa(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table cec(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table ghls(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table ced(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table som(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table spa(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table marx(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table math(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table physics(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table chem(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table gs(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table psych(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table me(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table mse(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table doe(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table ee(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table ccea(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table che(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table oc(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table saa(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table polymer(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table opt(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table isee(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table cse(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table cs(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table cst(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table cbeis(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table cls(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table caefs(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table cers(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table cab(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table cas(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table cmm(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table cps(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table zy91(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table z2hospital(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table srrsh(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table womanhospital(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table zjuch(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table zjuss(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table zju4h(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table intl(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table zje(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table zjui(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);
create table zibs(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
    title varchar(1000),
    subtitle varchar(100),
    url varchar(1000)
);