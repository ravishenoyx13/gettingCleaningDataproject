### Introduction

This README file details the set of steps that i have taken inorder to execute the course project
for the Getting and Cleaning data course. In this markdown i will explain each step carried by the
R attached script.

### Assumptions

Before I begin, i would like to laydown certain assumptions

* The required set of data file (getdata-projectfiles-UCI HAR Dataset.rar) has been downloaded and unzipped in your working directory
* All the 3 training data sets (X_train, y_train, subject_train) is present in the folder .\UCI HAR Dataset\train inside your working directory
* All the 3 test data sets (X_test, y_test, subject_test) is present in the folder .\UCI HAR Dataset\test inside your working directory

### Set your working directory

At the very first line of the script you need to set your working directory, Please update the first line accordingly


`wd <- "D:\\selfLearning\\Coursera\\DataScienceSpecialization\\3_GettingAndCleaningData\\project"
setwd(wd)`

### Step 0 - Load all the files

Before I begin, I load all the 3 training files and the 3 test files into R.


`X_test <- read.table(file=".\\UCI HAR Dataset\\test\\X_test.txt",
                   colClasses="numeric", header=FALSE)`

`y_test <- read.table(file=".\\UCI HAR Dataset\\test\\y_test.txt", col.names=c("activity"), 
                     colClasses="character", stringsAsFactors=FALSE, header=FALSE)`

`subject_test <- read.table(file=".\\UCI HAR Dataset\\test\\subject_test.txt", 
                           col.names=c("subject"), colClasses="character", 
                           stringsAsFactors=FALSE, header=FALSE)`


`X_train <- read.table(file=".\\UCI HAR Dataset\\train\\X_train.txt", 
                     colClasses="numeric", header=FALSE)`

`y_train <- read.table(file=".\\UCI HAR Dataset\\train\\y_train.txt", col.names=c("activity"), 
                     colClasses="character", stringsAsFactors=FALSE, header=FALSE)`

`subject_train <- read.table(file=".\\UCI HAR Dataset\\train\\subject_train.txt", 
                           col.names=c("subject"), colClasses="character", 
                           stringsAsFactors=FALSE, header=FALSE)`
                           
### Step 1 - Merges the training and the test sets to create one data set.

Now that all the files have been loaded, I merge them. First I merge the 3 test set and 3 train sets individually using cbind
then I merge the two resultant sets using rbind

The X_train has 561 Variables, the subject_train and y_train has one variable each. All 3 of them have 7352 observations. So when
I cbind them I get 1 data set that has 7352 observations and 563 variables. I store this in a variable called all_train

`all_train <- cbind(X_train, y_train, subject_train)`

The X_test has 561 Variables, the subject_test and y_test has one variable each. All 3 of them have 2947 observations. So when
I cbind them I get 1 data set that has 2947 observations and 563 variables. I store this in a variable called all_test.

`all_test <- cbind(X_test, y_test, subject_test)`

I then append all_test to all_train. Each of them have 563 variables. all_test has 2947 observations and all_train has 7352 
observations. I append them using rbind and store the result in variable called fulldata. this will have 10299 observations and 
563 variables

`all_test <- fulldata <- rbind(all_train, all_test)`

### Step 2 - Extracts only the measurements on the mean and standard deviation for each measurement.

By referring to the features.txt, i have identified the column positions of variables that have mean and std, with these positions 
i am forming a vector and will use the same to filter out only the required variables

I will then pull out only those variables from fulldata and discard the remainders

`reqdColumns <- c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 227:228, 240:241, 253:254, 266:271, 
                  345:350, 424:429, 503:504, 516:517, 529:530, 542:543, 562, 563)`

`fulldata <- fulldata[,reqdColumns]`

### Step 3 - Uses descriptive activity names to name the activities in the data set.

I referred to the activity labels file to understand the activity labels of each code from 1 to 6. Using this I modify the activity variable
from the numeric code 1:6 to WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING respectively

`fulldata$activity <- ifelse(fulldata$activity == 1, "WALKING", 
                            ifelse(fulldata$activity == 2, "WALKING_UPSTAIRS",
                                   ifelse(fulldata$activity == 3, "WALKING_DOWNSTAIRS",
                                          ifelse(fulldata$activity == 4, "SITTING",
                                                 ifelse(fulldata$activity == 5, "STANDING",
                                                        ifelse(fulldata$activity == 6, "LAYING",""))))))
`
                                                        
### Step 4 - Appropriately labels the data set with descriptive variable names

Again I referred to the features.txt file to identify the labels of each of the variables that represents mean and std. With this i first
form a vector and then assign it to the names of the fulldata

`varLabels <- c("tBodyAcc-mean-X", "tBodyAcc-mean-Y", "tBodyAcc-mean-Z", "tBodyAcc-std-X",
                   "tBodyAcc-std-Y", "tBodyAcc-std-Z", "tGravityAcc-mean-X", "tGravityAcc-mean-Y",
                   "tGravityAcc-mean-Z", "tGravityAcc-std-X", "tGravityAcc-std-Y", "tGravityAcc-std-Z",
                   "tBodyAccJerk-mean-X", "tBodyAccJerk-mean-Y", "tBodyAccJerk-mean-Z", "tBodyAccJerk-std-X",
                   "tBodyAccJerk-std-Y", "tBodyAccJerk-std-Z", "tBodyGyro-mean-X", "tBodyGyro-mean-Y",
                   "tBodyGyro-mean-Z", "tBodyGyro-std-X", "tBodyGyro-std-Y", "tBodyGyro-std-Z",
                   "tBodyGyroJerk-mean-X", "tBodyGyroJerk-mean-Y", "tBodyGyroJerk-mean-Z", "tBodyGyroJerk-std-X",
                   "tBodyGyroJerk-std-Y", "tBodyGyroJerk-std-Z", "tBodyAccMag-mean", "tBodyAccMag-std",
                   "tGravityAccMag-mean", "tGravityAccMag-std", "tBodyAccJerkMag-mean", "tBodyAccJerkMag-std",
                   "tBodyGyroMag-mean", "tBodyGyroMag-std", "tBodyGyroJerkMag-mean", "tBodyGyroJerkMag-std",
                   "fBodyAcc-mean-X", "fBodyAcc-mean-Y", "fBodyAcc-mean-Z", "fBodyAcc-std-X",
                   "fBodyAcc-std-Y", "fBodyAcc-std-Z", "fBodyAccJerk-mean-X", "fBodyAccJerk-mean-Y",
                   "fBodyAccJerk-mean-Z", "fBodyAccJerk-std-X", "fBodyAccJerk-std-Y", "fBodyAccJerk-std-Z",
                   "fBodyGyro-mean-X", "fBodyGyro-mean-Y", "fBodyGyro-mean-Z", "fBodyGyro-std-X",
                   "fBodyGyro-std-Y", "fBodyGyro-std-Z", "fBodyAccMag-mean", "fBodyAccMag-std",
                   "fBodyBodyAccJerkMag-mean", "fBodyBodyAccJerkMag-std", "fBodyBodyGyroMag-mean", "fBodyBodyGyroMag-std", 
                   "fBodyBodyGyroJerkMag-mean", "fBodyBodyGyroJerkMag-std")
`
                   
As the last 2 variables are already appropriately named (subject and activity). I will use the varLabels vector to name
the first 66 variables

`names(fulldata)[1:66] <- varLabels`

### Step 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

To do this I used the reshape2 package and used the function melt and dcast to arrive at the final data set

first I will install the package and import the library

`install.packages("reshape2")`
`library(reshape2)`

Now I will melt the data with dimensions being subject and activity and the remainder vars as measures

`datamelt <- melt(fulldata, id=c("subject", "activity"), measure.vars= varLabels)`
`finaldata <- dcast(datamelt, subject+activity~variable, mean)`

Now that the final data is arrived at, I will now write it back into the working directory

`write.table(finaldata, file="finaldata.txt", row.names=FALSE)`

Thank you.