select * from  cpa.cpadata;

## Drop rows Z_CostContact and Z_revenue as both of them have similiar values in each rows, this increases redundancy and does not contribute in our analysis.

alter table cpa.cpadata
drop column Z_CostContact, drop column Z_Revenue;

## Now, new feature Age is created.

ALTER TABLE cpa.cpadata 
ADD Age Int;
update cpa.cpadata
set Age = 2022 - Year_Birth;

## Deleting few records whose Age seems to be unrealistic for being a customer.

delete from cpa.cpadata
where Age in(129,123,122);

## Reducing categories in "Education" feature to only three i.e "Graduate","UnderGraduate" and "PostGraduate".

select distinct Education from cpa.cpadata;

update cpa.cpadata
set Education = replace(Education,"PhD","PostGraduate"),
Education = replace(Education,"2n Cycle","Graduate"), Education = replace(Education,"Basic","UnderGraduate"),
Education = replace(Education,"Graduation","Graduate"),Education = replace(Education,"Master","PostGraduate") ;

## Reducing categories in "Marital_Status" feature to only two categories i.e "Single" and "Married".

select distinct Marital_Status from cpa.cpadata;

update cpa.cpadata
set Marital_Status = replace(Marital_Status,"Widow","Single"), Marital_Status = replace(Marital_Status,"Divorced","Single"),
Marital_Status = replace(Marital_Status,"Together","Married"), Marital_Status = replace(Marital_Status,"Alone","Single"),
Marital_Status = replace(Marital_Status,"YOLO","Single"), Marital_Status = replace(Marital_Status,"Absurd","Single") ;

## Adding "Kidhome" and "Teenhome" features to create a new "Kids" feature.

alter table cpa.cpadata
add Kids int;
update cpa.cpadata
set Kids = Kidhome + Teenhome ;

alter table cpa.cpadata
drop Kidhome, drop Teenhome ;

## Adding a new feature "Total_spent" which represents all the spendings of each customer in two years.

alter table cpa.cpadata
add Total_spent int;

update  cpa.cpadata
set Total_spent = MntWines + MntFruits + MntMeatProducts + MntFishProducts + MntSweetProducts + MntGoldProds;

## Renaming some of the features. 

alter table cpa.cpadata
rename column Mntwines to Wines, rename column MntFruits to Fruits,
rename column MntMeatProducts to MeatProducts, rename column MntFishProducts to Fishproducts,
rename column MntSweetProducts to SweetProducts,rename column MntGoldProds to GoldProducts; 

## Creating a feature "Frequency" that represents the total purchases made by a customer in two years.

alter table cpa.cpadata
add column Frequency int;
update cpa.cpadata
set Frequency = NumWebPurchases + NumStorePurchases + NumCatalogPurchases;

## New feature is added which represents total of all the accepted complaints, "TotalAcceptedCmp".

alter table cpa.cpadata
add column TotalAcceptedCmp int;
update cpa.cpadata
set TotalAcceptedCmp = AcceptedCmp1 + AcceptedCmp2 + AcceptedCmp3 + AcceptedCmp4 + AcceptedCmp5;

## Dropping "AcceptedCmp1", "AcceptedCmp2", "AcceptedCmp3", "AcceptedCmp4" and "AcceptedCmp5" features.

alter table cpa.cpadata
drop column AcceptedCmp1, drop column AcceptedCmp2, drop column AcceptedCmp3, drop column AcceptedCmp4, drop column AcceptedCmp5;

## Dropping "Year_birth" feature.
 
alter table cpa.cpadata
drop column Year_Birth, drop column Dt_Customer;

## Changing the positions of "Age" and "Kids" features

alter table `cpa`.`cpadata` 
change column `Age` `Age` int null default null after ID,
change column `Kids` `Kids` int null default null after `Marital_Status`;

