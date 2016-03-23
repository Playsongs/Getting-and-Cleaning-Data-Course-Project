# Getting-and-Cleaning-Data-Course-Project
This program takes smartphone tracked activity data for 30 individuals in a test and training mode and creates a summarized data set based on select average and std information by subject and activity as provided by the following link
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Run_analysis.R performs the following
Data collected for this is assumed to be located in the current working directory and subdirectories from the following zipped file https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Merges the training and the test sets to create one data set.
Training and Test data are contained in the following 3 files in their own directories
X - Contains the observation data
Y - Contains the activities(as a number) associated with observation data (1 to 1 relationship)
subject - Contains the subject number for the observation data (1 to 1 relationship)
Data is merged into one file from the training and test data by subject, activity (Y) and data(X)

### Extracts only the measurements on the mean and standard deviation for each measurement.
The file features.txt contains all of the column names that were originally in the X observation data.
There were 561 measured observations and only the data with std() and mean() are needed for the exercise.

### Uses descriptive activity names to name the activities in the data set
Activity names are added to the merged data set based on the activity_labels.txt file.

### Appropriately labels the data set with descriptive variable names.
The column names in the new data set that were assigned based on features.txt are cleaned up to remove "()" and "-" for readability

### From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
The new data set is reshaped so that it's easier to average the observed data and summarize based on subject and activity name.
The data is written to a new file "tidy.txt"

## Other Files in Repo
CodeBook.md - a code book that describes the variables, the data, and any transformations or work that were performed to clean up the data

run_analysis.R - R script containing the code to clean up and present observed average and std data by subject and activity

tidy.txt - The output file created by run_analaysis.R
