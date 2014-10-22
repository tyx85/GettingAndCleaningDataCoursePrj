## This is the course project for Getting and Cleaning Data
## We are require to perform the followings steps to tidy and perform analysis on the data provided
##
## 1) Merges the training and the test sets to create one data set.
## 2) Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3) Uses descriptive activity names to name the activities in the data set
## 4) Appropriately labels the data set with descriptive variable names. 
## 5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable 
##    for each activity and each subject.
##
## We will break these project and perform each step at a time

library(reshape2)
  
## load features
feature_tbl <- read.table("./UCI HAR Dataset/features.txt", sep =" ", strip.white = TRUE)
names(feature_tbl) <- c("id","feature")
## grab the relevant columns
features_require <- grep("mean\\(|std\\(", feature_tbl$feature)

## load activity label
activities <- read.table("./UCI HAR Dataset/activity_labels.txt", sep =" " , strip.white = TRUE)
names(activities) <- c("id","labels")

## get test data
xtest_tbl <- read.table("./UCI HAR Dataset/test/X_test.txt", strip.white = TRUE)
names(xtest_tbl) <- feature_tbl$feature
ytest_tbl <- read.table("./UCI HAR Dataset/test/y_test.txt", strip.white = TRUE)
names(ytest_tbl) <- c("activity_id")
subjecttest_tbl <- read.table("./UCI HAR Dataset/test/subject_test.txt", strip.white = TRUE)
names(subjecttest_tbl) <- c("subject")
xtest_tbl <- xtest_tbl[,features_require]

## merge the data together in a big test data set
mergeTestData <- cbind(ytest_tbl, subjecttest_tbl, xtest_tbl)

## get train data
xtrain_tbl <- read.table("./UCI HAR Dataset/train/X_train.txt", strip.white = TRUE)
names(xtrain_tbl) <- feature_tbl$feature
ytrain_tbl <- read.table("./UCI HAR Dataset/train/y_train.txt", strip.white = TRUE)
names(ytrain_tbl) <- c("activity_id")
subjecttrain_tbl <- read.table("./UCI HAR Dataset/train/subject_train.txt", strip.white = TRUE)
names(subjecttrain_tbl) <- c("subject")
xtrain_tbl <- xtrain_tbl[,features_require]

## merge the data together in a big train data set
mergeTrainData <- cbind(ytrain_tbl, subjecttrain_tbl, xtrain_tbl)

## Combine the 2 data set together
mergeData <- rbind(mergeTestData,mergeTrainData)
mergeData <- merge(activities, mergeData, by.x = "id", by.y = "activity_id")

## tiday the data with each row contain 1 observation
tidyData <- melt(mergeData, id = c("labels", "subject"))
## merge the various observation together and group into a single mean variable for each label each subject
tidyData <- dcast(tidyData, labels + subject ~ variable, mean)

## write tidy data to file
write.table(tidyData, file="CourseProjectTidyData.txt", quote=FALSE, row.names=FALSE, sep ="\t")
