# Cathryn Wheeler
# 9/22/2015


##Purpose of Study:  
The purpose of this study is to examine whether modern media has an effect on the opinions of the citizens of the United States. The goals of this study are to (1) establish a relationship between Americans and media and (2) determine if American attitudes are swayed by the media.  

##Variables:  


knitr::opts_chunk$set(comment = NA, message = FALSE, warning = FALSE, fig.align = "center")
library(PDS)
library(dplyr)
OutlookOnLife.sub <- OutlookOnLife %>% 
  filter(!is.na(CHECK321) & !is.na(AGE) & CHECK321 ==1 & AGE <= 25)
dim(OutlookOnLife.sub)
OutlookOnLife.sub <- OutlookOnLife.sub %>% 
  select(MAJORDEPLIFE, CHECK321, AGE, TAB12MDX, S3AQ3B1, S3AQ3C1, ETHRACE2A, SEX)
dim(OutlookOnLife.sub)
summary(OutlookOnLife.sub)
