### Background

the original data used for creating this dataset has been sourced from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-X
* tBodyAcc-Y
* tBodyAcc-Z
* tGravityAcc-X
* tGravityAcc-Y
* tGravityAcc-Z
* tBodyAccJerk-X
* tBodyAccJerk-Y
* tBodyAccJerk-Z
* tBodyGyro-X
* tBodyGyro-Y
* tBodyGyro-Z
* tBodyGyroJerk-X
* tBodyGyroJerk-Y
* tBodyGyroJerk-Z
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-X
* fBodyAcc-Y
* fBodyAcc-Z
* fBodyAccJerk-X
* fBodyAccJerk-Y
* fBodyAccJerk-Z
* fBodyGyro-X
* fBodyGyro-Y
* fBodyGyro-Z
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

There were several statistical relevant variables that were estimated from these signals such as mean, standard deviation, median absolute deviation etc. However for the interest of this exercise we focussed only on mean and standard deviation variables. 

In addition to this, there are two dimension variables which are "Subject" and "Activity"

Subject contains numeric value from 1 to 30 indicating the volunteer on whom these tests were subjected on

Activity contains the label for the kind of activity that was being performed by the subject while these observations were being recorded. There are altogether 6 labels which are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING


### Detailed Variable Descriptions

* subject - contains numeric value from 1 to 30 indicating the volunteer on whom these tests were subjected on
* activity - contains the label for the kind of activity that was being performed by the subject while these observations were being recorded. There are altogether 6 labels which are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
* avg_tBodyAcc-mean-X - This is a numeric value which contains the average of the mean of the signal tBodyAcc measured on X axis for the corresponding subject and activity.
* avg_tBodyAcc-mean-Y - This is a numeric value which contains the average of the mean of the signal tBodyAcc measured on Y axis for the corresponding subject and activity.
* avg_tBodyAcc-mean-Z - This is a numeric value which contains the average of the mean of the signal tBodyAcc measured on Z axis for the corresponding subject and activity.
* avg_tBodyAcc-std-X - This is a numeric value which contains the average of the std of the signal tBodyAcc measured on X axis for the corresponding subject and activity.
* avg_tBodyAcc-std-Y - This is a numeric value which contains the average of the std of the signal tBodyAcc measured on Y axis for the corresponding subject and activity.
* avg_tBodyAcc-std-Z - This is a numeric value which contains the average of the std of the signal tBodyAcc measured on Z axis for the corresponding subject and activity.
* avg_tGravityAcc-mean-X - This is a numeric value which contains the average of the mean of the signal tGravityAcc measured on X axis for the corresponding subject and activity.
* avg_tGravityAcc-mean-Y - This is a numeric value which contains the average of the mean of the signal tGravityAcc measured on Y axis for the corresponding subject and activity.
* avg_tGravityAcc-mean-Z - This is a numeric value which contains the average of the mean of the signal tGravityAcc measured on Z axis for the corresponding subject and activity.
* avg_tGravityAcc-std-X - This is a numeric value which contains the average of the std of the signal tGravityAcc measured on X axis for the corresponding subject and activity.
* avg_tGravityAcc-std-Y - This is a numeric value which contains the average of the std of the signal tGravityAcc measured on Y axis for the corresponding subject and activity.
* avg_tGravityAcc-std-Z - This is a numeric value which contains the average of the std of the signal tGravityAcc measured on Z axis for the corresponding subject and activity.
* avg_tBodyAccJerk-mean-X - This is a numeric value which contains the average of the mean of the signal tBodyAccJerk measured on X axis for the corresponding subject and activity.
* avg_tBodyAccJerk-mean-Y - This is a numeric value which contains the average of the mean of the signal tBodyAccJerk measured on Y axis for the corresponding subject and activity.
* avg_tBodyAccJerk-mean-Z - This is a numeric value which contains the average of the mean of the signal tBodyAccJerk measured on Z axis for the corresponding subject and activity.
* avg_tBodyAccJerk-std-X - This is a numeric value which contains the average of the std of the signal tBodyAccJerk measured on X axis for the corresponding subject and activity.
* avg_tBodyAccJerk-std-Y - This is a numeric value which contains the average of the std of the signal tBodyAccJerk measured on Y axis for the corresponding subject and activity.
* avg_tBodyAccJerk-std-Z - This is a numeric value which contains the average of the std of the signal tBodyAccJerk measured on Z axis for the corresponding subject and activity.
* avg_tBodyGyro-mean-X - This is a numeric value which contains the average of the mean of the signal tBodyGyro measured on X axis for the corresponding subject and activity.
* avg_tBodyGyro-mean-Y - This is a numeric value which contains the average of the mean of the signal tBodyGyro measured on Y axis for the corresponding subject and activity.
* avg_tBodyGyro-mean-Z - This is a numeric value which contains the average of the mean of the signal tBodyGyro measured on Z axis for the corresponding subject and activity.
* avg_tBodyGyro-std-X - This is a numeric value which contains the average of the std of the signal tBodyGyro measured on X axis for the corresponding subject and activity.
* avg_tBodyGyro-std-Y - This is a numeric value which contains the average of the std of the signal tBodyGyro measured on Y axis for the corresponding subject and activity.
* avg_tBodyGyro-std-Z - This is a numeric value which contains the average of the std of the signal tBodyGyro measured on Z axis for the corresponding subject and activity.
* avg_tBodyGyroJerk-mean-X - This is a numeric value which contains the average of the mean of the signal tBodyGyroJerk measured on X axis for the corresponding subject and activity.
* avg_tBodyGyroJerk-mean-Y - This is a numeric value which contains the average of the mean of the signal tBodyGyroJerk measured on Y axis for the corresponding subject and activity.
* avg_tBodyGyroJerk-mean-Z - This is a numeric value which contains the average of the mean of the signal tBodyGyroJerk measured on Z axis for the corresponding subject and activity.
* avg_tBodyGyroJerk-std-X - This is a numeric value which contains the average of the std of the signal tBodyGyroJerk measured on X axis for the corresponding subject and activity.
* avg_tBodyGyroJerk-std-Y - This is a numeric value which contains the average of the std of the signal tBodyGyroJerk measured on Y axis for the corresponding subject and activity.
* avg_tBodyGyroJerk-std-Z - This is a numeric value which contains the average of the std of the signal tBodyGyroJerk measured on Z axis for the corresponding subject and activity.
* avg_tBodyAccMag-mean - This is a numeric value which contains the average of the mean of the signal tBodyAccMag for the corresponding subject and activity.
* avg_tBodyAccMag-std - This is a numeric value which contains the average of the mean of the signal tBodyAccMag for the corresponding subject and activity.
* avg_tGravityAccMag-mean - This is a numeric value which contains the average of the mean of the signal tGravityAccMag for the corresponding subject and activity.
* avg_tGravityAccMag-std - This is a numeric value which contains the average of the mean of the signal tGravityAccMag for the corresponding subject and activity.
* avg_tBodyAccJerkMag-mean - This is a numeric value which contains the average of the mean of the signal tBodyAccJerkMag for the corresponding subject and activity.
* avg_tBodyAccJerkMag-std - This is a numeric value which contains the average of the mean of the signal tBodyAccJerkMag for the corresponding subject and activity.
* avg_tBodyGyroMag-mean - This is a numeric value which contains the average of the mean of the signal tBodyGyroMag for the corresponding subject and activity.
* avg_tBodyGyroMag-std - This is a numeric value which contains the average of the mean of the signal tBodyGyroMag for the corresponding subject and activity.
* avg_tBodyGyroJerkMag-mean - This is a numeric value which contains the average of the mean of the signal tBodyGyroJerkMag for the corresponding subject and activity.
* avg_tBodyGyroJerkMag-std - This is a numeric value which contains the average of the mean of the signal tBodyGyroJerkMag for the corresponding subject and activity.
* avg_fBodyAcc-mean-X - This is a numeric value which contains the average of the mean of the signal fBodyAcc measured on X axis for the corresponding subject and activity.
* avg_fBodyAcc-mean-Y - This is a numeric value which contains the average of the mean of the signal fBodyAcc measured on Y axis for the corresponding subject and activity.
* avg_fBodyAcc-mean-Z - This is a numeric value which contains the average of the mean of the signal fBodyAcc measured on Z axis for the corresponding subject and activity.
* avg_fBodyAcc-std-X - This is a numeric value which contains the average of the std of the signal fBodyAcc measured on X axis for the corresponding subject and activity.
* avg_fBodyAcc-std-Y - This is a numeric value which contains the average of the std of the signal fBodyAcc measured on Y axis for the corresponding subject and activity.
* avg_fBodyAcc-std-Z - This is a numeric value which contains the average of the std of the signal fBodyAcc measured on Z axis for the corresponding subject and activity.
* avg_fBodyAccJerk-mean-X - This is a numeric value which contains the average of the mean of the signal fBodyAccJerk measured on X axis for the corresponding subject and activity.
* avg_fBodyAccJerk-mean-Y - This is a numeric value which contains the average of the mean of the signal fBodyAccJerk measured on Y axis for the corresponding subject and activity.
* avg_fBodyAccJerk-mean-Z - This is a numeric value which contains the average of the mean of the signal fBodyAccJerk measured on Z axis for the corresponding subject and activity.
* avg_fBodyAccJerk-std-X - This is a numeric value which contains the average of the std of the signal fBodyAccJerk measured on X axis for the corresponding subject and activity.
* avg_fBodyAccJerk-std-Y - This is a numeric value which contains the average of the std of the signal fBodyAccJerk measured on Y axis for the corresponding subject and activity.
* avg_fBodyAccJerk-std-Z - This is a numeric value which contains the average of the std of the signal fBodyAccJerk measured on Z axis for the corresponding subject and activity.
* avg_fBodyGyro-mean-X - This is a numeric value which contains the average of the mean of the signal fBodyGyro measured on X axis for the corresponding subject and activity.
* avg_fBodyGyro-mean-Y - This is a numeric value which contains the average of the mean of the signal fBodyGyro measured on Y axis for the corresponding subject and activity.
* avg_fBodyGyro-mean-Z - This is a numeric value which contains the average of the mean of the signal fBodyGyro measured on Z axis for the corresponding subject and activity.
* avg_fBodyGyro-std-X - This is a numeric value which contains the average of the std of the signal fBodyGyro measured on X axis for the corresponding subject and activity.
* avg_fBodyGyro-std-Y - This is a numeric value which contains the average of the std of the signal fBodyGyro measured on Y axis for the corresponding subject and activity.
* avg_fBodyGyro-std-Z - This is a numeric value which contains the average of the std of the signal fBodyGyro measured on Z axis for the corresponding subject and activity.
* avg_fBodyAccMag-mean - This is a numeric value which contains the average of the mean of the signal fBodyAccMag for the corresponding subject and activity.
* avg_fBodyAccMag-std - This is a numeric value which contains the average of the mean of the signal fBodyAccMag for the corresponding subject and activity.
* avg_fBodyBodyAccJerkMag-mean - This is a numeric value which contains the average of the mean of the signal fBodyBodyAccJerkMag for the corresponding subject and activity.
* avg_fBodyBodyAccJerkMag-std - This is a numeric value which contains the average of the mean of the signal fBodyBodyAccJerkMag for the corresponding subject and activity.
* avg_fBodyBodyGyroMag-mean - This is a numeric value which contains the average of the mean of the signal fBodyBodyGyroMag for the corresponding subject and activity.
* avg_fBodyBodyGyroMag-std - This is a numeric value which contains the average of the mean of the signal fBodyBodyGyroMag for the corresponding subject and activity.
* avg_fBodyBodyGyroJerkMag-mean - This is a numeric value which contains the average of the mean of the signal fBodyBodyGyroJerkMag for the corresponding subject and activity.
* avg_fBodyBodyGyroJerkMag-std - This is a numeric value which contains the average of the mean of the signal fBodyBodyGyroJerkMag for the corresponding subject and activity.