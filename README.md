Course Project - Getting and Cleaning Data
==========================================

As part of the Coursera Syllabus, we are require to submit the course project on what we had learn so far from this module.

###Original Instruction from the course project

Download the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

###Run run_analysis.R

1. Manually download the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip (i.e. download file go into C:\download)
2. Manually unzip the downloaded file
3. Place run_analysis.R in the same directory as unzip folder (i.e. C:\download)
4. Run run_analysis.R

###Steps listed in run_analysis.R

1. Load Features into a dataset and change the row name to a more meaningful name
2. Use regular expression to select the required feaure columns which is mean() and std()
3. Load Activities into a dataset and change the row name to a more meaningful name
4. Load Test data and change the row name to more each individual features
5. Load Test activity data and change the row name to a more meaningful name
6. Load Test subject data and change the row name to a more meaningful name
7. Filter away those that are not required in the Test data set. (i.e. select columns with only mean and std)
8. Merge the Test data together
9. Load Train data and change the row name to more each individual features
10. Load Train activity data and change the row name to a more meaningful name
11. Load Train subject data and change the row name to a more meaningful name
12. Filter away those that are not required in the Train data set. (i.e. select columns with only mean and std)
13. Merge the Train data together
14. Combine the 2 data sets (Test and Train) into a single dataset and merge with activity labels to get a more meaninful description of the activity
15. Tidy the data with each row containing 1 observation variable
16. Group the various observation according to activity and subject and take the mean of all features
17. Write the tidy data into a text file
