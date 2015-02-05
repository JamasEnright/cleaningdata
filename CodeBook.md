Code Book for meandata.txt
--------------------------

### Variable Description

The following variables are in the file:

Classes ‘data.table’ and 'data.frame':	180 obs. of  68 variables:

subject                    : Subject ID, Subject ranges from 1-30

activity                   : Activity performed

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

tBodyAcc.mean...X          : mean of variable by subject and activity

tBodyAcc.mean...Y          : mean of variable by subject and activity

tBodyAcc.mean...Z          : mean of variable by subject and activity

tBodyAcc.std...X           : mean of variable by subject and activity

tBodyAcc.std...Y           : mean of variable by subject and activity

tBodyAcc.std...Z           : mean of variable by subject and activity

tGravityAcc.mean...X       : mean of variable by subject and activity

tGravityAcc.mean...Y       : mean of variable by subject and activity

tGravityAcc.mean...Z       : mean of variable by subject and activity

tGravityAcc.std...X        : mean of variable by subject and activity

tGravityAcc.std...Y        : mean of variable by subject and activity

tGravityAcc.std...Z        : mean of variable by subject and activity

tBodyAccJerk.mean...X      : mean of variable by subject and activity

tBodyAccJerk.mean...Y      : mean of variable by subject and activity

tBodyAccJerk.mean...Z      : mean of variable by subject and activity

tBodyAccJerk.std...X       : mean of variable by subject and activity

tBodyAccJerk.std...Y       : mean of variable by subject and activity

tBodyAccJerk.std...Z       : mean of variable by subject and activity

tBodyGyro.mean...X         : mean of variable by subject and activity

tBodyGyro.mean...Y         : mean of variable by subject and activity

tBodyGyro.mean...Z         : mean of variable by subject and activity

tBodyGyro.std...X          : mean of variable by subject and activity

tBodyGyro.std...Y          : mean of variable by subject and activity

tBodyGyro.std...Z          : mean of variable by subject and activity

tBodyGyroJerk.mean...X     : mean of variable by subject and activity

tBodyGyroJerk.mean...Y     : mean of variable by subject and activity

tBodyGyroJerk.mean...Z     : mean of variable by subject and activity

tBodyGyroJerk.std...X      : mean of variable by subject and activity

tBodyGyroJerk.std...Y      : mean of variable by subject and activity

tBodyGyroJerk.std...Z      : mean of variable by subject and activity

tBodyAccMag.mean..         : mean of variable by subject and activity

tBodyAccMag.std..          : mean of variable by subject and activity

tGravityAccMag.mean..      : mean of variable by subject and activity

tGravityAccMag.std..       : mean of variable by subject and activity

tBodyAccJerkMag.mean..     : mean of variable by subject and activity

tBodyAccJerkMag.std..      : mean of variable by subject and activity

tBodyGyroMag.mean..        : mean of variable by subject and activity

tBodyGyroMag.std..         : mean of variable by subject and activity

tBodyGyroJerkMag.mean..    : mean of variable by subject and activity

tBodyGyroJerkMag.std..     : mean of variable by subject and activity

fBodyAcc.mean...X          : mean of variable by subject and activity

fBodyAcc.mean...Y          : mean of variable by subject and activity

fBodyAcc.mean...Z          : mean of variable by subject and activity

fBodyAcc.std...X           : mean of variable by subject and activity

fBodyAcc.std...Y           : mean of variable by subject and activity

fBodyAcc.std...Z           : mean of variable by subject and activity

fBodyAccJerk.mean...X      : mean of variable by subject and activity

fBodyAccJerk.mean...Y      : mean of variable by subject and activity

fBodyAccJerk.mean...Z      : mean of variable by subject and activity

fBodyAccJerk.std...X       : mean of variable by subject and activity

fBodyAccJerk.std...Y       : mean of variable by subject and activity

fBodyAccJerk.std...Z       : mean of variable by subject and activity

fBodyGyro.mean...X         : mean of variable by subject and activity

fBodyGyro.mean...Y         : mean of variable by subject and activity

fBodyGyro.mean...Z         : mean of variable by subject and activity

fBodyGyro.std...X          : mean of variable by subject and activity

fBodyGyro.std...Y          : mean of variable by subject and activity

fBodyGyro.std...Z          : mean of variable by subject and activity

fBodyAccMag.mean..         : mean of variable by subject and activity

fBodyAccMag.std..          : mean of variable by subject and activity

fBodyBodyAccJerkMag.mean.. : mean of variable by subject and activity

fBodyBodyAccJerkMag.std..  : mean of variable by subject and activity

fBodyBodyGyroMag.mean..    : mean of variable by subject and activity

fBodyBodyGyroMag.std..     : mean of variable by subject and activity

fBodyBodyGyroJerkMag.mean..: mean of variable by subject and activity

fBodyBodyGyroJerkMag.std.. : mean of variable by subject and activity


These variables are from Human Activity Recognition Using Smartphones Dataset
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones



### Method of file creation

The files for train and test were read in. As they represent different observations, they were joined by stacking them.

The variable list (in features.txt) was read in. Variables with 'mean()' or 'std()' in their names were found, and the associated columns. These columns are the ones selected from the main data. The column names were also applied to the data.

The subject ids and activity labels were read in, and activity numbers relabeled (according to activity_levels.txt).

The full file was created by adding the columns of subject id, activities, and the main data.

The file was then summarised for each variable by mean, grouped by subject and activity.
