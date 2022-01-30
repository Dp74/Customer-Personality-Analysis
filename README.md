# Customer-Personality-Analysis
For the Google Data Analytics Capstone project, I have decided to work with Customer Personality Analysis case study. Here, I will be determining various customers and their needs to understand them better, so the products offered can be modified according to the wants and needs of them.

For this particular project I followed six steps data analysis process to which I was introduced in my Google Data Analytics Course. The six steps are:
ASK
PREPARE
PROCESS
ANALYZE
SHARE 
ACT.

## ASK
###  What topic are you exploring?
Here I am exploring the Cutomer Personality Analysis dataset from kaggle. In this datase there are number of features and records that can be used for finding interesting patterns and insights which supports our business goals.
###  What is the problem you are trying to solve?
To perform Customer Segmentation in order to find trends and patterns in shopping habits of the customer based on their personality so the company can understand them better, update products based on their wants and needs and market them appropriate items.
### How can your insights help your client make decisions?
The insights found through this analysis will help stakeholders take the right desicion toward their business

## Prepare

###  Where is your data located?
Data has been downloaded from a credible source i.e Kaggle  Customer Personality Analysis | Kaggle.
It can be considered as second party data as it has been collected by Dr. Omar Romero-Hernandez.
###  How is the data organized?
The Dataset is in a CSV file and has been delimited by space.
It has been then converted to .xls files just so it can be used in Microsoft Excel.
The data contains 2214 unique records and 29 unique variables.
### Are there issues with bias or credibility in this data?
The Dataset shows a usability of “9.7 “out of 10 on Kaggle, therefore it does have high credibility
It can be understood sophisticatedly, is machine readable, does contain metadata and provides assurance that data is well maintained.
### How are you addressing licensing, privacy, security, and accessibility?
The Dataset comes under " CC0: Pulibc Domain " license. This means an individual can copy, modify, distribute and perform the work, even for commercial purposes, all without asking permission.

## Process

### What tools are you choosing and why?
Microsoft excel is used because it can be considered the best tool for handling small datasets. It is easy to use, show you a quick glance of how data is organized and stored. It can also help you find duplicate records, perform sorting, filtering, conditional formatting etc. 
I have also used MySql for data manipulation and exploration such as adding and removing features, summarizing statistics.
Tableau is used for creating high quality data visualization while Rstudio is used for performing clustering, data centric cleaning, transforming and visualization using coding.

### What steps have you taken to ensure that your data is clean?

<img width="1264" alt="CPA_MsExcel_step_1" src="https://user-images.githubusercontent.com/30661622/151690886-4ba0f9a4-8c0a-4021-8bd5-3d020d3afda2.png">

First and the Foremost thing I did was verification of appropriate features with appropriate datatype so no datatypes related issues occur. Then, I used sort and filter features of excel an was looking for any missing or incomplete values. Turns out, the feature “ Income “ has some of the fields empty. As it is an important feature of our analysis it cannot be blank. Therefore, I remove the records where the income filed was empty. So, the total rows remained were 2116.

After, the data cleaning and verification process in Microsoft excel. The data was exported to MySql Workbench where further analysis process is done. Here, Some New features are added for analysis purpose.
* A New Feature "Age" was extracted from "Year_Birth" which shows the age of the customers today i.e in year 2022.Then, "Year_birth" was dropped.
* “Kids” feature is created by adding the “Kidhome” and “Teenhome ” features.
*	Feature “Total_spent” is created using "MntWines", "MntFruits", "MntMeatProducts", "MntFishProducts", "MntSweetProducts" and "MntGoldProds", which displays a customers total spendings over the span of two years.
*	The feature "Marital_Status" has 8 different values out of which “YOLO”,” widow”, “Absurd”, “Single”, “Divorced”, “Alone” can be represented by one aggregated value i.e., “Single”, And “Together” and “Married” can also be shown as one variable i.e “Married”. Now, Single and Married are the only two values to which customer's Marital Status is reduced. 
*	It is also observed that feature "Z_costContact" and "Z_revenue" repeats the same values in all the rows respectively. This feature does not seem to be contributing much to our analysis so would be better to remove them to reduced redundancy.
*	The feature "Dt_Customer" was also dropped along with "Year_birth".
*	In the Education feature there are 5 types of status mentioned "Basic", "2n Cycle", "Graduate", "Master" and "PhD", but the “ 2n cycle” education status can be considered same as the “ Graduate" status so it will be replaced to “Graduate” status. Same goes for "Masters" and "PhD", Both comes under "PostGraduate" Status and similarly "Basic" represents "UnderGraduate" status so it is changed to it. So the only educational status remained are "UnderGraduate","Graduate" and "PostGraduate".
*	"TotalAcceptedCmp", a new feature is created by adding "AcceptedCmp1", "AcceptedCmp2", "AcceptedCmp3", "AcceptedCmp4" and "AcceptedCmp5".
* "NumWebPurchases", "NumStorepurchases" and "NumCatalogPurchases" were added to create a new feature "Frequency" which displays how frequent customers has gone for shopping in two years.
*	All the Product features were renamed.
*	Lastly, after creating new features and dropping old ones, total number of features are 23.

## Analyze

After performing data manipulation, it was manually made sure that the data is clean and verified. Now, after completing the data processing steps, the data was exported to tableau public, a free platform where analyst can create, explore and share data visualization online. Tableu does have great many features for creating high quality data visualization which can help in analyzing trends and patterns in data.

•	In age feature there were few cutomers whos age seemed to be unrealtisc for being a customer so those records have been removed as they can be considered as outliers.

 ### What trends or relationships did you find in the data?
 
 when the data is uploaded in tableau, I created several graphs for exploration and analysis purpose. The Findings are as follows:
 
![Education status of all the customers](https://user-images.githubusercontent.com/30661622/151690619-a21887b0-ea7f-41b0-b651-3358ab02364b.png)
* I found that majority of the customers are Graduates and least of the customers
are UnderGraduates.
 
![Marital Status of all the customers](https://user-images.githubusercontent.com/30661622/151690703-e7f5bd45-eb8c-4669-91d5-2e55d3c4f912.png)
 
* I also found that around three fourth of the customers are married while one one thirt of them are single.
 
![Kids and Marital Status (1)](https://user-images.githubusercontent.com/30661622/151690773-306588c9-0aab-40c9-bcf6-b710c394b949.png)
 
* From this particular chart it can be said that most of the customers are married and has a single kid while least of the customers are Single with three kids. This seems to be one of the most interesting informattion by far.

![Income and gold](https://user-images.githubusercontent.com/30661622/151690834-8d8dc27c-b8f7-4849-9fdb-1d425fcc86da.png)

* Plotting bar chart of Income vs GoldProducts it can be observed that cusotmers with salaries between 0k to 7k buys most gold products. whereas, customer whose salary comes under the range of 16k to 100k spends just under $250.

 ![Kids and Sweet Products](https://user-images.githubusercontent.com/30661622/151690840-564ac52b-1d08-48a1-b386-20a97f836d50.png)

* One other interesting insight that was found was customer with no children seems to spent more on Sweet products. From the plot it can be observed that thee more then children the less amount is spent on sweet products. 


After looking for trends and patterns from data visualization in tableau. for further analysis, I used the data in Rstudio. Rstudio is an IDE(Itegrated Development Environment) for R, a programming language used for statistical analysis, data analysis and data visualization. R language is open source, data centric and easily the most preffered language for processing lots of data and manipulating information for analysis.

Now, I already have a general idea about customers personality but to determine the types of customer groups can be found using three variables. 
* Recency: shows number of days since the customers last purchase.
* Frequency: displays how frequent the customers goes out for shopping.
* Total Spent: it shows the total expense of each customer over the span of last years.

![Rplot](https://user-images.githubusercontent.com/30661622/151691067-b01b8461-b07b-47ef-a4df-217524681bd0.jpeg)
![Rplot01](https://user-images.githubusercontent.com/30661622/151691083-54578e0d-82d2-4482-aef5-d28ce3da7508.jpeg)
![Rplot02](https://user-images.githubusercontent.com/30661622/151691089-fd003075-cccd-4091-b0da-a8838e17c319.jpeg)

For analysis purpose I plotted the graphs of Recency, Frequency and Total Spent as shown above. IT can be observed that Recency peaks around 50 which means customers shops when the days of inactivity is around 50. The Frequency bar chart states that maximum customers shops less than 10 times in two years while less customers seems to shop more than that.At Last, 0$ to $500 is the range in which most of the customers are comfortable in shopping.   

These three features plays a major roles in determining the group in which a customer belongs because they can help us understand how customers shops, how often he/she shops and what amount he/she spents when shopping.Now, I extracted these features and formed a new dataframe called "RFT". To determine the number of clusters of customers present in data I used the "Elbow Method". The elbow method is a heuristic used in Searching the number of clusters present in a data set. On executing the function for finding the number of "K" for Kmeans, The graph obtained is shwon below.

![Rplot03](https://user-images.githubusercontent.com/30661622/151692016-78d48dec-93c6-4104-8647-a0f1a7313230.jpeg)

As it be observed in this particular graph that the value "3" seems to be the elbow of the line chart. Therefore, the value considered for K is 3. Now, when the dataframe "RFT" and the value obtained from "Elbow Method" is passed as agruemnts to Kmeans function, Three clusters of customers are found as shown in the figure.

![Rplot05](https://user-images.githubusercontent.com/30661622/151692641-fec7b548-a0ec-4817-bf7c-3966fb4c9ff0.jpeg)

## SHARE

## What story does your data tell?
![Rplot06](https://user-images.githubusercontent.com/30661622/151692652-445ec334-1c8a-4681-9784-18ec91c5db9f.jpeg)
![Rplot04](https://user-images.githubusercontent.com/30661622/151692612-4d90f7a4-b32b-40f1-adf7-abb40a4dfb50.jpeg)

Based on the data it can be said that all the customers are divided into three groups.
#### Highly Active Customers:
* Number of users: 910
* Average days of inactivity: 49
* Average Number of purchases in two years: 20
* Average Total Expense of $1,266 in two years
* Cluster Revenue Generated is : $1,115,703.
#### Moderately Active Customers:
* Number of Users: 659
* Average days of inactivity in two years: 74
* Average Number of purchases in two years: 8
* Average Total expense in two years: $175
* Cluster Revenue Generated : $115,505
### Least Active Customers:
* Number of Users: 644
* Average days of inactivity in two years: 23
* Average Number of purchases in two years: 8
* Average Total expense in two years: $174
* Cluster Revenue Generated : $115,505


## ACT

### What is your final conclusion based on your analysis?
From my analysis it is clear that there are three types of customers which can be distinguish based on their characterstics. These customers does have unique insights as shown in dashboard above.

### What next steps would you or your stakeholders take based on your findings?
Based on these insights, following steps can be taken:
* Based on Cluster Number, new offers, discounts and promotions can be introduced.
* Based on customers's Marital Status, Income, Number of Children etc. products suggestion can be improved.
* Target advertising or preferencing of products should be implied to make the most out of marketing strategies while spending less resource.
