# Getting and Cleaning Data Course Project

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set.

[Description of the project where the data was obtained] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

[Data for the project was obtained from] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The files in this repository:

**READ.md** - data source link, description; repository information, R script description  
**tidy.txt** - merged data of training and test sets, subset to mean and std  
**tidy_avg.txt** - tidy data set with the average of each variable for reach activity and each subject  
**CodeBook.md** - describes the variables, the data, transformations performed to clean the data  
**run_analysis.R** - script for performing analysis  

#### run_analysis.R

1. Merges the training and the test sets to create one data set.  
2. Extracts only the measurements on the mean and standard deviation for each measurement.  
3. Uses descriptive activity names to name the activities in the data set.  
4. Appropriately labels the data set with descriptive variable names.  
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  