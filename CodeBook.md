# Code Book

## Description

Description of the variables, the data, and transformations performed to clean up the data

### Source Data

[Source Data] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

### Source Files

#### data_root
1. activity_labels.txt  
2. features_info.txt  
3. features.txt  
4. README.txt  

#### test  
1. subject_test.txt  
2. X_test.txt  
3. y_test.txt  

#### train
1. subject_train.txt  
2. X_train.txt  
3. y_train.txt  

#### Identifiers

*activityID  
*subjectID  

### Variables 

* tBodyAccMeanX  
* tBodyAccMeanY  
* tBodyAccMeanZ  
* tBodyAccStdX  
* tBodyAccStdY  
* tBodyAccStdZ  
* tGravityAccMeanX  
* tGravityAccMeanY  
* tGravityAccMeanZ  
* tGravityAccStdX  
* tGravityAccStdY  
* tGravityAccStdZ  
* tBodyAccJerkMeanX  
* tBodyAccJerkMeanY  
* tBodyAccJerkMeanZ  
* tBodyAccJerkStdX  
* tBodyAccJerkStdY  
* tBodyAccJerkStdZ  
* tBodyGyroMeanX  
* tBodyGyroMeanY  
* tBodyGyroMeanZ  
* tBodyGyroStdX  
* tBodyGyroStdY  
* tBodyGyroStdZ  
* tBodyGyroJerkMeanX  
* tBodyGyroJerkMeanY  
* tBodyGyroJerkMeanZ  
* tBodyGyroJerkStdX  
* tBodyGyroJerkStdY  
* tBodyGyroJerkStdZ  
* tBodyAccMagMean  
* tBodyAccMagStd  
* tGravityAccMagMean  
* tGravityAccMagStd  
* tBodyAccJerkMagMean  
* tBodyAccJerkMagStd  
* tBodyGyroMagMean  
* tBodyGyroMagStd  
* tBodyGyroJerkMagMean  
* tBodyGyroJerkMagStd  
* fBodyAccMeanX  
* fBodyAccMeanY  
* fBodyAccMeanZ  
* fBodyAccStdX  
* fBodyAccStdY  
* fBodyAccStdZ  
* fBodyAccJerkMeanX  
* fBodyAccJerkMeanY  
* fBodyAccJerkMeanZ  
* fBodyAccJerkStdX  
* fBodyAccJerkStdY  
* fBodyAccJerkStdZ  
* fBodyGyroMeanX  
* fBodyGyroMeanY  
* fBodyGyroMeanZ  
* fBodyGyroStdX  
* fBodyGyroStdY  
* fBodyGyroStdZ  
* fBodyAccMagMean  
* fBodyAccMagStd  
* fBodyBodyAccJerkMagMean  
* fBodyBodyAccJerkMagStd  
* fBodyBodyGyroMagMean  
* fBodyBodyGyroMagStd  
* fBodyBodyGyroJerkMagMean  
* fBodyBodyGyroJerkMagStd  

### Activity Labels

* Walking - 1
* Walking Upstairs - 2
* Walking Downstairs - 3
* Sitting - 4
* Standing - 5
* Laying - 6

### Steps

1. Read files  
2. Use features for column names
3. Subset to only mean and std fields
4. Combine into separate test and train datasets
5. Combine test and train datasets
6. Clean up column names
7. Create second dataset based on averages for each activity and subject