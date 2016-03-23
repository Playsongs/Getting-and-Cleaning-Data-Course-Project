library(plyr)
library(dplyr)

## 1. Merges the training and the test sets to create one data set.
trainsubject <- read.table("./train/subject_train.txt")
trainx <- read.table("./train/x_train.txt")
trainy <- read.table("./train/y_train.txt")
testy <- read.table("./test/y_test.txt")
testx <- read.table("./test/x_test.txt")
testsubject <- read.table("./test/subject_test.txt")
testdata <- cbind(testsubject, testy, testx)
traindata <- cbind(trainsubject, trainy, trainx)
mergeddata <- rbind(testdata,traindata)

## Remove data no longer needed from memory
rm(testsubject,testx,testy,testdata,trainsubject,trainx,trainy,traindata)

## 2. Extracts only the measurements on the mean and standard deviation for each measurement as found in features
varnames <- read.table("features.txt")
colnames(mergeddata) <- c("subject","activity", as.character(varnames$V2))
mergeddata <- mergeddata[,c(grep("subject|activity|(mean\\(\\)|std\\(\\))",colnames(mergeddata)))]

## 3. Use Descriptive Names for activities from activities.txt via join
activity <- read.table("activity_labels.txt",col.names=c("activity","activity_name"))
meanstdact <- join(mergeddata, activity, by="activity")

## 4. Appropriately labels the data set with descriptive variable names.
## remove "-" and "()" in column names that were assigned from features
names(meanstdact) <- gsub("\\(\\)", "", names(meanstdact))
names(meanstdact) <- gsub("-","", names(meanstdact))

## 5. From the data set in step 4, creates a second, independent tidy data 
## set with the average of each variable for each activity and each subject.
meanstdact <- meanstdact %>% select(subject, activity, activity_name, everything())

tidydata <- meanstdact %>%
  group_by(subject,activity_name) %>%
  summarise_each(funs(mean(., na.rm=TRUE)), -activity)
write.table(tidydata,file="tidy.txt",row.names=FALSE)

## Remove data from memory
rm(tidydata,meanstdact,activity,mergeddata,varnames)
