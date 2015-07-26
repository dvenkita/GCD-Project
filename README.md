# GCD-Project
Repository for Getting and Cleaning Data course Project

The purpose of this project is  collect, work with, and clean a data set.
The goal is to prepare tidy data that can be used for later analysis.

# UCI Human Activity Recognition (HAR) data set
The UCI HAR data set represent data collected from the accelerometers from 
the Samsung Galaxy S smartphone. A full description is available at the 
following site:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# Data for the project was obtained from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# How to use the R script
Download the run_analysis.R into your working directory. 
Source the file or run the script in R or R Studio

# The R script "run_analysis.R" does the following:
1. Loads the libraries required to run the R script
2. Downloads, extracts and reads the UCI HAR data set
3. Extracts mean and standard deviation measurements for each variable
4. Merges the training and the test data sets to create one data set
5. Uses descriptive activity names to the activities in the data set
6. Appropriately labels the data set with descriptive variable names
7. Creates a second, independent tidy data set with the average of each
   variable for each activity and each subject

The comments included within the run_analysis.R script provides description
of what each step does to the UCI HAR data set.

The CodeBook.md file in the repository provides the list of variables and 
their description
