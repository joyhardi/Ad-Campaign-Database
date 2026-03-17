-- Retrieve all campaigns
select * from campaign;

-- Retrieve campaigns with a budget below 7000 (in ascending order)
select * from campaign
where budget < 7000
order by budget;

-- Find advertisers and their additional categories
select AdvertiserName, ac.IndCategory as AdditionalCategories
from advertiser a left join additionalcategory ac
on ac.AdvertiserID = a.AdvertiserID;

-- Find advertisers with unpaid bills
select AdvertiserName, BillDate
from bill b join advertiser a
on b.AdvertiserID = a.AdvertiserID
where b.DateofPayment is null;

-- Count how many publishers have been billed by advertiser (descending order)
select a.AdvertiserName, count(distinct pb.PublisherID) as PublisherCount
from pubbill pb join advertiser a 
on pb.AdvertiserID = a.AdvertiserID
group by a.AdvertiserName
order by publishercount desc;

-- Which advertisers are running camapaigns and what are their budgets
select a.AdvertiserName, c.CampaignID, c.budget
from advertiser a join campaign c
on a.advertiserID = c.advertiserID;








