library(tidyr)
library(dplyr)
str(titanic_original)
titanic_original <- read.csv("titanic_original.csv", header=T, na.strings=c("","NA"))
titanic_original$embarked[which(is.na(titanic_original$embarked))] <- "S"
mean(titanic_original$age)
titanic_original$age[which(is.na(titanic_original$age))] <- 24

#2.2 The mean is 23.85929 and the median is 24 so they are both a good pick
#4.1 It doesn't make sense to put a value in the missing cabin numbers
#4.2 Yes, the cabin number might be an indication of survival but also the pclass.Because
#if the passenger was at the 3rd class his chances of survival were very low.

titanic_original <- mutate(titanic_original, has_cabin_number = ifelse(is.na(cabin), 0, 1))
titanic_clean <- titanic_original
write.csv(titanic_clean, file = "titanic_clean.csv")
