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

![image](enter url here)  

First and the Foremost thing I did was verification of appropriate features with appropriate datatype so no datatypes related issues occur. Then, I used sort and filter features of excel an was looking for any missing or incomplete values. Turns out, the feature “ Income “ has some of the fields empty. As it is an important feature of our analysis it cannot be blank. Therefore, I remove the records where the income filed was empty. So, the total rows remained were 2116.

After, the data cleaning and verification process in Microsoft excel. The data was exported to MySql Workbench where further analysis process is done. Here, Some New features are added for analysis purpose.
* A New Feature "Age" was extracted from "Year_Birth" which shows the age of the customers today i.e in year 2022.Then, "Year_birth" was dropped.
* “Children” feature is created by adding the “Kidhome” and “Teenhome ” features.
*	Feature “Total_spent” is create which displays a customers total spendings over the span of two years.
*	The feature "Marital_Status" has 8 different values out of which “YOLO”,” widow”, “Absurd”, “Single”, “Divorced”, “Alone” can be represented by one aggregated value i.e., “Single”, And “Together” and “Married” can also be shown as one variable i.e “Married”. Now, Single and Married are the only two values which Represents customer's Marital Status. 
*	It is also observed that feature "Z_costContact" and "Z_revenue" repeats the same values in all the rows respectively. This feature does not seem to be contributing much to our analysis so would be better to remove them to reduced redundancy.
*	the feature "Dt_Customer" was also dropped along with "Year_birth".
*	In the Education feature there are 5 types of status mentioned "Basic", "2n Cycle", "Graduate", "Master" and "PhD", but the “ 2n cycle” education statues can be considered same as the “ Graduate" status so it will be replaced to “Graduate” status. Same goes for "Masters" and "PhD", Both comes under "PostGraduate" Status and similarly "Basic" represnts "UnderGraduate" status so it is changed to it. So the only educational status remaind are "UNderGraduate","Graducate" and "PostGraduate".
*	




•	In age feature there were few cutomers whos age seemed to be unrealtisc for being a customer so those records have been removed as they can be considered as outliers.

Transform the data so you can work with it effectively
Data has already been transformed from into excel file to perform basic data related operations.








### Check the data for errors
All the data cleaning and verifications in performed on a copy of original dataset for safety purposes.
Files is imported in Microst excel for basic data correction and verification purposes.

### Document the cleaning process.
A changelog is created where a list of all the modifications made to the data is maintained.
In the initial 


## Analyze

How should you organize your data to perform analysis on it?
	Firstly, a copy of original files is made and all the data manipulations, analysis and exploration is done on it for safety purpose.
	Check if all the varibles has appropriate data types, spellings, etc.
	Filtering and sorting will organize data in a way that it is easier to understand, analyze and visualize
Has your data been properly formatted?
	The data has been formatted using sorting and filtering to keep it organized to work with it.
What surprises did you discover in the data?
	When the dataset is imported in Microsoft excel, couple of things is noticed.
	First and the foremost thigs is that some of the values in income variable.
	In addition, Dt_customer, a variable which represents the date on which a customer joined the database is not parsed as DateTime datatype.
	Furthermore, there are some categorical features present in data, which will be needed to convert into numeric datatype for further analysis.
What trends or relationships did you find in the data?
	
How will these insights help answer your business questions?
	The insights obtained here gives us an idea that we are using the right data to perform our analysis which will help stakeholder take informed decisions.
Share

Were you able to answer the business question?
	By using the right approach of data cleaning, verification, manipulation, exploration and analysis it is safe to say that our results surely answers our business questions.
What story does your data tell?
	
