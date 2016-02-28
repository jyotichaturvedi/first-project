##Getting and Cleaning Data Project
##Author: Jyoti Chaturvedi 
## The program downloads the files from the specified URL,
## Merges training and test datasets,
## Extracts only mean and stansard deviation measurements,
## Uses descriptive activity names to name the activities in the data set,
## Appropriately labels the data set with descriptive variable names,
## Creates a second, independent tidy data set with the average of each variable for each activity and each subject

#Download file from specified URL
fileURL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
localFileName<-"./getdataprojectfilesUCIHARDataset.zip"
# Check if does not exists, download the file
if (file.exists(localFileName) == FALSE) {
  download.file(fileURL, destfile = localFileName)
}

# Variable for uncompressed folder name
dataFileDir<-"./UCI HAR Dataset"
# Uncompress the zip file
if (file.exists(dataFileDir) == FALSE) {
  unzip(localFileName)
}

# Requirement 1: Merge the training and the test sets to create one data set

# Read the test, training and subject datasets
test.subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
test.x <- read.table("./UCI HAR Dataset/test/X_test.txt")
test.y <- read.table("./UCI HAR Dataset/test/y_test.txt")

train.subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
train.x <- read.table("./UCI HAR Dataset/train/X_train.txt")
train.y <- read.table("./UCI HAR Dataset/train/y_train.txt")

# Combines data tables (train and test)
x <- rbind(train.x, test.x)
y <- rbind(train.y, test.y)
s <- rbind(train.subject, test.subject)

## Requirement 2. Extract only the measurements on the mean and standard deviation for each measurement

features <- read.table("./UCI HAR Dataset/features.txt")
# Friendly names to features column
names(features) <- c('featureid', 'featurename')
# Search for matches to argument mean() or sd()  within each element of
# character vector using escape character for parenthesis and get the indices
index_features <- grep("-mean\\(\\)|-std\\(\\)", features$featurename) 
x <- x[, index_features] 
# Replace all matches of a string features 
names(x) <- gsub("\\(|\\)", "", (features[index_features, 2]))

##  Requirement 3. Uses descriptive activity names to name the activities in the data set:

# Read activity labels
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")
# Friendly names to activities column
names(activities) <- c('activityid', 'activityname')
y[, 1] = activities[y[, 1], 2]

## 4. Appropriately labels the data set with descriptive activity names

names(y) <- "Activity"
names(s) <- "Subject"

# Combines data table by columns
tidyDataSet <- cbind(s, y, x)

# 5. Creates a 2nd, independent tidy data set with the average of each variable for each activity and each subject

p <- tidyDataSet[, 3:dim(tidyDataSet)[2]] 
tidyDataAVGSet <- aggregate(p,list(tidyDataSet$Subject, tidyDataSet$Activity), mean)

# Activity and Subject name of columns 
names(tidyDataAVGSet)[1] <- "Subject"
names(tidyDataAVGSet)[2] <- "Activity"

# Create csv and txt files for average tidy data set in diretory
tidyDataFileAVGCSV <- "./tidy-UCI-HAR-dataset-AVG.csv"
tidyDataFileAVGtxt <- "./tidy-UCI-HAR-dataset-AVG.txt"
# Create csv (tidy data set AVG) in diretory
write.csv(tidyDataAVGSet, tidyDataFileAVGCSV)
# Create txt (tidy data set AVG) in diretory
write.table(tidyDataAVGSet, tidyDataFileAVGtxt,row.names = FALSE)

