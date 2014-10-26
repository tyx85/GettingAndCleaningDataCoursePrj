Code Book - Data Dictionary UCI HAR Dataset
===========================================

For Course Project on Getting and Cleaning Data
-----------------------------------------------


#####Activity Label: Column name "Labels"

Description: Activities that the 30 volunteers did. It consist of the following six types.

          1. Laying
          2. Sitting
          3. Standing
          4. Walking
          5. Walking Downstair
          6. Walking Upstair


#####Subject: Column name "Subject"

Description: 30 volunteers that take part in this research

          * 1 to 30 volunteers who performed the activity for each window sample
          

#####Feature Vector for each pattern with 3 axis signals: Column name "Feature-mean()-X, Feature-mean()-Y, Feature-mean()-Z, Feature-std()-X, Feature-std()-Y, Feature-std()-Z"

Description: Records down the mean and std deviation of the various features. The features is prefix with a t which stand for Time, prefix with f which stand for frequency and end with the features type for the records. Each row of the obseration is tagged to a specific activity and individual subject.

          * tBodyAcc-XYZ
          * tGravityAcc-XYZ
          * tBodyAccJerk-XYZ
          * tBodyGyro-XYZ
          * tBodyGyroJerk-XYZ
          * tBodyAccMag
          * tGravityAccMag
          * tBodyAccJerkMag
          * tBodyGyroMag
          * tBodyGyroJerkMag
          * fBodyAcc-XYZ
          * fBodyAccJerk-XYZ
          * fBodyGyro-XYZ
          * fBodyAccMag
          * fBodyAccJerkMag
          * fBodyGyroMag
          * fBodyGyroJerkMag

#####Variables: Columns with either mean() or std()

Description: The set of variables that were estimated from these signals

          * mean(): Mean value
          * std(): Standard deviation
