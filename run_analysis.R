## Load the required libraries
library(data.table)
library(reshape2)

## Create a new directory for the project in your current working directory
if(!file.exists("./Project")){
        dir.create("./Project")
}

## Set the current working directory to "Project"
setwd("./Project")

## Download the data set and extract data from zip archives
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "UCI_HAR_dataset.zip", method = "curl")
unzip("UCI_HAR_dataset.zip")

## Load activity labels and list of variables for each feature
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]
features <- read.table("./UCI HAR Dataset/features.txt")[,2]

## Extract list of variables that contain mean and standard deviation (std) 
## measurements
extract_features <- grepl("mean\\(\\)|std\\(\\)", features)

## Load X & Y training data sets as well as list of training data subjects
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")


## Extract measurements on mean and std for the training data
names(X_train) = features
X_train = X_train[,extract_features]

## Extract activity ID and activity labels for the training dataset
Y_train[,2] = activity_labels[Y_train[,1]]
names(Y_train) = c("Activity_ID", "Activity_Label")
names(subject_train) = "Subject"

## Combine mean & std measurement with activity ID & activity labels 
## for training data
train_data <- cbind(as.data.table(subject_train), Y_train, X_train)

## Load X & Y training data sets as well as list of test data subjects
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

## Extract measurements on mean and std for the test data
names(X_test) = features
X_test = X_test[,extract_features]

## Extract activity ID and activity labels for the training dataset
Y_test[,2] = activity_labels[Y_test[,1]]
names(Y_test) = c("Activity_ID", "Activity_Label")
names(subject_test) = "Subject"

## Combine mean & std measurement with activity ID & activity labels 
## for test data
test_data <- cbind(as.data.table(subject_test), Y_test, X_test)

## Merge training and test data sets
combined_data = rbind(test_data, train_data)

## Melt the combined data for reshaping
id_labels = c("Subject", "Activity_ID", "Activity_Label")
data_labels = setdiff(colnames(combined_data), id_labels)
melted_data = melt(combined_data, id = id_labels, measure.vars = data_labels)

## Average each variable for each activity and each subject
## Cast the averaged molten data into tidy data frame
tidy_data = dcast(melted_data, Subject + Activity_Label ~ variable, mean)

## Clean variable names and generate descriptive labels
names(tidy_data) = gsub("\\(|\\)|‐|,", "", names(tidy_data))
names(tidy_data) = gsub("^t", "Time", names(tidy_data))
names(tidy_data) = gsub("^f", "Freq", names(tidy_data))
names(tidy_data) = gsub("BodyBody", "Body", names(tidy_data))
names(tidy_data) = gsub("mean", "Mean", names(tidy_data))
names(tidy_data) = gsub("std", "StdDev", names(tidy_data))

## Create a text file with tidy dataset containing average of each variable 
## for each activity and each subject
write.table(tidy_data, file = "UCI_HAR_tidy_data.txt",row.name = FALSE, quote = FALSE)