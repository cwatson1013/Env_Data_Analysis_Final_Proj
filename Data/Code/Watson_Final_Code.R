## This file contains code for my final project

#This set of code is for setting up my markdown document and setting a ggplot theme
{r setup, include=FALSE, warning=FALSE, message=FALSE, echo=FALSE, eval=TRUE}
# Set your working directory
setwd("/Users/carolinewatson/Documents/Spring 2019/Environmental Data Analytics/Final_Project/Data/Output")

# Load your packages
suppressMessages(library(tidyverse))
library(ggplot2)
library(leaflet)
library(dplyr)
library(RColorBrewer)
library(viridis)
library(knitr)
library(kableExtra)
library(lubridate)

# Set your ggplot theme
caroline_theme <- theme_classic(base_size = 16) + 
  theme(axis.text = element_text(color = "black"), 
        legend.position = "right")

theme_set(caroline_theme)

#This section of code looks at importing my dataset and summarizing it
#reading in data file
carbon.data <- read.csv("./Data/Raw/NTL-LTER_Lake_Carbon_Raw.csv")

#structure of data frame
carbon.data_summary <- summary(carbon.data)

#summary of data structure
kable(carbon.data_summary) %>%
  kable_styling()

#This set of code is for data exploration and converting the date to a date
#class of sampledate column
class(carbon.data$sampledate)

#converting sampledate to a date in R
carbon.data$sampledate <- as.Date(carbon.data$sampledate, format = "%m/%d/%y")

#checking class of sampledate
class(carbon.data$sampledate)

#summary of the dataset
head(carbon.data)
summary(carbon.data)
colnames(carbon.data)
dim(carbon.data)

#renaming columns
colnames(carbon.data)[1:5] <- c("Lake.ID", "Lake.Name", "Year", "Day.Number", "Date")

#graph looking at DOC over time
ggplot(carbon.data) +
  geom_point(aes(x = Year, 
                 y = doc))

#frequency polygon graph looking at DOC in each lake
ggplot(carbon.data) + 
  geom_freqpoly(aes(x = doc, color = Lake.Name), bins = 20)

#filtering depth column so categorical values are not in the depth column
carbon.data.skinny <- carbon.data %>%
  filter(depth_id == -2 | depth_id == -1 | depth_id == 7) %>%
  filter(depth == "Hypolimnion" | depth == "Epilimnion" | depth == "PML" |
           depth == "Metalimnion") %>%
  select(Lake.ID:depth_id, doc)

#saving processed file to the processed folder
write.csv(carbon.data.skinny, 
          file = "./Data/Processed/NTL-LTER_Lake_Carbon_Processed.csv")

#graph looking at doc with depth
ggplot(carbon.data.skinny) +
  geom_bar(aes(x = depth, y = doc), stat = "identity")

#plot of the DOC concentrations in each lake at each depth; color represents the depth
ggplot(carbon.data.skinny) + 
  geom_bar(aes(x = Lake.Name, y = doc, fill = depth), stat = "identity", las = 2) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

#plot of the depth vs DOC with geom_point
ggplot(carbon.data.skinny) +
  geom_point(aes(x = depth, 
                 y = doc))

#plot of DOC in each lake
ggplot(carbon.data.skinny) + 
  geom_freqpoly(aes(x = doc, color = Lake.Name), bins = 20)


#make a new column with seasons that are seperated by daynum; then write a pipe function saying if daynum == [1:150], "summer" etc
carbon.data.separate$season <- NA

#divide the daynum into seasons, run an anova on this to see if season is a random effect


#make a graph with facet wrap for doc and season; facet wrap by season & facet wrap by depth or lake?
