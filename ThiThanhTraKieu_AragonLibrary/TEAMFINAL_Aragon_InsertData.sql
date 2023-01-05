/* Purpose: To insert data into the Aragon database*/

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

/* PHOTO */
insert into PHOTO(photo_no, photo_name, photo_data)
values
('p1', 'photo1.png', '300kb'),
('p2', 'photo2.png', '300kb'),
('p3', 'photo3.png', '300kb'),
('p4', 'photo4.png', '300kb'),
('p5', 'photo5.png', '300kb'),
('p6', 'photo6.png', '300kb'),
('p7', 'photo7.png', '300kb'),
('p8', 'photo8.png', '300kb'),
('p9', 'photo9.png', '300kb'),
('p10', 'photo10.png', '300kb'),
('p11', 'photo11.png', '300kb'),
('p12', 'photo12.png', '300kb'),
('p13', 'photo13.png', '300kb'),
('p14', 'photo14.png', '300kb'),
('p15', 'photo15.png', '300kb'),
('p16', 'photo16.png', '300kb'),
('p17', 'photo17.png', '300kb'),
('p18', 'photo18.png', '300kb'),
('p19', 'photo19.png', '300kb'),
('p20', 'photo20.png', '300kb'),
('p21', 'photo21.png', '300kb'),
('p22', 'photo22.png', '300kb'),
('p23', 'photo23.png', '300kb'),
('p24', 'photo24.png', '300kb'),
('p25', 'photo25.png', '300kb')
;
select* from photo;

/* MEMBER */
insert into MEMBERS (Member_no, FirstName, LastName, Middleinitial, Card_number, Member_status) 
values
('01', 'William', 'Smith', '', '12777001234567', 'Active'),
('02', 'Rezza', 'Freed', 'F', '12777001234568', 'Active'),
('03', 'Mohan', 'Kumar', '', '12777001234569', 'Active'),
('04', 'Cindy', 'Marc', '', '12777001234570', 'Active'),
('05', 'Maeva', 'Marc', '', '12777001234571', 'Active'),
('06', 'Vince', 'Jose', '', '12777001234572', 'Active'),
('07', 'Rajv', 'Klan', '', '12777001234573', 'Active'),
('08', 'Sara', 'Tawil', '', '12777001234574', 'Active'),
('09', 'Timothy', 'Tawil', '', '12777001234575', 'Active'),
('10', 'Oshane', 'Mathew', '', '12777001234576', 'Active'),
('11', 'Chin', 'Yeu', '', '12777001234577', 'Active'),
('12', 'Linda', 'Greedyman', '', '12777001234578', 'Active'),
('13', 'Truc', 'Bui', 'T', '12777001234579', 'Active'),
('14', 'Wuan', 'Liu', 'X', '12777001234580', 'Active'),
('15', 'Kyan', 'Lang', '', '12777001234581', 'Active'),
('16', 'Alan', 'Lang', '', '12777001234582', 'Active'),
('17', 'Nick', 'Simmons', '', '12777001234583', 'Active'),
('18', 'Robby', 'Dean', '', '12777001234584', 'Active'),
('19', 'Duan', 'Nguyen', 'V', '12777001234585', 'Active'),
('20', 'Sha', 'Liu', '', '12777001234586', 'Active'),
('21', 'Amy', 'Liu', '', '12777001234587', 'Active'),
('22', 'Alex', 'Haddou', '', '12777001234588', 'Active'),
('23', 'Meaghan', 'Walsh', '', '12777001234589', 'Active'),
('24', 'Gregory', 'Cauley', '', '12777001234590', 'Active'),
('25', 'Wayne', 'Bews', '', '12777001234591', 'Active'),
('26', 'Paul', 'Desjardins', 'D', '12777001234592', 'Active'),
('27', 'Michel', 'Moyson', '', '12777001234593', 'Active'),
('28', 'Isis', 'Moyson', '', '12777001234594', 'Active'),
('29', 'Mohan', 'Moyson', '', '12777001234595', 'Active'),
('30', 'Viet', 'Nguyen', 'V', '12777001234596', 'Active'),
('31', 'Nam', 'Nguyen', 'V', '12777001234597', 'Active'),
('32', 'Andy', 'Tello', '', '12777001234598', 'Active'),
('33', 'Annie', 'Lamontagne', '', '12777001234599', 'Active')
;
select* from members;


/* ADULT */

insert into ADULT(Adult_no, Member_no, Birth_date, Address, City, Province, PostalCode, Phone, Email, Expr_date, Photo_no)
values
('A01', '01', '1975-02-03', '1958 boul langelier', 'Montréal', 'QC', 'H1N 3A8', '(514)123-4561', 'willsmith@gmail.com', '2022-08-02', 'P1'),
('A02', '02', '1980-01-12', '12 rue parkview', 'Montréal', 'QC', 'H1M 2K4', '(514)255-6777', 'rezfreed@gmail.com', '2022-08-03', 'P2'),
('A03', '03', '1988-08-26', '4846 avenue Havard', 'Montréal', 'QC', 'H3X 3N9', '(438)348-0222', 'mohankumar@gmail.com', '2022-08-04', 'P3'),
('A04', '04', '1987-05-25', '69 avenue McNider', 'Montréal', 'QC', 'H2V 3X5', '(438)370-1234', 'cindymarc@yahoo.com', '2022-08-05', 'P4'),
('A05', '06', '1985-12-12', '2380 rue Frenette', 'Montréal', 'QC', 'H4R 1M4', '(514)987-6544', 'vincejose@gmail.com', '2022-08-06', 'P5'),
('A06', '07', '1992-08-15', '6863 rue Notre-Dame est', 'Montréal', 'QC', 'H1N 2E4', '(514)856-2354', 'rajvklan@gmail.com', '2022-08-07', 'P6'),
('A07', '08', '1990-01-05', '9356 rue de Lille', 'Montréal', 'QC', 'H1Z 2P5', '(514)745-5555', 'tawill123@yahoo.com', '2022-08-08', 'P7'),
('A08', '10', '2002-04-02', '54-1re Avenue', 'Montréal', 'QC', 'H4G 2V3', '(514)256-3212', 'oshane23@gmail.com', '2022-08-09', 'P8'),
('A09', '11', '1989-09-10', '7445 rue Chouinard', 'Montréal', 'QC', 'H8N 2L6	', '(514)256-4568', 'chinyeu@gmail.com', '2022-08-10', 'P9'),
('A10', '12', '1993-05-05', '5415 avenue de Monkland', 'Montréal', 'QC', 'H4A 1C5', '(438)356-2313', 'trucbuilala@yahoo.com', '2022-08-11', 'P10'),
('A11', '13', '1970-11-10', '550-15e Avenue', 'Montréal', 'QC', 'H1B 3P6', '(438)235-1256', 'wuanliu@gmail.com', '2022-08-12', 'P11'),
('A12', '14', '1985-10-09', '4684 avenue Mariette', 'Montréal', 'QC', 'H4B 2G2', '(514)265-8945', 'kyanlang@yahoo.com', '2022-08-13', 'P12'),
('A13', '15', '1988-02-08', '7586 rue Dufresne', 'Montréal', 'QC', 'H2K 3J3', '(514)785-5462', 'nickcool@gmail.com', '2022-08-14', 'P13'),
('A14', '17', '1986-10-10', '3523 rue Cuvillier	Montréal', 'Montréal', 'QC', 'H1W 3B3', '(438)569-8564', 'robbycute@yahoo.com', '2022-08-15', 'P14'),
('A15', '18', '1983-09-09', '2544 rue Monsabré', 'Montréal', 'QC', 'H1N 2K6', '(438)540-2365', 'robbydean@gmail.com', '2022-08-16', 'P15'),
('A16', '19', '1984-12-24', '2755 avenue Bilaudeau', 'Montréal', 'QC', 'H1L 4B2', '(438)123-8956', 'duannguyen@gmail.com', '2022-08-17', 'P16'),
('A17', '22', '1995-03-19', '2575 rue Davidson', 'Montréal', 'QC', 'H1W 2Z3', '(514)452-1568', 'alexhaddou@yahoo.com', '2022-08-18', 'P17'),
('A18', '23', '1996-02-22', '3739 rue Fleury', 'Montréal', 'QC', 'H1H 2S8', '(514)894-5601', 'meaghan123@yahoo.com', '2022-08-19', 'P18'),
('A19', '24', '1985-04-21', '1400 Rue Gohier', 'Montréal', 'QC', 'H4L 3K3', '(514)023-2301', 'gregory87@gmail.coom', '2022-08-20', 'P19'),
('A20', '25', '1996-02-11', '10440 rue de Lille', 'Montréal', 'QC', 'H2B 2R2', '(514)058-0056', 'waynebews@gmail.com', '2022-08-21', 'P20'),
('A21', '26', '1979-05-23', '4980 avenue Montclair', 'Montréal', 'QC', 'H4V 2K6', '(514)840-0145', 'paul1224@yahoo.com', '2022-08-22', 'P21'),
('A22', '27', '1989-07-24', '5611 avenue Clanranald', 'Montréal', 'QC', 'H3X 2S9', '(514)522-2333', 'michel999@yahoo.com', '2022-08-23', 'P22'),
('A23', '29', '1981-02-25', '4518 avenue de Melrose', 'Montréal', 'QC', 'H4A 2S9', '(514)989-5665', 'isismoyson@gmail.com', '2022-08-24', 'P23'),
('A24', '32', '2003-09-26', '2238 rue Jacques-Hertel', 'Montréal', 'QC', 'H4E 1R3', '(438)355-3666', 'andytello@gmail.com', '2022-08-25', 'P24'),
('A25', '33', '1995-10-27', '2353 avenue de Lorimier', 'Montréal', 'QC', 'H2K 3X4', '(438)555-6789', 'annie222@yahoo.com', '2022-08-26', 'P25')
;

select* from adult;

/* JUVENILE */
insert into JUVENILE(Juv_no, Member_no, Birth_date, Adult_no)
values
	('JA1', '05', '2010-02-02', 'A04'),
    ('JA2', '09', '2011-12-15', 'A07'),
    ('JA3', '16', '2012-07-19', 'A13'),
    ('JA4', '20', '2012-08-26', 'A12'),
    ('JA5', '21', '2016-04-23', 'A12'),
    ('JA6', '28', '2015-05-05', 'A22'),
    ('JA7', '30', '2013-10-10', 'A16'),
    ('JA8', '31', '2015-11-11', 'A16')
;

select*from juvenile;

/* Insert into the CATEGORY table */

INSERT INTO CATEGORY (Category_no, Category_name)
VALUES
('Ca01',    'JUVENILE'),
('Ca02',    'RELIGION'),
('Ca03',    'DESIGN'),
('Ca04',    'MEDICAL'),
('Ca05', 'BUSINESS'),
('Ca06',    'ART'),
('Ca07',    'BODY'),
('Ca08',    'BIOGRAPHY'),
('Ca09',    'FOREIGN'),
('Ca10', 'COMPUTERS'),
('Ca11', 'FICTION'),
('Ca12', 'TRAVEL'),
('Ca13', 'ARCHITECTURE')
;

/* Insert into the TITLE table */

INSERT INTO TITLE (Title_no, Title_name, Category_no, Title_synopsis)
VALUES 
('T01', 'The Wizard of Oz Stepping Stone Book Reprint Baum, L. Frank/ Alberto, Denslow, W. W. (Illustrator)','Ca01','An early reader adaptation of Baums beloved classic, published to coincide with the CGI-animated film starring Robert Downey, Jr., includes art from the original illustrated volume and renders the story accessible to younger fans. Simultaneous. Movie tie'),
('T02','The old fashioned way: Reclaiming the lost art of romance','Ca02', 'Presents forty days of inspirational readings discussing a Christian approach to dating which stresses the importance of respect and thoughtfulness in building a romantic relationship.'),
('T03','Costume and Fashion World of Art 5 Laver, / Tucker, Andrew (Contributor)','Ca03','Uses drawings, paintings, and photographs to help illustrate the history of fashion, from ancient times to the present day.'),
('T04','Systematic Reviews to Answer Health Care Questions 1 PAP/PSC Nelson, Heidi D., M.D.','Ca04','"Systematic Evidence Reviews to Answer Health Care Questions provides accessible, concise information about the state-of-the-art methods of systematic review, from key question formulation and selecting evidence to assessing the quality of included studie'),
('T05','Shadowhunters and Downworlders Clare, Cassandra (Editor)','Ca01','Presents essays addressing prevalent themes in Cassandra Clares "Mortal Instruments" series, covering such topics as friendship, the art of war, the importance of art and humor, and the benefits of incest in literature.'),
('T06','Are You There God? Its Me, Margaret Richard Jackson Book Reissue Blume, Judy','Ca02','Faced with the difficulties of growing up and choosing a religion, a 12-year-old girl talks over her problems with her own private God. Reissued with a fresh new look and cover art. Simultaneous.'),
('T07','Fancy Nancy at the Museum I Can Read. Robin (Illustrator)/ Enik, Ted (Illustrator)','Ca01','Although excited at the prospect of a fancy class trip to the art museum, the bumpy bus ride to get there leaves Nancy feeling anything but fancy.'),
('T08','The Art of War for Small Business Sheetz-runkle, Becky','Ca05','The author adapts the principles in "The Art of War" for small businesses, teaching them to choose the right ground for battle, strike at competitors weakest points, and build and leverage strategic alliances.'),
('T09','Polar Bear, Polar Bear, What You do Hear? REI/COM Martin, Bill, Jr./ Carle, Eric (Illustrator)','Ca01','A 20th anniversary tribute edition of the best-selling classic is presented in a larger size, features updated cover art and is complemented by a CD recording of the text narrated by Gwyneth Paltrow.'),
('T10','The Art of Battlefield 4 Robinson, Martin','Ca06','Provides an in-depth look at EAs highly anticipated new game, which is one of the most popular first-person shooter franchises of all time, through exclusive concept and development as well as creator insights and commentary.'),
('T11','The Art of Assassins Creed IV: Black Flag Davies, Paul/ Lacoste, Raphael (Foreward By)','Ca06','Published to coincide with the much-anticipated release of the latest chapter in the top-selling Assassins Creed franchise, an exclusive art book collection provides detailed insight into Black Flags concepts and content.'),
('T12','The Art-Architecture Complex Reprint Foster, Hal','Ca06','An art theorist and professor at Princeton University describes how art has inspired and redirected architecture and how architecture has done the same for painting, sculpture and film by examining Norman Foster, Richard Rogers, Renzo Piano and Zaha Hadid'),
('T13','The Art of Dreaming Reprint Castaneda, Carlos','Ca07','Explores the teachings of sorcerer Don Juan, focusing on the amazing spiritual adventures attainable through dreams, including encounters with dangerous beings, cojoining energy bodies to dream together, and reaching new levels of knowledge and understand'),
('T14','A Writers Diary Woolf, Virginia/ Woolf, Leonard','Ca08','Extracts drawn by Virginia Woolfs husband from the personal record she kept over a period of twenty-seven years offer insight into the art and mind of the twentieth-century author.'),
('T15','Hitlers Art Thief Ronald, Susan','Ca08','Tells the story of a cache, found in a Munich apartment in 2013, that contained masterpieces not seen since the Nazi terror, and of the bizarre relationship between a son and his father, a man who looted art for Hitler.'),
('T16','Merriam-Websters Spanish-English Visual Dictionary Corbeil, Jean-Claude (Contributor)','Ca09','Presents a pictorial bilingual dictionary of over 22,000 words in Spanish and English organized by subjects and disciplines such as astronomy, science, sports, games, architecture, and clothing.'),
('T17','Big Data, Data Mining, and Machine Learning','Ca10','"An expert guide to high performance computing architectures and how they relate to analytics and data miningWith the exponential growth of data comes an ever-increasing need to process and analyze so-called Big Data. High Performance Data Mining and BigD'),
('T18','The Majesty of New Orleans Majesty Architecture Series Malone, Lee/ Malone, Paul (Photographer)','Ca12','Captures the distinctive features of New Orleans, highlighting its homes, historic structures, gardens, monuments, squares, courtyards, ironwork, and cemeteries'),
('T19','NoSQL for Dummies For Dummies Fowler, Adam','Ca10','A guide for NoSQL technologies explores some of the major types, including Cassandra and MongoDB, provides specific evaluation criteria for NoSQL databases, and explains how to use them for mission-critical enterprise architectures and projects.'),
('T20','Glaciers','Ca11','"Isabel is a single, twentysomething thrift-store shopper and collector of remnants, things cast off or left behind by others. Glaciers follows Isabel through a day in her life in which work with damaged books in the basement of a library, unrequited lo'),
('T21','Architectures Odd Couple Howard, Hugh','Ca13','Examines the rivalry between Frank Lloyd Wright and Philip Johnson, who built some of the most admired and discussed buildings in American history.'),
('T22','Street Art, Public City Young, Alison','Ca06','"This book investigates street art and graffiti as cultural practices at the borders of legality and illegality. Cities are engaged in a continual process of cultural production through which their self-image is developed and refined; a process that is so'),
('T23','Professional Microsoft SQL Server 2012 Reporting, Ken/ Paisley, Grant','Ca10','Describes the architecture and BI fundamentals of Microsoft SQL server 2012 reporting services, covering such topics as report design, business intelligence reporting, user reporting, solution patterns, administration, and custom programming.'),
('T24','Bricks & Mortals: Ten Great Buildings and the People They Made','Ca13','Explores the relationship between society and architecture through ten buildings, including the Palazzo Rucellai and Tower of Babel.'),
('T25','New Eco Homes Gutierrez, Manel','Ca13','Exploring various aspects of modern eco design, a full-color showcase of the latest innovations in sustainable architecture is an essential resource for architects, designers and homeowners interested in creating warm and inviting homes that protect and c'),
('T26','Rome Reprint Hughes, Robert','Ca08','Presents a history of the Roman empire that provides coverage of an extensive range of topics from its government and architecture to its influence on culture and politics, sharing personal insights from the authors 1958 visit.'),
('T27','Multimedia 9 Vaughan, Tay','Ca01','"This thoroughly revised and updated full-color text covers the most current multimedia tools, techniques, and technologies, including Web and mobile content design and deliveryMultimedia: Making It Work, Eighth Edition teaches fundamental multimedia conc'),
('T28','Architecture According to Pigeons Gurney, Stella/ Seki, Natsko (Illustrator)','Ca01','Pigeon, Speck Lee Tailfeather, takes the reader on a journey, touring the worlds most iconic architecture, including the Sydney Opera House, Tower Bridge, and Agbar Tower.'),
('T29','Houses With Charm: Simple Southern Style','Ca02','Showcases the interior design and architecture styles of the South in houses, mountain retreats, cottages, and other dwellings, capturing the comfort and hospitality of the region.'),
('T30','Heaven Phillips, Rowan Ricardo','Ca03','"A spectacularly vibrant and continually surprising collection from one of the poetry worlds rising young stars "Who the hells heaven is this?" Rowan Ricardo Phillips offers many answers, and none at all, in Heaven, the piercing and revelatory encore to'),
('T31','Cooking Class SPI Cook, Deanna F./ Bidwell, Julie (Photographer)','Ca06','Explains basic cooking techniques in kid-friendly language and offers recipes using fresh, healthy ingredients and featuring imaginative presentations, including granola bars, popcorn balls, spring rolls, quesadillas, sliders, and apple crisp.'),
('T32','1,000 Places to See Before You Die 2 Schultz, Patricia','Ca08','Describes essential places to see from around the world, offering information on what to find at each spot and the best time to visit.'),
('T33','Star Wars Little Golden Book Collection Star Wars: Little Golden Book (Corporate Author)','Ca05','Collections of 3 or more Little Golden Books stories starring childrens favorite characters are presented together for a new generation of Little Golden Books young readers.'),
('T34','The Picnic Hanel, Marnie/ Slonecker, Andrea/ Stevenson, Jen','Ca10','Provides tips for planning and arranging picnics along with recipes for no-fail foods that include rainbow carrots with smoky paprika vinaigrette, Vietnamese noodle bowls with shrimp and vegetables, and spicy salted olive oil brownies.'),
('T35','Creative Raw Cooking Passola, Mercé/ Viladevall, Edgard/ Ganz, Julie (Translator)','Ca07','"Raw cooking is a form of eating food full of life and nutrition, which contains exquisite flavors, aromas, and textures in order to delight our five senses, particularly our palate. In this book, you will find: - Lists of basic raw ingredients - How to o'),
('T36','Curious George Feeds the Animals Curious George PAP/COM Rey, Margret (Creator)/ Rey, H. A. (Creator)','Ca02','Curious George gets in trouble by feeding the animals at the zoo, but when a parrot escapes from the rainforest exhibit he is able to save the day.'),
('T37','Marie Curie National Geographic World History Biographies Steele, Philip','Ca11','Describes the life of the first woman to study physics at the University College of Paris, who went on to receive two Nobel Prizes for her work in radioactivity.'),
('T38','Archimedes and the Door to Science Living History Library Revised Bendick, Jeanne','Ca09','A biography of one of the important scientists of ancient Greece, and an explanation of his contributions to physics, astronomy, and mathematics'),
('T39','The Riverman (Riverman)','Ca11','"The first book in a trilogy about a girl who claims she is visiting a parallel universe where a nefarious being called The Riverman is stealing the souls of children and the boy she asks to write her biography because she fears her soul may be next"--'),
('T40','Nathan Hale On My Own Biography Knudsen, Shannon/ Orback, Craig (Illustrator)/ Zemlicka, Shannon','Ca08','Recounts the life of Revolutionary War hero Nathan Hale, whose decision to become a spy for General George Washington cost him his life.')
;

select *
from TITLE
;

/* Insert into the AUTHOR table */

INSERT INTO AUTHOR (Author_no, Author_FN, Author_MN, Author_LN)
VALUES 
('Au01','Frank','L.','Baum'),
('Au02','Ginger','','Kolbaba'),
('Au03','James','','Laver'),
('Au04','Heidi','','Nelson'),
('Au05','Cassandra','','Clare'),
('Au06','Judy','','Blume'),
('Au07','Jane','','Oconnor'),
('Au08','Becky','','Sheetz-runkle'),
('Au09','Bill','','Martin'),
('Au10','Martin','','Robinson'),
('Au11','Paul','','Davies'),
('Au12','Hal','','Foster'),
('Au13','Carlos','','Castaneda'),
('Au14','Viginia','','Woolf'),
('Au15','Susan','','Ronald'),
('Au16','Merriam','','Webster'),
('Au17','Jared','','Dean'),
('Au18','Lee','','Malone'),
('Au19','Adam','','Fowler'),
('Au20','Alexis','M.','Smith'),
('Au21','Hugh','','Howard'),
('Au22','Alison','','Young'),
('Au23','Paul','','Turley'),
('Au24','Tom','','Wilkinson'),
('Au25','Manuel','','Gutirrez'),
('Au26','Robert','','Hughes'),
('Au27','Tay','','Vaughan'),
('Au28','Stella','','Gurney'),
('Au29','Susan','','Sully'),
('Au30','Rowan','Ricardo','Phillips'),
('Au31','Deanna','F.','Cook'),
('Au32','Patricia','','Shultz'),
('Au33','Golden Books Pbls','','(Corporate Author)'),
('Au34','Marnie','','Hanel'),
('Au35','Merce','','Passola'),
('Au36','Margret','','Rey'),
('Au37','Philip','','Steele'),
('Au38','Jeanne','','Bendrick'),
('Au39','Aaron','','Starmer'),
('Au40','Shannon','','Knudsen')
;

select *
from AUTHOR
;

/* Insert into the ITEM table */

INSERT INTO ITEM (ISBN, Title_no, Translation, Cover, Publication_year)
VALUES 

('9780375869945','T01','ENGLISH','SOFTCOVER','2012'),
('9781414379746','T02','ENGLISH','SOFTCOVER','2014'),
('9780500204122','T03','ENGLISH','SOFTCOVER','2012'),
('9781451187717','T04','ENGLISH','SOFTCOVER','2014'),
('9781937856229','T05','ENGLISH','SOFTCOVER','2013'),
('9781481409940','T06','FRENCH','SOFTCOVER','2014'),
('9780061236075','T07','ENGLISH','SOFTCOVER','2008'),
('9780814433812','T08','ENGLISH','SOFTCOVER','2014'),
('9780805090666','T09','ENGLISH','HARDCOVER','2011'),
('9781781169285','T10','SPANISH','HARDCOVER','2013'),
('9781781169032','T11','ENGLISH','HARDCOVER','2013'),
('9781781681046','T12','ENGLISH','SOFTCOVER','2013'),
('9780060925543','T13','ENGLISH','SOFTCOVER','1994'),
('9780156027915','T14','ENGLISH','SOFTCOVER','2003'),
('9781250061096','T15','GERMAN','HARDCOVER','2015'),
('9780877792925','T16','ENGLISH','SOFTCOVER','2011'),
('9781118618042','T17','ENGLISH','HARDCOVER','2014'),
('9780882898636','T18','FRENCH','HARDCOVER','1992'),
('9781118905746','T19','ENGLISH','SOFTCOVER','2015'),
('9781935639206','T20','ENGLISH','SOFTCOVER','2012'),
('9781620403754','T21','ENGLISH','HARDCOVER','2016'),
('9780415729253','T22','ENGLISH','SOFTCOVER','2014'),
('9781118101117','T23','ENGLISH','SOFTCOVER','2012'),
('9781620406298','T24','ENGLISH','HARDCOVER','2014'),
('9780062395184','T25','SPANISH','HARDCOVER','2015'),
('9780375711688','T26','ENGLISH','SOFTCOVER','2012'),
('9780071832885','T27','ENGLISH','SOFTCOVER','2014'),
('9780714863894','T28','ENGLISH','HARDCOVER','2013'),
('9780847840076','T29','ENGLISH','HARDCOVER','2013'),
('9780374168520','T30','ENGLISH','HARDCOVER','2015'),
('9781612124001','T31','ENGLISH','SOFTCOVER','2015'),
('9780761156864','T32','ENGLISH','HARDCOVER','2011'),
('9780736436090','T33','ENGLISH','HARDCOVER','2016'),
('9781579656089','T34','ENGLISH','HARDCOVER','2015'),
('9781629144719','T35','SPANISH','HARDCOVER','2014'),
('9780618603879','T36','ENGLISH','SOFTCOVER','2005'),
('9781426302497','T37','ENGLISH','SOFTCOVER','2008'),
('9781883937126','T38','GERMAN','SOFTCOVER','1995'),
('9780374363093','T39','ENGLISH','HARDCOVER','2014'),
('9780876149058','T40','ENGLISH','HARDCOVER','2002')
;
select *
from ITEM
;

INSERT INTO TITLE_DETAIL (Title_detail_no, Title_no, Author_no)
VALUES 

('TD01','T01','Au01'),
('TD02','T02','Au02'),
('TD03','T03','Au03'),
('TD04','T04','Au04'),
('TD05','T05','Au05'),
('TD06','T06','Au06'),
('TD07','T07','Au07'),
('TD08','T08','Au08'),
('TD09','T09','Au09'),
('TD10','T10','Au10'),
('TD11','T11','Au11'),
('TD12','T12','Au12'),
('TD13','T13','Au13'),
('TD14','T14','Au14'),
('TD15','T15','Au15'),
('TD16','T16','Au16'),
('TD17','T17','Au17'),
('TD18','T18','Au18'),
('TD19','T19','Au19'),
('TD20','T20','Au20'),
('TD21','T21','Au21'),
('TD22','T22','Au22'),
('TD23','T23','Au23'),
('TD24','T24','Au24'),
('TD25','T25','Au25'),
('TD26','T26','Au26'),
('TD27','T27','Au27'),
('TD28','T28','Au28'),
('TD29','T29','Au29'),
('TD30','T30','Au30'),
('TD31','T31','Au31'),
('TD32','T32','Au32'),
('TD33','T33','Au33'),
('TD34','T34','Au34'),
('TD35','T35','Au35'),
('TD36','T36','Au36'),
('TD37','T37','Au37'),
('TD38','T38','Au38'),
('TD39','T39','Au39'),
('TD40','T40','Au40')
;

 select *
from TITLE_DETAIL
;

/* Insert into the COPY table */

INSERT INTO COPY (Copy_no, ISBN, Loanable, On_loan, Notes)
VALUES 

('Cp01','9780375869945','Y','Y',''),
('Cp02','9780375869945','Y','Y','Laminated first page'),
('Cp03','9780375869945','Y','N',''),
('Cp04','9780375869945','N','N','Original Collection'),
('Cp05','9780814433812','Y','Y',''),
('Cp06','9780814433812','Y','Y',''),
('Cp07','9780814433812','N','N','Original Collection'),
('Cp08','9781781169285','Y','Y',''),
('Cp09','9781781169285','N','N','Original Collection'),
('Cp10','9781250061096','Y','Y',''),
('Cp11','9781250061096','N','N','Original Collection'),
('Cp12','9781118905746','Y','Y',''),
('Cp13','9781118905746','Y','Y','Front page slightly ripped'),
('Cp14','9781118905746','Y','N',''),
('Cp15','9781118905746','N','N','Original Collection'),
('Cp16','9781629144719','Y','Y',''),
('Cp17','9781629144719','Y','Y',''),
('Cp18','9781629144719','Y','Y',''),
('Cp19','9781629144719','N','N','Original Collection'),
('Cp20','9781481409940','Y','Y',''),
('Cp21','9781481409940','Y','Y',''),
('Cp22','9781481409940','Y','Y',''),
('Cp23','9781481409940','N','N','Original Collection'),
('Cp24','9781629144719','Y','Y',''),
('Cp25','9781629144719','Y','Y',''),
('Cp26','9781629144719','N','N','Original Collection'),
('Cp27','9780071832885','Y','Y',''),
('Cp28','9780071832885','Y','N',''),
('Cp29','9780071832885','Y','N',''),
('Cp30','9780071832885','N','N','Original Collection')
;

select *
from COPY
;

/* Insert into the RESERVATION table */


INSERT INTO RESERVATION (Reservation_no, Member_no, Log_date, Reservation_status)
VALUES 
('R01','02','2022-02-11','CANCELLED'),
('R02','02','2022-02-15','CANCELLED'),
('R03','06','2022-03-15','CANCELLED'),
('R04','06','2022-03-15','CANCELLED'),
('R05','06','2022-04-02','CANCELLED'),
('R06','12','2022-04-08','CANCELLED'),
('R07','14','2022-04-10','CANCELLED'),
('R08','11','2022-04-12','CANCELLED'),
('R09','18','2022-04-15','CANCELLED'),
('R10','18','2022-04-19','CANCELLED'),
('R11','24','2022-04-24','CANCELLED'),
('R12','24','2022-04-28','CANCELLED'),
('R13','24','2022-05-02','CANCELLED'),
('R14','07','2022-05-08','ACTIVE'),
('R15','27','2022-05-11','ACTIVE'),
('R16','14','2022-05-13','ACTIVE'),
('R17','13','2022-05-17','ACITVE'),
('R18','07','2022-05-20','CANCELLED'),
('R19','07','2022-05-23','ACTIVE'),
('R20','07','2022-06-01','ACTIVE'),
('R21','07','2022-06-03','CANCELLED')
;
select *
from RESERVATION
;

/* Insert into the RESERVATION_DETAIL table */


INSERT INTO RESERVATION_DETAIL (Reservation_detail_no, Reservation_no, ISBN, Quantity)
VALUES 
('RD01','R01','9780375869945','1'),
('RD02','R02','9781451187717','1'),
('RD03','R03','9780061236075','1'),
('RD04','R04','9781118905746','1'),
('RD05','R05','9780805090666','1'),
('RD06','R06','9780877792925','1'),
('RD07','R07','9780882898636','1'),
('RD08','R08','9781118905746','1'),
('RD09','R09','9780060925543','1'),
('RD10','R10','9780805090666','1'),
('RD11','R11','9781620406298','1'),
('RD12','R12','9780071832885','1'),
('RD13','R13','9781629144719','1'),
('RD14','R14','9781612124001','1'),
('RD15','R15','9780761156864','1'),
('RD16','R16','9781579656089','1'),
('RD17','R17','9781481409940','1'),
('RD18','R18','9781250061096','1'),
('RD19','R19','9781781169032','1'),
('RD20','R20','9780374363093','1'),
('RD21','R21','9780071832885','1')
;
select *
from RESERVATION_DETAIL
;
 
/* Insert into the Loan table */

/* Will work once MEMBERS  table is populated */ 

INSERT INTO LOAN (Loan_no, Member_no, Checkout_date, Due_date, Return_date, Loan_status)
VALUES 

('L01','05','2022-01-15, 09:10:11',addtime(Checkout_date, '14 0:0:0'),'2022-01-22, 09:10:11','RETURNED'),
('L02','05','2022-01-22, 09:11:50',addtime(Checkout_date, '14 0:0:0'),'2022-01-28, 09:11:50','RETURNED'),
('L03','13','2022-02-07, 11:11:58',addtime(Checkout_date, '14 0:0:0'),'2022-02-27, 11:11:58','RETURNED'),
('L04','04','2022-02-08, 13:20:50',addtime(Checkout_date, '14 0:0:0'),'2022-02-20, 11:11:59','RETURNED'),
('L05','17','2022-02-15, 11:11:50',addtime(Checkout_date, '14 0:0:0'),'2022-02-25, 11:11:50','RETURNED'),
('L06','22','2022-02-17, 12:30:50',addtime(Checkout_date, '14 0:0:0'),'2022-02-22, 12:30:50','RETURNED'),
('L07','22','2022-02-19, 14:10:50',addtime(Checkout_date, '14 0:0:0'),'2022-03-02, 14:10:50','RETURNED'),
('L08','22','2022-02-19, 14:12:50',addtime(Checkout_date, '14 0:0:0'),'2022-02-26, 14:12:50','RETURNED'),
('L09','27','2022-02-22, 11:47:50',addtime(Checkout_date, '14 0:0:0'),'2022-03-01, 11:47:50','RETURNED'),
('L10','27','2022-02-25, 13:11:40',addtime(Checkout_date, '14 0:0:0'),'2022-03-25, 11:47:51','RETURNED'),
('L11','14','2022-02-27, 09:11:40',addtime(Checkout_date, '14 0:0:0'),'2022-03-11, 09:11:40','RETURNED'),
('L12','08','2022-03-02, 17:30:40',addtime(Checkout_date, '14 0:0:0'),'2022-03-17, 17:30:40','RETURNED'),
('L13','20','2022-03-08, 13:11:40',addtime(Checkout_date, '14 0:0:0'),'2022-03-20, 13:11:40','RETURNED'),
('L14','30','2022-03-15, 15:20:30',addtime(Checkout_date, '14 0:0:0'),'2022-03-20, 13:11:41','RETURNED'),
('L15','30','2022-03-17, 15:50:40',addtime(Checkout_date, '14 0:0:0'),'2022-04-09, 15:50:40','RETURNED'),
('L16','19','2022-03-18, 09:11:30',addtime(Checkout_date, '14 0:0:0'),'2022-04-02, 09:11:30','RETURNED'),
('L17','21','2022-03-19, 08:31:40',addtime(Checkout_date, '14 0:0:0'),'2022-03-28, 08:31:40','RETURNED'),
('L18','21','2022-03-19, 09:31:40',addtime(Checkout_date, '14 0:0:0'),'2022-04-07, 09:31:40','RETURNED'),
('L19', '21', '2022-03-19, 09:50:40', addtime(Checkout_date, '14 0:0:0'),'2022-03-24, 09:50:40','RETURNED'),
('L20','01','2022-03-23, 08:31:40',addtime(Checkout_date, '14 0:0:0'),'2022-04-10, 08:31:40','RETURNED'),
('L21','01','2022-03-27, 12:30:50',addtime(Checkout_date, '14 0:0:0'),'2022-04-10, 12:30:50','RETURNED'),
('L22','03','2022-03-29, 13:11:40',addtime(Checkout_date, '14 0:0:0'),'2022-04-10, 12:30:51','RETURNED'),
('L23','06', '2022-04-03, 09:11:40',addtime(Checkout_date, '14 0:0:0'),'2022-04-10, 12:30:52', 'RETURNED'),
('L24','09','2022-04-05, 15:20:30',addtime(Checkout_date, '14 0:0:0'),'2022-04-11, 12:30:53','RETURNED'),
('L25','15','2022-04-08, 09:31:40',addtime(Checkout_date, '14 0:0:0'),'2022-04-14, 12:30:54','RETURNED'),
('L26','19','2022-04-10,13:11:40',addtime(Checkout_date, '14 0:0:0'),'2022-04-14, 12:30:55','RETURNED'),
('L27','26','2022-04-12, 15:50:40',addtime(Checkout_date, '14 0:0:0'),'2022-04-15, 12:30:56','RETURNED'),
('L28','28','2022-04-15, 09:31:40',addtime(Checkout_date, '14 0:0:0'),'2022-05-05, 12:30:57','RETURNED'),
('L29','28','2022-04-19, 13:11:40',addtime(Checkout_date, '14 0:0:0'),'2022-04-25, 12:30:58','RETURNED'),
('L30','32','2022-04-24, 13:11:40',addtime(Checkout_date, '14 0:0:0'),'2022-05-05, 13:11:40','RETURNED'),
('L31','09','2022-04-28, 09:11:40',addtime(Checkout_date, '14 0:0:0'),'2022-05-10, 13:11:41','RETURNED'),
('L32','05','2022-05-02, 13:11:40',addtime(Checkout_date, '14 0:0:0'),'2022-05-13, 13:11:42','RETURNED'),
('L33','06','2022-05-08, 15:50:40',addtime(Checkout_date, '14 0:0:0'),'2022-05-15, 13:11:43','RETURNED'),
('L34','19','2022-05-11,  13:11:40',addtime(Checkout_date, '14 0:0:0'),'2022-05-30, 13:11:40','RETURNED'),
('L35','21','2022-05-13, 13:11:40',addtime(Checkout_date, '14 0:0:0'),'2022-05-20, 13:11:41','RETURNED'),
('L36','31','2022-05-17, 15:50:40',addtime(Checkout_date, '14 0:0:0'),'2022-05-25, 13:11:42','RETURNED'),
('L37','31','2022-05-20, 08:31:40',addtime(Checkout_date, '14 0:0:0'),'null','ACTIVE'),
('L38','07','2022-05-23, 09:31:40',addtime(Checkout_date, '14 0:0:0'),'null','ACTIVE'),
('L39','05','2022-06-01, 12:30:50',addtime(Checkout_date, '14 0:0:0'),'null','ACTIVE')
;

select *
from LOAN
;


/* Insert into the Loan_detail table */


INSERT INTO LOAN_DETAIL (Loan_detail_no, Loan_no, Copy_no)
VALUES 
('LD01','L01','Cp02'),
('LD02','L02','Cp10'),
('LD03','L03','Cp08'),
('LD04','L04','Cp12'),
('LD05','L05','Cp30'),
('LD06','L06','Cp11'),
('LD07','L07','Cp15'),
('LD08','L08','Cp05'),
('LD09','L09','Cp01'),
('LD10','L10','Cp25'),
('LD11','L11','Cp04'),
('LD12','L12','Cp27'),
('LD13','L13','Cp07'),
('LD14','L14','Cp19'),
('LD15','L15','Cp28'),
('LD16','L16','Cp10'),
('LD17','L17','Cp09'),
('LD18','L18','Cp24'),
('LD19','L19','Cp02'),
('LD20','L20','Cp13'),
('LD21','L21','Cp06'),
('LD22','L22','Cp30'),
('LD23','L23','Cp03'),
('LD24','L24','Cp23'),
('LD25','L25','Cp05'),
('LD26','L26','Cp29'),
('LD27','L27','Cp15'),
('LD28','L28','Cp18'),
('LD29','L29','Cp04'),
('LD30','L30','Cp15'),
('LD31','L31','Cp06'),
('LD32','L32','Cp07'),
('LD33','L33','Cp01'),
('LD34','L34','Cp02'),
('LD35','L35','Cp26'),
('LD36','L36','Cp16'),
('LD37','L37','Cp10'),
('LD38','L38','Cp11'),
('LD39','L39','Cp03')
;


select *
from LOAN_DETAIL
;


 

