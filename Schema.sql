create database adschema;
-- drop database adschema;
use adschema;

create table advertiser (
AdvertiserID char(4) not null,
AdvertiserName varchar(30) not null,
IndCategory varchar(30) not null,
Street varchar(30) not null,
Zip char(6) not null,
Country varchar (20) not null,
ContactPersonName varchar(20) not null,
constraint advertiser_pk primary key (AdvertiserID)
);

create table publisher (
PublisherID char(5) not null,
PublisherName varchar(30) not null,
constraint publisher_pk primary key (PublisherID)
);

create table campaign (
CampaignID char (4) not null,
StartDate date not null,
EndDate date not null,
Budget int not null,
StrategyType char(1) not null,
AdvertiserID char (4) not null,
constraint campaign_pk primary key (CampaignID),
constraint campaign_fk foreign key (AdvertiserID) references advertiser(AdvertiserID)
);

create table additionalcategory (
AdvertiserID char(4) not null,
IndCategory varchar(30) not null,
constraint addcat_pk primary key (IndCategory, AdvertiserID),
constraint addcat_fk foreign key (AdvertiserID) references advertiser(AdvertiserID)
);

create table bill (
AdvertiserID char(4) not null,
BillDate date not null,
DateofPayment date,
constraint bill_pk primary key (AdvertiserID, BillDate),
constraint bill_fk foreign key (AdvertiserID) references advertiser(AdvertiserID)
);

create table pubbill (
AdvertiserID char(4) not null,
BillDate date not null,
PublisherID char(5) not null,
TransferDatetime datetime,
constraint pubbill_pk primary key (AdvertiserID, BillDate, PublisherID),
constraint pubbill_fk1 foreign key (AdvertiserID, BillDate) references bill(AdvertiserID, BillDate),
constraint pubbill_fk2 foreign key (PublisherID) references publisher(PublisherID)
);
