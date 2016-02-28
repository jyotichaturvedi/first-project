---
title: "Readme.md"
output: github_document
---


# Getting and Cleaning Data Project

## run_analysis.R

The cleanup script (run_analysis.R) does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

## Running the script

To run the script, source `run_analysis.R`. The script creates tidy data set and `tidy-UCI-HAR-dataset-AVG.csv` and `tidy-UCI-HAR-dataset-AVG.txt` files in the working directory.


