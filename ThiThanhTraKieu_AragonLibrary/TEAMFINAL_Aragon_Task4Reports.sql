/* Purpose: Task 4 Create Stored Procedures and Triggers (Usage Reports) for the Aragon database */

/* 
Script date: June 4, 2022
Developed by: 
Benoit Synnett: 261 063 077
Marc Pilotte: 261 063 030
Thi Thanh Tra Kieu: 261 066 512
Elizaveta Starostina: 261 067 603
Tim Lafontaine: 261 066 866
*/


use libraryfinal ;
/* 1. How many loans did the library do last year? */

SELECT COUNT(Checkout_date) as `Number of Loan 2022`
FROM Loan
WHERE Checkout_date <'2023-01-01'
;

/* 2. What percentage of the membership borrowed at least one book? */

SELECT count(distinct(L.member_no)) as `Loan_members`, count(distinct(M.member_no)) as `Total_members`,
        concat(round(( count(distinct(L.member_no))*100/count(distinct(M.member_no))),2),'%') AS `Percentage`
FROM Loan L, Members M;


/* 3 What was the greatest number of books borrowed by any one individual? */

SELECT L.member_no, count(LD.Copy_no) as `number of books`
From Loan L 
inner join Loan_detail LD
on L.loan_no = LD.loan_no
group by member_no
;

/* 3  version 2*/

SELECT L.member_no, count(LD.Copy_no) as `number of books`
From Loan L 
inner join Loan_detail LD
on L.loan_no = LD.loan_no
group by member_no
order by `number of books` desc limit 2
;

/* 4. What percentage of the books was loaned out at least once last year? */

SELECT count(distinct(LD.copy_no)) as `Loan_copies`, count(distinct(C.copy_no)) as `Total_copies`,
concat(round(( count(distinct(LD.copy_no))*100/count(distinct(C.copy_no))),2),'%') AS `Percentage`
FROM Loan_detail LD, Copy C;


/* 5. What percentage of all loans eventually becomes overdue?*/ 

SELECT COUNT(L.loan_no) AS `Total loan`, (SELECT count(L.loan_no) from Loan L where L.due_Date < L.return_date ) as `Overdue loan`,
	concat(round((select count(L.loan_no) from Loan L where L.due_Date < L.return_date )*100/COUNT(L.loan_no),2), '%') as `Overdue Percentage`
FROM Loan L;

/* 6 What is the average length of a loan?*/

SELECT avg((datediff(Return_Date, Checkout_Date))) as 'Average length of a loan (in days)'
From loan;

/* 7. What are the library's peak hours for loans? */
SELECT extract(hour FROM Checkout_date) as `Hour`,
count('Hour') as `Frequency`
FROM Loan
group by `Hour`
order by count(`Hour`)
DESC LIMIT 1
;
