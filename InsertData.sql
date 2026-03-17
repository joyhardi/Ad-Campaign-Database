SET GLOBAL local_infile = 1;

LOAD DATA LOCAL INFILE "C:/Personal Projects/Ad Campaign Database/Data/advertiser.txt"
INTO TABLE advertiser
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE "C:/Personal Projects/Ad Campaign Database/Data/additionalCategory.txt"
INTO TABLE additionalcategory 
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

insert into campaign values
('C001','2025-01-26','2025-03-14',4000,'A','A004'),
('C002','2025-02-24','2025-06-12',10000,'B','A002'),
('C003','2025-07-13','2025-10-21',3200,'B','A015'),
('C004','2025-06-17','2025-09-24',5600,'A','A004'),
('C005','2025-02-20','2025-05-10',7200,'A','A010');

insert into publisher values
('P001','YouTube'),
('P002','Instagram'),
('P003','Tiktok'),
('P004','Twitter'),
('P005','Facebook');

insert into bill values
('A002','2025-02-01','2025-03-13'),
('A004','2025-01-10',null),
('A004','2025-08-17','2025-09-09'),
('A010','2025-01-29',null),
('A015','2025-06-21','2025-07-02');

insert into pubbill values
('A002','2025-02-01','P001','2025-03-13 14:30:15'),
('A004','2025-01-10','P001',null),
('A004','2025-08-17','P002','2025-09-09 10:13:25'),
('A010','2025-01-29','P005',null),
('A015','2025-06-21','P003','2025-07-02 16:27:19');