## Installing and loading of required libraries.

install.packages("tidyverse")
install.packages("ggplot2")
install.packages("factoextra")
install.packages("fastDummies")
library(tidyverse)
library(ggplot2)
library(factoextra)
library(fastDummies)

## Load the Customer Personality Analysis data in .csv file as data frame "cpa".

cpa <- read.csv("Cleaned_and_verified_CPAdata.csv")
View(cpa)
summary(cpa)

## Creating bar charts of Recency, Frequency and Total_spent

ggplot(cpa) + geom_bar(mapping = aes(x = Recency))
ggplot(cpa) + geom_bar(mapping = aes(x = Frequency))
ggplot(cpa) + geom_bar(mapping = aes(x = Total_spent))

## Converting categorical data into numerical data

num <- cpa %>% select_if(is.numeric)
char <- cpa %>% select_if(is.character)
char <- fastDummies::dummy_cols(char)
view(char[,3:7])
cpa <- cbind(num,char[,3:7])

## Performing "Elbow Method" to determine value of "K" to be selected for further analysis.

RFT <- cpa[ , c("Recency", "Frequency","Total_spent")]
RFT <- na.omit(RFT)
fviz_nbclust(RFT,kmeans,method = "wss") + labs(subtitle = "Elbow Method to Determine No. of clusters")

## Perform K means clustering to find out clusters of customers present.

RFT[,1:3] <- scale(RFT[,1:3])
clusters <- kmeans(RFT, centers = 3, nstart =25)
cpa$NumofCluster <- as.factor(clusters$cluster)

## Presenting details of the clusters found.

kmeansresults <- cpa %>%
  group_by(NumofCluster) %>%
  summarise('No. of Users' = n(),
            'Mean of Recency' = round(mean(Recency)),
            'Mean of Frequency' = scales::comma(round(mean(Frequency))),
            'Mean of Total_Spent' = scales::dollar(round(mean(Total_spent))),
            'Cluster Revenue' = scales::dollar(sum(Total_spent))
  )

DT::datatable((kmeansresults),
              rownames = FALSE)

## Visualization of the three clusters.(1/2)

Size_of_Clusters_viz <- ggplot(kmeansresults, aes(NumofCluster, `No. of Users`)) +
  geom_text(aes(label = `No. of Users`), vjust = -0.3) +
  geom_bar(aes(fill=NumofCluster), stat='identity') +
  ggtitle('Number of Users per Cluster') + 
  xlab("Cluster Number") +
  theme_classic()
print(Size_of_Clusters_viz)

## Visualization of the three clusters.(2/2)

Shape_of_Cluster_viz <- fviz_cluster(clusters,RFT, geom = "point",ellipse.type = "norm",repel = TRUE)
print(Shape_of_Cluster_viz)