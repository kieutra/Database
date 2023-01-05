/* Purpose: Task 3 Creating Views for the Aragon database */

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




/* 2.Write and execute a query on the title, item, and copy tables that returns 
the isbn, copy_no, on_loan, title, translation, and cover, and values 
for rows in the copy table with an ISBN of 1 (one), 500 (five hundred), or 1000 (thousand).
Order the result by ISBN column. */
CREATE VIEW CopyOnLoan
AS
(
SELECT I.ISBN, T.Title_name, I.Translation, I.Cover, C.Copy_no, C.On_loan
FROM Title T
INNER JOIN Item I 
ON T.Title_no = I.Title_no
INNER jOIN Copy C
ON I.ISBN = C.ISBN 
WHERE I.ISBN in ('9780375869945', '9780814433812', '9781250061096')
ORDER BY I.ISBN

)
;
Select * from CopyOnLoan;

/* QUERY for COPIES on Loan */
SELECT I.ISBN, T.Title_name, I.Translation, I.Cover, C.Copy_no, C.On_loan
FROM Title T
INNER JOIN Item I 
ON T.Title_no = I.Title_no
INNER jOIN Copy C
ON I.ISBN = C.ISBN 
WHERE I.ISBN in ('9780375869945', '9780814433812', '9781250061096')
ORDER BY I.ISBN
;


/* 3. Write and execute a query to retrieve the member’s full name and member_no from the member table
and the isbn and log_date values from the reservation table for members 250, 341, 1675. Order the results
by member_no. You should show information for these members, even if they have no books or reserve */

SELECT M.Member_no, concat_ws(' ', M.FirstName, coalesce(M.MiddleInitial, ''), M.LastName) as `Full Name`,  R.Log_date, R.Reservation_no, RD.ISBN
FROM Reservation R INNER JOIN Reservation_Detail RD
ON R.Reservation_no = RD.Reservation_no
RIGHT JOIN Members M
ON M.Member_no = R.Member_no
WHERE M.Member_no in ( '6', '11', '20')

ORDER BY M.Member_no
;

/* 4. Create a view and save it as adultwideView that queries the member and adult tables. Lists the name &
address for all adults. */
CREATE VIEW AdultWideView
AS 
SELECT concat_ws(' ', M.FirstName, coalesce(M.MiddleInitial, ''), M.LastName) as `Full Name`, 
 concat_ws(', ', A.Address,A.City, concat_ws(' ',A.Province, A.PostalCode)) as `Complete Address`
 FROM Members M, Adult A
 WHERE M.Member_no = A.Member_no
 ;
 Select * from AdultWideView;
 
 /* 5. Create View ChildWideView: full name and complete address */
 
 CREATE VIEW ChildWideView
AS
(
 SELECT concat_ws(' ', M.FirstName, coalesce(M.MiddleInitial, ''), M.LastName) as `Full Name`, 
 concat_ws(', ', A.Address,A.City, concat_ws(' ',A.Province, A.PostalCode)) as `Complete Address`
 FROM Members M 
 INNER JOIN Juvenile J 
 ON J.member_no = M.member_no
 LEFT JOIN Adult A 
 ON J.adult_no = A.adult_no
 )
 ;
 Select * from ChildWideView;
 
 /* 6. Create a view and save it as and CopywideView that queries the copy, title and item tables. Lists
complete information about each copy. */

CREATE VIEW CopyWideView
AS
(
	SELECT C.Copy_no, I.ISBN, I.Translation, I.Cover, I.Publication_year, T.Title_name, T.Category_no, T.Title_synopsis, C.Loanable, C.On_loan
    FROM Copy C 
    LEFT JOIN Item I 
    ON C.ISBN = I.ISBN
    LEFT JOIN Title T
    ON T.Title_no = I.Title_no
    Order by C.Copy_no
)
;
Select * from CopyWideView;

/* 7 Create a view and save it as LoanableView that queries CopywideView (3-table join). Lists complete
information about each copy marked as loanable (loanable = 'Y'). */
CREATE VIEW LoanbleView
AS
(
	SELECT C.Copy_no, C.ISBN, C.Translation, C.Cover, C.Publication_year, C.Title_name, C.Category_no, C.Title_synopsis, C.On_loan
    FROM CopyWideView C 
	WHERE C.Loanable = 'Y'
    Order by C.Copy_no
)
;
Select * from LoanbleView;


/* 8. Create a view and save it as OnshelfView that queries CopywideView (3-table join). Lists complete
information about each copy that is not currently on loan (on_loan ='N') */
CREATE VIEW OnshelfView
AS
(
	SELECT C.Copy_no, C.ISBN, C.Translation, C.Cover, C.Publication_year, C.Title_name, C.Category_no, C.Title_synopsis
    FROM CopyWideView C 
	WHERE C.On_loan = 'N'
    Order by C.Copy_no
)
;
Select * from OnshelfView;

/*9  Create a view and save it as OnloanView that queries the loan, loan_detail, item, title, and member tables. Lists the
member, title, and loan information of a copy that is currently on loan. */

CREATE VIEW OnLoanView
AS
( 
	SELECT LD.Copy_no, T.Title_name, L.Member_no, L.Checkout_date, L.Due_date
	FROM Loan L 
    INNER JOIN Loan_Detail LD
    ON LD.Loan_no = L.Loan_no
    AND L.Loan_status = 'active'
    LEFT JOIN Copy C 
    ON C.Copy_no = LD.Copy_no
    LEFT JOIN ITEM I 
    ON I.ISBN = C.ISBN
    LEFT JOIN Title T 
    ON I.Title_no = T.Title_no
    ORDER BY LD.Copy_no
)
;
Select * from OnLoanView;


/* 10 Create a view and save it as OverdueView that queries OnloanView (3-table join.) Lists the member,
title, and loan information of a copy on loan that is overdue (due_date < current date). */

CREATE VIEW OverDueView
AS
(
	SELECT L.Copy_no as `Copy`, L.Title_name as `Title`, L.Member_no as `Members`
    FROM OnLoanView L
    WHERE L.Due_date < current_date()
)
;
Select * from OverDueView;


/* 1.Create a mailing list : members' full names and complete address information */

CREATE VIEW MailingList
AS
(
	SELECT * from AdultWideView  union Select * from  ChildWideView
)
;
Select * from MailingList;

