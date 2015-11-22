## Project - DATA CLEANING 

## Load necessary libraries
library(dplyr)

#------------------------------------------------------------------------------------------------------------#
## Download and unzip the raw data from the weblink provided in the assignment description
## Read the training and the test sets of data i.e. subject_train, x_train, y_train, 
## suject_test, y_test, x_test 
## Also read the features and activity_labels 

subject_train <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")
x_train <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")

subject_test <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")
x_test <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")

activity_labels <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt")

features <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/features.txt")

#------------------------------------------------------------------------------------------------------------#
## Identify the columns with the mean and std data in it and form a vector to store the index
## It is named here as mean_std_features
mean_features <- grep("mean", features[,2])
std_features <- grep("std" , features[,2])
mean_std_features <- sort(c(mean_features,std_features))

## Identify the names of the features and acitivies 
feature_names <- features[mean_std_features,2]
activity_names <- activity_labels[,2]

#------------------------------------------------------------------------------------------------------------#
## Extracts only the measurements on the mean and standard deviation for each measurement
## This is done using the mean_std_features 
## Also assign the appropriate column names


# data from train
x_train_extract <- x_train[,mean_std_features]
names(x_train_extract) <- feature_names

y_train[,1] <- activity_labels[y_train[, 1], 2]
names(y_train) <- "activity"

names(subject_train) <- "subject"


# data from test
x_test_extract <- x_test[,mean_std_features]
names(x_test_extract) <- feature_names

y_test[,1] <- activity_labels[y_test[, 1], 2]
names(y_test) <- "activity"

names(subject_test) <- "subject"

# Combine the train data and test data corresponding to the mean and std columns using cbind
train <- cbind(subject_train,y_train,x_train_extract)
test <- cbind(subject_test,y_test,x_test_extract)

# Combine the complete data using rbind
complete_data <- rbind(train,test)

complete_data$activity <- as.factor(complete_data$activity)
complete_data$subject <- as.factor(complete_data$subject)
#------------------------------------------------------------------------------------------------------------#
## From the data set, create a new data set, independent tidy data set with the 
## average of each variable for each activity and each subject.
new_data <- complete_data %>% 
        group_by(subject,activity) %>%
        summarise_each(funs(mean))
        
#------------------------------------------------------------------------------------------------------------#
## Writing the tidy data
write.table(new_data, "tidy.txt", row.names = FALSE)

#------------------------------------------------------------------------------------------------------------#