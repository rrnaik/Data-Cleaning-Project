---
title: "Codebook for data cleaning project"
date: "Sat Nov 21 2015"
output:
  html_document:
    keep_md: yes
---

## Project Description
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.   

##Study design and data processing

###Collection of the raw data
The data comes fomr experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:

- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'train/subject_train.txt': Subject details.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'test/subject_train.txt': Subject details.


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals include - mean(): Mean value and std(): Standard deviation. 

The complete list of variables of each feature vector is available in 'features.txt'


##Creating the tidy datafile

###Guide to create the tidy data file
The following steps were undertaken to create a tidy data set: 

1. Downlaod the data from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
2. Create a run_analysis.R code to merge the training and the test sets to create one data set, extract the measurements on the mean and standard deviation for each measurement, appropriately labeling the data set with descriptive variable names, and creating an independent tidy data set with the average of each variable for each activity and each subject. More details of the steps in readme document.
3. Use the following code to read the tidy data:  
data <- read.table("./tidy.txt", header = TRUE);
View(data)

###Cleaning of the data
The following steps were taken in cleanign the data:

1. The data was read into R using read.table function.
2. The index for columns with mean or std were found and the corresponding columns were extracted. 
3. Using cbind and rbind the data was combined to yield a single data set.
4. Using the dplyr library, a new data set was created corresponding to the mean of each variable for a subject and an activity.


##Description of the variables in the tiny_data.txt file
General description of the file including:

 - Dimensions of the dataset: 180 x 81
 - Summary of the data: 30 subjects performing 6 different activities with 79 measurements 

###Variable - subject 

- Class: factor
- Unique levels: 30
- Unit of measurement: No unit
- Levels: 1 to 30

###Variable - activity 

- Class: factor
- Unique levels: 6
- Unit of measurement: No unit
- Levels: WALKING: subject was walking
          WALKING_UPSTAIRS: subject was walking up a stairs
          WALKING_DOWNSTAIRS: subject was walking down a stairs
          SITTING: subject was sitting
          STANDING: subject was standing
          LAYING: subject was laying  
         
###Variable - tBodyAcc-mean()-X 

- Description: time domain data of body acceleration mean in x direction
- Class: integer
- Unit of measurement: g

###Variable - tBodyAcc-mean()-Y 

- Description: time domain data of body acceleration mean in y direction
- Class: integer
- Unit of measurement: g

###Variable - tBodyAcc-mean()-Z 

- Description: time domain data of body acceleration mean in z direction
- Class: integer
- Unit of measurement: g

###Variable - tBodyAcc-std()-X

- Description: time domain data of body acceleration standard deviation in x direction
- Class: integer
- Unit of measurement: g

###Variable - tBodyAcc-std()-Y 

- Description: time domain data of body acceleration standard deviation in y direction
- Class: integer
- Unit of measurement: g

###Variable - tBodyAcc-std()-Z 

- Description: time domain data of body acceleration standard deviation in z direction
- Class: integer
- Unit of measurement: g

###Variable - tGravityAcc-mean()-X 

- Description: time domain data of gravity acceleration mean in x direction
- Class: integer
- Unit of measurement: g

###Variable - tGravityAcc-mean()-Y 

- Description: time domain data of gravity acceleration mean in y direction
- Class: integer
- Unit of measurement: g

###Variable - tGravityAcc-mean()-Z 

- Description: time domain data of gravity acceleration mean in z direction
- Class: integer
- Unit of measurement: g

###Variable - tGravityAcc-std()-X 

- Description: time domain data of gravity acceleration standard deviation in x direction
- Class: integer
- Unit of measurement: g

###Variable - tGravityAcc-std()-Y 

- Description: time domain data of gravity acceleration standard deviation in y direction
- Class: integer
- Unit of measurement: g

###Variable - tGravityAcc-std()-Z 

- Description: time domain data of gravity acceleration standard deviation in z direction
- Class: integer
- Unit of measurement: g

###Variable - tBodyAccJerk-mean()-X 

- Description: time domain data of body acceleration jerk mean in x direction
- Class: integer
- Unit of measurement: g

###Variable - tBodyAccJerk-mean()-Y

- Description: time domain data of body acceleration jerk mean in y direction
- Class: integer
- Unit of measurement: g

###Variable - tBodyAccJerk-mean()-Z 

- Description: time domain data of body acceleration jerk mean in z direction
- Class: integer
- Unit of measurement: g

###Variable - tBodyAccJerk-std()-X 

- Description: time domain data of body acceleration jerk standard deviation in x direction
- Class: integer
- Unit of measurement: g

###Variable - tBodyAccJerk-std()-Y 

- Description: time domain data of body acceleration jerk standard deviation in y direction
- Class: integer
- Unit of measurement: g

###Variable - tBodyAccJerk-std()-Z 

- Description: time domain data of body acceleration jerk standard deviation in z direction
- Class: integer
- Unit of measurement: g

###Variable - tBodyGyro-mean()-X 

- Description: time domain data of body angular velocity mean in x direction
- Class: integer
- Unit of measurement: rad/seg

###Variable - tBodyGyro-mean()-Y 

- Description: time domain data of body angular velocity mean in y direction
- Class: integer
- Unit of measurement: rad/seg

###Variable - tBodyGyro-mean()-Z 

- Description: time domain data of body angular velocity mean in z direction
- Class: integer
- Unit of measurement: rad/seg

###Variable - tBodyGyro-std()-X 

- Description: time domain data of body angular velocity standard deviation in x direction
- Class: integer
- Unit of measurement: rad/seg

###Variable - tBodyGyro-std()-Y

- Description: time domain data of body angular velocity standard deviation in y direction
- Class: integer
- Unit of measurement: rad/seg

###Variable - tBodyGyro-std()-Z 

- Description: time domain data of body angular velocity standard deviation in z direction
- Class: integer
- Unit of measurement: rad/seg

###Variable - tBodyGyroJerk-mean()-X 

- Description: time domain data of body angular velocity jerk mean in x direction
- Class: integer
- Unit of measurement: rad/seg

###Variable - tBodyGyroJerk-mean()-Y 

- Description: time domain data of body angular velocity jerk mean in y direction
- Class: integer
- Unit of measurement: rad/seg

###Variable - tBodyGyroJerk-mean()-Z 

- Description: time domain data of body angular velocity jerk mean in z direction
- Class: integer
- Unit of measurement: rad/seg

###Variable - tBodyGyroJerk-std()-X 

- Description: time domain data of body angular velocity jerk standard deviation in x direction
- Class: integer
- Unit of measurement: rad/seg

###Variable - tBodyGyroJerk-std()-Y 

- Description: time domain data of body angular velocity jerk standard deviation in y direction
- Class: integer
- Unit of measurement: rad/seg

###Variable - tBodyGyroJerk-std()-Z

- Description: time domain data of body angular velocity jerk standard deviation in z direction
- Class: integer
- Unit of measurement: rad/seg

###Variable - tBodyAccMag-mean() 
- Description: mean of time domain data of body acceleration magnitude
- Class: integer
- Unit of measurement: g

###Variable - tBodyAccMag-std() 

- Description: standard deviation of time domain data of body acceleration magnitude
- Class: integer
- Unit of measurement: g

###Variable - tGravityAccMag-mean() 

- Description: mean of time domain data of gravity acceleration magnitude
- Class: integer
- Unit of measurement: g

###Variable - tGravityAccMag-std() 

- Description: standard deviation of time domain data of gravity acceleration magnitude
- Class: integer
- Unit of measurement: g

###Variable - tBodyAccJerkMag-mean() 

- Description: mean of time domain data of body angular acceleration jerk magnitude
- Class: integer
- Unit of measurement: g


###Variable - tBodyAccJerkMag-std() 

- Description: standard deviation of time domain data of body angular acceleration jerk magnitude
- Class: integer
- Unit of measurement: g

###Variable - tBodyGyroMag-mean() 

- Description: mean of time domain data of body angular velocity magnitude
- Class: integer
- Unit of measurement: rad/seg

###Variable - tBodyGyroMag-std() 

- Description: standard deviation of time domain data of body angular velocity magnitude
- Class: integer
- Unit of measurement: rad/seg

###Variable - tBodyGyroJerkMag-mean()

- Description: mean of time domain data of body angular velocity jerk magnitude
- Class: integer
- Unit of measurement: rad/seg

###Variable - tBodyGyroJerkMag-std() 

- Description: standard deviation of time domain data of body angular velocity jerk magnitude
- Class: integer
- Unit of measurement: rad/seg

###Variable - fBodyAcc-mean()-X 

- Description: freq. domain data of body acceleration mean in x direction
- Class: integer
- Unit of measurement: Hz


###Variable - fBodyAcc-mean()-Y 

- Description: freq. domain data of body acceleration mean in y direction
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyAcc-mean()-Z 

- Description: freq. domain data of body acceleration mean in z direction
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyAcc-std()-X 

- Description: freq. domain data of body acceleration std. dev. in x direction
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyAcc-std()-Y 

- Description: freq. domain data of body acceleration std. dev. in y direction
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyAcc-std()-Z 

- Description: freq. domain data of body acceleration std. dev. in z direction
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyAcc-meanFreq()-X 

- Description: freq. domain data of body acceleration with weighted average of the frequency components to obtain a mean frequency in x direction
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyAcc-meanFreq()-Y 

- Description: freq. domain data of body acceleration with weighted average of the frequency components to obtain a mean frequency in y direction
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyAcc-meanFreq()-Z

- Description: freq. domain data of body acceleration with weighted average of the frequency components to obtain a mean frequency in z direction
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyAccJerk-mean()-X 

- Description: mean of the freq. domain data of body acceleration in x direction
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyAccJerk-mean()-Y 

- Description: mean of the freq. domain data of body acceleration in y direction
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyAccJerk-mean()-Z 

- Description: mean of the freq. domain data of body acceleration in z direction
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyAccJerk-std()-X 

- Description: std. dev. of the freq. domain data of body acceleration in x direction
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyAccJerk-std()-Y 

- Description: std. dev. of the freq. domain data of body acceleration in y direction
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyAccJerk-std()-Z

- Description: std. dev. of the freq. domain data of body acceleration in z direction
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyAccJerk-meanFreq()-X 

- Description: freq. domain data of body acceleration jerk with weighted average of the frequency components to obtain a mean frequency in x direction
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyAccJerk-meanFreq()-Y 

- Description: freq. domain data of body acceleration jerk with weighted average of the frequency components to obtain a mean frequency in y direction
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyAccJerk-meanFreq()-Z 

- Description: freq. domain data of body acceleration with weighted average of the frequency components to obtain a mean frequency in z direction
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyGyro-mean()-X 

- Description: freq. domain data of body angular velocity mean in x direction
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyGyro-mean()-Y 


- Description: freq. domain data of body angular velocity mean in y direction
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyGyro-mean()-Z 

- Description: freq. domain data of body angular velocity mean in z direction
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyGyro-std()-X 

- Description: freq. domain data of body angular velocity std. dev. in x direction
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyGyro-std()-Y 

- Description: freq. domain data of body angular velocity std. dev. in y direction
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyGyro-std()-Z 

- Description: freq. domain data of body angular velocity std. dev. in z direction
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyGyro-meanFreq()-X

- Description: freq. domain data of body angular velocity with weighted average of the frequency components to obtain a mean frequency in x direction
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyGyro-meanFreq()-Y

- Description: freq. domain data of body angular velocity with weighted average of the frequency components to obtain a mean frequency in y direction
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyGyro-meanFreq()-Z 

- Description: freq. domain data of body angular velocity with weighted average of the frequency components to obtain a mean frequency in z direction
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyAccMag-mean() 

- Description: mean of freq. domain data of body acceleration magnitude
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyAccMag-std() 


- Description: std. dev. of freq. domain data of body acceleration magnitude
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyAccMag-meanFreq() 

- Description: freq. domain data of body accelration magnitude with weighted average of the frequency components to obtain a mean frequency 
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyBodyAccJerkMag-mean() 

- Description: freq. domain data of body accelration jerk magnitude to obtain a mean  
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyBodyAccJerkMag-std() 

- Description: freq. domain data of body accelration jerk magnitude to obtain a std. dev.
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyBodyAccJerkMag-meanFreq() 

- Description: freq. domain data of body to body accelration magnitude with weighted average of the frequency components to obtain a mean frequency 
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyBodyGyroMag-mean() 

- Description: freq. domain data of body to body ang. vel. jerk magnitude to obtain a mean  
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyBodyGyroMag-std() 

- Description: freq. domain data of body to body  ang. vel. jerk magnitude to obtain a std. dev.
- Class: integer
- Unit of measurement: Hz

###Variable - fBodyBodyGyroMag-meanFreq() 

- Description: freq. domain data of body to body ang. vel. magnitude with weighted average of the frequency components to obtain a mean frequency 
- Class: integer
- Unit of measurement: Hz


###Variable - fBodyBodyGyroJerkMag-meanFreq()

- Description: freq. domain data of body to body ang. vel. jerk magnitude with weighted average of the frequency components to obtain a mean frequency 
- Class: integer
- Unit of measurement: Hz