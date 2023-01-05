/* Purpose: To create the Aragon database, its tables and columns */

/* 
Script date: June 4, 2022
Developed by: 
Benoit Synnett: 261 063 077
Marc Pilotte: 261 063 030
Thi Thanh Tra Kieu: 261 066 512
Elizaveta Starostina: 261 067 603
Tim Lafontaine: 261 066 866
*/
create database IF NOT EXISTS libraryfinal;


use libraryfinal ;


/* Table No. 1 */

create table MEMBERS
(
    Member_no mediumint not null,
    FirstName varchar(20) not null,
    LastName varchar(20) not null,
    MiddleInitial varchar(2) null,
    Card_number varchar(14) not null, 
    Member_status varchar(10) not null, 
    constraint pk_MEMBERS primary key (Member_no asc)
)
;

/* Table No. 2  */

create table PHOTO 
(
Photo_no varchar(10) not null, 
Photo_name varchar(100) not null, 
Photo_data mediumblob not null,
constraint pk_PHOTO primary key (Photo_no asc)
)
;


/* Table No. 3  */

create table ADULT
(
Adult_no varchar (10) not null, 
Member_no mediumint not null,
Birth_date date not null,
Address varchar(50) not null,
City varchar(20) not null,
Province varchar(20) not null,
PostalCode char(7) not null,
Phone char(13) null,
Email varchar(30) null,
Expr_date date not null,
Photo_no varchar(10) not null,
constraint pk_ADULT primary key (Adult_no asc) 
)
;

/* Table No. 4 */

create table JUVENILE 
(
Juv_no varchar(10) not null,
Member_no mediumint not null, 
birth_date date not null,
Adult_no varchar (10) not null,
constraint pk_JUVENILE primary key (Juv_no asc)
)
;


/* Table No. 5 */

create table CATEGORY
(
Category_no varchar(4) not null,
Category_name varchar(50) not null,
constraint pk_CATEGORY primary key (Category_no asc)
)
;


/* Table No. 6 */

create table TITLE
(
Title_no varchar (10) not null,
Title_name varchar(100) null,
Category_no varchar(4) not null,
Title_synopsis varchar(500) null,
constraint pk_TITLE primary key (Title_no asc)
)
;

/* Table No. 7 */

create table AUTHOR
(
Author_no varchar(10) not null,
Author_FN varchar(20) not null,
Author_MN varchar(20) null,
Author_LN varchar(20) not null,
constraint pk_AUTHOR primary key (Author_no asc) 
)
;


/* Table No. 8 */

create table TITLE_DETAIL
(
Title_detail_no varchar(10) not null,
Title_no varchar(10) not null,
Author_no varchar(10) not null,
constraint pk_TITLE_DETAIL primary key (Title_detail_no asc)
)
;


/* Table No. 9 */

create table ITEM
(
ISBN char (17) not null,
Title_no varchar (10) not null, 
Translation varchar(20) not null,
Cover char(9) not null,
Publication_year year not null,
constraint pk_ITEM primary key (ISBN asc)
)
;




/* Table No. 10 */

create table COPY
(
Copy_no varchar(15) not null,
ISBN char(17) not null,
Loanable char(1) not null,
On_loan char(1) not null,
Notes varchar(500) null,
constraint pk_COPY primary key (Copy_no asc)
)
;


/* Table No. 11 */

create table RESERVATION 
(
Reservation_no varchar (10) not null,
Member_no mediumint not null,
Log_date date not null,
Reservation_status varchar(9) not null,
constraint pk_RESERVATION primary key (Reservation_no asc)
)
; 


/* Table No. 12 */

create table RESERVATION_DETAIL
(
Reservation_detail_no varchar(10) not null, 
Reservation_no varchar(10) not null,
ISBN char(17) not null,
Quantity tinyint not null,
constraint pk_RESERVATION_DETAIL primary key (Reservation_detail_no asc)
)
;


/* Table No. 13 */

create table LOAN
(
Loan_no varchar (10) not null,
Member_no mediumint not null,
Checkout_date datetime not null,
Due_date datetime not null,
Return_date varchar (20) not null,
Loan_status varchar (8) not null,
constraint pk_LOAN primary key (Loan_no asc) 
)
;


/* Table No. 14 */ 
 
create table LOAN_DETAIL
(
Loan_detail_no varchar (15) not null,
Loan_no varchar(10) not null,
Copy_no varchar(15) not null,
constraint pk_LOAN_DETAIL primary key (Loan_detail_no asc)
)
; 




/* add FK constraints */ 

alter table ADULT
	add constraint fk_ADULT_PHOTO foreign key (Photo_no)
		references PHOTO (Photo_no)
;


alter table ADULT
	add constraint fk_ADULT_MEMBERS foreign key (Member_no)
		references MEMBERS (Member_no)
;

alter table JUVENILE
	add constraint fk_JUVENILE_MEMBERS foreign key (Member_no)
		references MEMBERS (Member_no)
;

alter table JUVENILE
	add constraint fk_JUVENILE_ADULT foreign key (Adult_no)
		references ADULT (Adult_no)
;

alter table TITLE
	add constraint fk_TITLE_CATEGORY foreign key (Category_no)
		references CATEGORY (Category_no)
;


alter table TITLE_DETAIL
	add constraint fk_TITLE_DETAIL_TITLE foreign key (Title_no)
		references TITLE (Title_no)
;

alter table TITLE_DETAIL
	add constraint fk_TITLE_DETAIL_AUTHOR foreign key (Author_no)
		references AUTHOR (Author_no)
;

alter table ITEM
	add constraint fk_ITEM_TITLE foreign key (Title_no)
		references TITLE (Title_no)
;

alter table COPY
	add constraint fk_COPY_ITEM foreign key (ISBN)
		references ITEM (ISBN)
;

alter table RESERVATION
	add constraint fk_RESERVATION_MEMBERS foreign key (Member_no)
		references MEMBERS (Member_no)
;

alter table RESERVATION_DETAIL
	add constraint fk_RESERVATION_DETAIL_RESERVATION foreign key (Reservation_no)
		references RESERVATION (Reservation_no)
;

alter table RESERVATION_DETAIL
	add constraint fk_RESERVATION_DETAIL_ITEM foreign key (ISBN)
		references ITEM (ISBN)
;

alter table LOAN
	add constraint fk_LOAN_MEMBERS foreign key(Member_no)
		references MEMBERS (Member_no)
;

alter table LOAN_DETAIL
	add constraint fk_LOAN_DETAIL_LOAN foreign key (Loan_no)
		references LOAN (Loan_no)
;

alter table LOAN_DETAIL
	add constraint fk_LOAN_DETAIL_COPY foreign key (Copy_no)
		references COPY (Copy_no)
;

/* add unique constraints */ 


alter table ADULT
	add constraint uq_Photo_no_ADULT unique (Photo_no)
; 
alter table ADULT
	add constraint uq_Member_no_ADULT unique (Member_no)
; 

alter table MEMBERS
	add constraint uq_Card_number_MEMBERS unique (Card_number)
;   

alter table PHOTO
	add constraint uq_Photo_name_PHOTO unique (Photo_name)
; 

alter table JUVENILE
	add constraint uq_Member_no_JUVENILE unique (Member_no)
;

alter table CATEGORY
	add constraint uq_Category_name_CATEGORY unique (Category_name)
;  

alter table TITLE
	add constraint uq_Title_synopsis_TITLE unique (Title_synopsis)
; 


/* add check constraints */ 
    
alter table ADULT
	add constraint ck_Phone_ADULT
		check (phone REGEXP '\\([0-9]{3}\\)[0-9]{3}-[0-9]{4}')
;


alter table LOAN
	add constraint ck_Due_date_Checkout_date_LOAN 
		check (Due_date >= Checkout_date)
;


/* add default constraints */ 

alter table ADULT
	alter column Province
		set default 'QC (Quebec)'
;


