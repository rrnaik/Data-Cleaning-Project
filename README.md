This is a course project for the Getting and Cleaning Data Coursera course. 

With the dataset necessary for the project in the same folder, the script written in R, run_analysis.R, does the following:

1. Loads the training and the test sets of data i.e. subject_train, x_train, y_train, suject_test, y_test, x_test. It also reads the features and activity_labels.
2. Identifies the columns with the mean and standard deviation data in it and forms a vector to store the index. It is named here as mean_std_features. 
3. Combines the train data and test data corresponding to the mean and std columns using cbind and rbind functions and generates a clean combined data set.
4. Converts the activity and subject columns into factors.
5. Creates a tidy dataset that consists of the average (mean) value of each variable for each subject and activity pair.
6. Writes the end result as a text file - tidy.txt.

The following lines can be used in R to read the tidy.tx file: 

data <- read.table("./tidy.txt", header = TRUE);
View(data)

