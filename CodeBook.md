Code Book
=========

# Source Files

The source files, which are relevant for this project, contain the data, collected in the train and test groups:

* train/X_train.txt
* test/X_test.txt

In the both groups the same measurements were done and recorded in 561 varibles, described here:

* features_info.txt
* features.R

For the transformation of the given data only mean and standard deviation variables were used, which were picked up by their names, containig *mean()* and *std()* substrings respectively.

Activity data is located in the following files:

* train/y_train.txt
* test/y_test.txt

In the output file activity codes were replaced with more descriptive names, according to the data in **activity_labels.txt** file.

Participants of the experiment were encoded in the following files:

* train/subject_train.txt
* test/subject_test.txt

# Output File

In the output file these codes are presented with *train_subject* and *test_subject* suffixes respectively.

After running the transformation script, as it has been described in the Readme file, an aggregated information is presented as a script output stream and as a file **sample-aggregated.txt** with the identical data, consisting of a header line with the field names and 35 data lines with space separated fields.

The data has been aggregated by activity kinds and participating subjects by means of R function *aggregate*, in which *mean()* function were used for the in group calculations.

As the result the following variables are saved:

- "Group.1" -- activity art
- "Group.2" -- subject ID
- "tBodyAcc.mean...X" -- average tBodyAcc-mean()-X
- "tBodyAcc.mean...Y" -- average tBodyAcc-mean()-Y
- "tBodyAcc.mean...Z" --  average tBodyAcc-mean()-Z
- "tBodyAcc.std...X" -- average tBodyAcc-std()-X
- "tBodyAcc.std...Y" -- average tBodyAcc-std()-Y
- "tBodyAcc.std...Z" -- average tBodyAcc-std()-Z
- "tGravityAcc.mean...X" -- average tGravityAcc-mean()-X
- "tGravityAcc.mean...Y" -- average tGravityAcc-mean()-Y
- "tGravityAcc.mean...Z" -- average tGravityAcc-mean()-Z
- "tGravityAcc.std...X" -- average tGravityAcc-std()-X
- "tGravityAcc.std...Y"  -- average tGravityAcc-std()-Y
- "tGravityAcc.std...Z"  -- average tGravityAcc-std()-Z
- "tBodyAccJerk.mean...X"  -- average tBodyAccJerk-mean()-X
- "tBodyAccJerk.mean...Y"  -- average tBodyAccJerk-mean()-Y
- "tBodyAccJerk.mean...Z"  -- average tBodyAccJerk-mean()-Z
- "tBodyAccJerk.std...X"  -- average tBodyAccJerk-std()-X
- "tBodyAccJerk.std...Y"  -- average tBodyAccJerk-std()-Y
- "tBodyAccJerk.std...Z"  -- average tBodyAccJerk-std()-Z
- "tBodyGyro.mean...X"  -- average tBodyGyro-mean()-X
- "tBodyGyro.mean...Y"  -- average tBodyGyro-mean()-Y
- "tBodyGyro.mean...Z"  -- average tBodyGyro-mean()-Z
- "tBodyGyro.std...X"  -- average tBodyGyro-std()-X
- "tBodyGyro.std...Y"   -- average tBodyGyro-std()-Y
- "tBodyGyro.std...Z"  -- average tBodyGyro-std()-Z
- "tBodyGyroJerk.mean...X"  -- average tBodyGyroJerk-mean()-X
- "tBodyGyroJerk.mean...Y"  -- average tBodyGyroJerk-mean()-Y
- "tBodyGyroJerk.mean...Z"  -- average tBodyGyroJerk-mean()-Z
- "tBodyGyroJerk.std...X"  -- average tBodyGyroJerk-std()-X
- "tBodyGyroJerk.std...Y"  -- average tBodyGyroJerk-std()-Y
- "tBodyGyroJerk.std...Z"  -- average tBodyGyroJerk-std()-Z
- "tBodyAccMag.mean.."  -- average tBodyAccMag-mean()
- "tBodyAccMag.std.."  -- average tBodyAccMag-std()
- "tGravityAccMag.mean.."  -- average tGravityAccMag-mean()
- "tGravityAccMag.std.."  -- average tGravityAccMag-std()
- "tBodyAccJerkMag.mean.."  -- average tBodyAccJerkMag-mean()
- "tBodyAccJerkMag.std.."  -- average tBodyAccJerkMag-std()
- "tBodyGyroMag.mean.."  -- average tBodyGyroMag-mean()
- "tBodyGyroMag.std.."  -- average tBodyGyroMag-std()
- "tBodyGyroJerkMag.mean.."  -- average tBodyGyroJerkMag-mean()
- "tBodyGyroJerkMag.std.."  -- average tBodyGyroJerkMag-std()
- "fBodyAcc.mean...X"  -- average fBodyAcc-mean()-X
- "fBodyAcc.mean...Y"  -- average fBodyAcc-mean()-Y
- "fBodyAcc.mean...Z"  -- average fBodyAcc-mean()-Z
- "fBodyAcc.std...X"  -- average fBodyAcc-std()-X
- "fBodyAcc.std...Y"  -- average fBodyAcc-std()-Y
- "fBodyAcc.std...Z"  -- average fBodyAcc-std()-Z
- "fBodyAccJerk.mean...X"  -- average fBodyAccJerk-mean()-X
- "fBodyAccJerk.mean...Y"  -- average fBodyAccJerk-mean()-Y
- "fBodyAccJerk.mean...Z"  -- average fBodyAccJerk-mean()-Z
- "fBodyAccJerk.std...X"  -- average fBodyAccJerk-std()-X
- "fBodyAccJerk.std...Y"  -- average fBodyAccJerk-std()-Y
- "fBodyAccJerk.std...Z"  -- average fBodyAccJerk-std()-Z
- "fBodyGyro.mean...X"  -- average fBodyGyro-mean()-X
- "fBodyGyro.mean...Y"  -- average fBodyGyro-mean()-Y
- "fBodyGyro.mean...Z"  -- average fBodyGyro-mean()-Z
- "fBodyGyro.std...X"  -- average fBodyGyro-std()-X
- "fBodyGyro.std...Y"  -- average fBodyGyro-std()-Y
- "fBodyGyro.std...Z"  -- average fBodyGyro-std()-Z
- "fBodyAccMag.mean.."  -- average fBodyAccMag-mean()
- "fBodyAccMag.std.."  -- average fBodyAccMag-std()
- "fBodyBodyAccJerkMag.mean.."  -- average fBodyBodyAccJerkMag-mean()
- "fBodyBodyAccJerkMag.std.."  -- average fBodyBodyAccJerkMag-std()
- "fBodyBodyGyroMag.mean.."  -- average fBodyBodyGyroMag-mean()
- "fBodyBodyGyroMag.std.."  -- average fBodyBodyGyroMag-std()
- "fBodyBodyGyroJerkMag.mean.."  -- average fBodyBodyGyroJerkMag-mean()
- "fBodyBodyGyroJerkMag.std.." -- average fBodyBodyGyroJerkMag-std()

