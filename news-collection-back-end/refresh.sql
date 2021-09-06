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
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table sis(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table cmic(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table soaa(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table cec(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table ghls(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table ced(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table som(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table spa(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table marx(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table math(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table physics(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table chem(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table gs(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table psych(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table me(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table mse(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table doe(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table ee(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table ccea(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table che(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table oc(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table saa(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table polymer(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table opt(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table isee(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table cse(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table cs(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table cst(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table cbeis(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table cls(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table caefs(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table cers(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table cab(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table cas(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table cmm(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table cps(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table zy91(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table z2hospital(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table srrsh(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table womanhospital(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table zjuch(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table zjuss(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table zju4h(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table intl(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table zje(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table zjui(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);
create table zibs(
	id int not null auto_increment primary key,
    articleType varchar(20) not null,
   title varchar(1000) character set UTF8MB4 ,
   subtitle varchar(100) character set UTF8MB4,
    url varchar(1000), unique key `id` (`id`), key `articleType` (`articleType`)
);