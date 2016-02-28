### Codebook for Getting and Cleaning Data Course Project

##Data Dictonary - Run Analysis

# ID Variables (These were provided with original data set)

* Subject - 
  This was provided in original dataset in subject_test.txt and subject_train.txt
  Identifies the subject who performed the activity for each window sample.
	Its range is from 1 to 30.
* Activity -
  This was provided in original dataset in activity_labels.txt 
  The values for this variable are :
	WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYIN


# Extracted Variables (These were extracted from original data set)
    
  	The Body acceleration signals, Gravity acceleration signals, Jerk signals and magnitude of these three-dimensional signals were captured and calculated for the following original variables for time domain signals and frequency domain signals in all three X, Y, Z directions. Mean and Standard Deviation variables were estimated from these signals resulting in total 561 variables. 
  	tBodyAcc
    tGravityAcc
    tBodyAccJerk
    tBodyGyro
    tBodyGyroJerk
    tBodyAccMag
    tBodyAccJerkMag
    tBodyGyroMag
    tBodyGyroJerkMag
    fBodyAcc
    fBodyAccJerk
    fBodyGyro
    fBodyAccMag
    fBodyBodyAccJerkMag
    fBodyBodyGyroMag
    fBodyBodyGyroJerkMag

Data for only Mean and Standard Deviation variables was extracted resulting in following 66 varibales. These 66 variables are used in the tidy data set.  


* tBodyAcc-mean-X
* tBodyAcc-mean-Y
* tBodyAcc-mean-Z
* tBodyAcc-std-X
* tBodyAcc-std-Y
* tBodyAcc-std-Z
* tGravityAcc-mean-X
* tGravityAcc-mean-Y
* tGravityAcc-mean-Z
* tGravityAcc-std-X
* tGravityAcc-std-Y
* tGravityAcc-std-Z
* tBodyAccJerk-mean-X
* tBodyAccJerk-mean-Y
* tBodyAccJerk-mean-Z
* tBodyAccJerk-std-X
* tBodyAccJerk-std-Y
* tBodyAccJerk-std-Z
* tBodyGyro-mean-X
* tBodyGyro-mean-Y
* tBodyGyro-mean-Z
* tBodyGyro-std-X
* tBodyGyro-std-Y
* tBodyGyro-std-Z
* tBodyGyroJerk-mean-X
* tBodyGyroJerk-mean-Y
* tBodyGyroJerk-mean-Z
* tBodyGyroJerk-std-X
* tBodyGyroJerk-std-Y
* tBodyGyroJerk-std-Z
* tBodyAccMag-mean
* tBodyAccMag-std
* tGravityAccMag-mean
* tGravityAccMag-std
* tBodyAccJerkMag-mean
* tBodyAccJerkMag-std
* tBodyGyroMag-mean
* tBodyGyroMag-std
* tBodyGyroJerkMag-mean
* tBodyGyroJerkMag-std
* fBodyAcc-mean-X
* fBodyAcc-mean-Y
* fBodyAcc-mean-Z
* fBodyAcc-std-X
* fBodyAcc-std-Y
* fBodyAcc-std-Z
* fBodyAccJerk-mean-X
* fBodyAccJerk-mean-Y
* fBodyAccJerk-mean-Z
* fBodyAccJerk-std-X
* fBodyAccJerk-std-Y
* fBodyAccJerk-std-Z
* fBodyGyro-mean-X
* fBodyGyro-mean-Y
* fBodyGyro-mean-Z
* fBodyGyro-std-X
* fBodyGyro-std-Y
* fBodyGyro-std-Z
* fBodyAccMag-mean
* fBodyAccMag-std
* fBodyBodyAccJerkMag-mean
* fBodyBodyAccJerkMag-std
* fBodyBodyGyroMag-mean
* fBodyBodyGyroMag-std
* fBodyBodyGyroJerkMag-mean
* fBodyBodyGyroJerkMag-std