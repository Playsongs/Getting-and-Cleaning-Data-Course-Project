# Codebook for runanalysis.R
## Input files
features.txt - Column names for the collected data

activity_labels.txt - Activity ID's with corresponding activity name

For both the train and test data the following 3 files in their own train or test directory

x_train/test.txt - The observation data 

subject_train/test.txt - The subject number corresponding to the observation data

y_train/test.txt - The corresponding activity for the observation data

## Data manipulation
1. Merged the test and train information by subject, activity(y) and the observations(x) from 6 files to 1 file
2. Added proper column names using features.txt
3. Selected only the column names with mean() and std()
4. Added the descriptive activity names column to match up with the activity using activity_labels.txt which is now last column
    1 - WALKING
    2 - WALKING_UPSTAIRS
    3 - WALKING_DOWNSTAIRS
    4 - SITTING
    5 - STANDING
    6 - LAYING
5. Updated column names to be more readable by removing the "()" and "-"
6. Reordered the columns to to move activity name from last column to 3rd column
7. Averaged the observation data by subject(1st column) and activity name (3rd column). Note the activity id was dropped.
8. Wrote the results to a file (tidy.txt)

## Output tidy.txt
File written which contains average information by subject number (1-30) and by activity name for the corresponding 66 avg and std variables

subject

activity_name

tBodyAccmeanX

tBodyAccmeanY

tBodyAccmeanZ

tBodyAccstdX

tBodyAccstdY

tBodyAccstdZ

tGravityAccmeanX

tGravityAccmeanY

tGravityAccmeanZ

tGravityAccstdX

tGravityAccstdY

tGravityAccstdZ

tBodyAccJerkmeanX

tBodyAccJerkmeanY

tBodyAccJerkmeanZ

tBodyAccJerkstdX

tBodyAccJerkstdY

tBodyAccJerkstdZ

tBodyGyromeanX

tBodyGyromeanY

tBodyGyromeanZ

tBodyGyrostdX

tBodyGyrostdY

tBodyGyrostdZ

tBodyGyroJerkmeanX

tBodyGyroJerkmeanY

tBodyGyroJerkmeanZ

tBodyGyroJerkstdX

tBodyGyroJerkstdY

tBodyGyroJerkstdZ

tBodyAccMagmean

tBodyAccMagstd

tGravityAccMagmean

tGravityAccMagstd

tBodyAccJerkMagmean

tBodyAccJerkMagstd

tBodyGyroMagmean

tBodyGyroMagstd

tBodyGyroJerkMagmean

tBodyGyroJerkMagstd

fBodyAccmeanX

fBodyAccmeanY

fBodyAccmeanZ

fBodyAccstdX

fBodyAccstdY

fBodyAccstdZ

fBodyAccJerkmeanX

fBodyAccJerkmeanY

fBodyAccJerkmeanZ

fBodyAccJerkstdX

fBodyAccJerkstdY

fBodyAccJerkstdZ

fBodyGyromeanX

fBodyGyromeanY

fBodyGyromeanZ

fBodyGyrostdX

fBodyGyrostdY

fBodyGyrostdZ

fBodyAccMagmean

fBodyAccMagstd

fBodyBodyAccJerkMagmean

fBodyBodyAccJerkMagstd

fBodyBodyGyroMagmean

fBodyBodyGyroMagstd

fBodyBodyGyroJerkMagmean

fBodyBodyGyroJerkMagstd
