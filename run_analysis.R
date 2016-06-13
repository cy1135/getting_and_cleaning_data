##
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set.
## 4. Appropriately labels the data set with descriptive variable names.
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
## 

## clear our workspace
rm(list=ls())

## load our library
library(reshape2)

##
## Get data
##

## filename stuff
filename <- "dataset.zip"
fileURL  <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dataDir  <- "UCI HAR Dataset"

## download and unzip our data
## if our file doesn't exist, proceed to download the dataset
if (!file.exists(filename)){
    download.file(fileURL, filename, method="curl")
}

## unzip dataset downloaded
if (!file.exists("UCI HAR Dataset")){
    unzip(filename)
}

##
## Files in directory
##
## data_root
## 1. activity_labels.txt
## 2. features_info.txt
## 3. features.txt
## 4. README.txt
##
## test
## 1. subject_test.txt
## 2. X_test.txt
## 3. y_test.txt
##
## train
## 1. subject_train.txt
## 2. X_train.txt
## 3. y_train.txt
##

##
## Load Features and Activity Labels
##
features        <- read.table(paste(dataDir, "/features.txt", sep = ""), header = FALSE)
activityLabels  <- read.table(paste(dataDir, "/activity_labels.txt", sep = ""), header = FALSE)

## Assign column names 
colnames(activityLabels)    <- c("activityID", "activityLabels")

##
## Vector to create a subset with columns that have mean, or std 
##
meanStdFeatures <- grep(".*(mean|std)\\(\\)", features[, 2])

##
## Load Test Datasets
##
subjectTest     <- read.table(paste(dataDir, "/test/subject_test.txt", sep = ""), header = FALSE)
xTest           <- read.table(paste(dataDir, "/test/X_test.txt", sep = ""), header = FALSE)
yTest           <- read.table(paste(dataDir, "/test/y_test.txt", sep = ""), header = FALSE)

## Assign column names, use features as column names
colnames(subjectTest)       <- "subjectID"
colnames(xTest)             <- features[,2]
colnames(yTest)             <- "activityID"

## Use descriptive activity names to name the activities in the data set
yTest[, 1] <- activityLabels[yTest[, 1], 2]

##
## Create subset of only mean and std
##
xTest <- xTest[, meanStdFeatures]

## Create test data set merging subjectTest, xTest, yTest
testDataset <- cbind(yTest, subjectTest, xTest)

## 
## Load Train Datasets
##
subjectTrain    <- read.table(paste(dataDir, "/train/subject_train.txt", sep = ""), header = FALSE)
xTrain          <- read.table(paste(dataDir, "/train/X_train.txt", sep = ""), header = FALSE)
yTrain          <- read.table(paste(dataDir, "/train/y_train.txt", sep = ""), header = FALSE)

## Assign column names, use features as column names
colnames(subjectTrain)      <- "subjectID"
colnames(xTrain)            <- features[,2]
colnames(yTrain)            <- "activityID"

## Use descriptive activity names to name the activities in the data set
yTrain[, 1] <- activityLabels[yTrain[, 1], 2]

##
## Create subset of only mean and std
##
xTrain <- xTrain[, meanStdFeatures]

## Create train data set merging subjectTrain, xTrain, yTrain
trainDataset <- cbind(yTrain, subjectTrain, xTrain)

## 
## Merge Test and Train Datasets
##
dataSet <- rbind(testDataset, trainDataset)

##
## Second dataset, with average of each variable for each activity and each subject 
##
avgDataSet <- ddply(dataSet, .(activityID, subjectID), function(x) {colMeans(x[, 3:68])})

##
## Write datasets to file
##
write.table(dataSet, "tidy.txt", row.name = FALSE)
write.table(avgDataSet, "tidy_avg.txt", row.name = FALSE)