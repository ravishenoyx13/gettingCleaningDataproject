
#Please set your working directory in the variable wd here
wd <- "D:\\selfLearning\\Coursera\\DataScienceSpecialization\\3_GettingAndCleaningData\\project"
setwd(wd)

############################################ Step 0 - Load all the files


# load the test data sets - X, Y and Subject Data
X_test <- read.table(file=".\\UCI HAR Dataset\\test\\X_test.txt",
                   colClasses="numeric", header=FALSE)

y_test <- read.table(file=".\\UCI HAR Dataset\\test\\y_test.txt", col.names=c("activity"), 
                     colClasses="character", stringsAsFactors=FALSE, header=FALSE)

subject_test <- read.table(file=".\\UCI HAR Dataset\\test\\subject_test.txt", 
                           col.names=c("subject"), colClasses="character", 
                           stringsAsFactors=FALSE, header=FALSE)



# load the train data sets - X, Y and Subject Data
X_train <- read.table(file=".\\UCI HAR Dataset\\train\\X_train.txt", 
                     colClasses="numeric", header=FALSE)

y_train <- read.table(file=".\\UCI HAR Dataset\\train\\y_train.txt", col.names=c("activity"), 
                     colClasses="character", stringsAsFactors=FALSE, header=FALSE)

subject_train <- read.table(file=".\\UCI HAR Dataset\\train\\subject_train.txt", 
                           col.names=c("subject"), colClasses="character", 
                           stringsAsFactors=FALSE, header=FALSE)

######################## Step 1 - Merges the training and the test sets to create one data set.

### Merge all the Train Data

all_train <- cbind(X_train, y_train, subject_train)

### Merge all the Test Data

all_test <- cbind(X_test, y_test, subject_test)

### Merge the Train and Test Data

fulldata <- rbind(all_train, all_test)

######################## Step 2 - Extracts only the measurements on the mean and 
#############################      standard deviation for each measurement.

## By referring to the features.txt, i have identified the column positions of variables that 
## have mean and std, with these positions i am forming a vector and will use the same
## to filter out only the required variables

reqdColumns <- c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 227:228, 240:241, 253:254, 266:271, 
                  345:350, 424:429, 503:504, 516:517, 529:530, 542:543, 562, 563)

fulldata <- fulldata[,reqdColumns]

######################## Step 3 - Uses descriptive activity names to name the activities 
#############################      in the data set.

fulldata$activity <- ifelse(fulldata$activity == 1, "WALKING", 
                            ifelse(fulldata$activity == 2, "WALKING_UPSTAIRS",
                                   ifelse(fulldata$activity == 3, "WALKING_DOWNSTAIRS",
                                          ifelse(fulldata$activity == 4, "SITTING",
                                                 ifelse(fulldata$activity == 5, "STANDING",
                                                        ifelse(fulldata$activity == 6, "LAYING",""))))))


######################## Step 4 - Appropriately labels the data set with descriptive variable names

## By referring to the features.txt, i have identified the column names of variables that 
## have mean and std, with these names i am forming a vector and will use the same
## to label the variables

varLabels <- c("tBodyAcc-mean-X", "tBodyAcc-mean-Y", "tBodyAcc-mean-Z", "tBodyAcc-std-X",
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

## as the last 2 variables are already names, we will name only the first 66 variables from the 
## X set
names(fulldata)[1:66] <- varLabels

######################## Step 5 - From the data set in step 4, creates a second, 
#########################    independent tidy data set with the average of each variable for 
#############################  each activity and each subject

# We will use the reshape2 library and use functions melt and dcast to achieve this

install.packages("reshape2")
library(reshape2)

#we will melt the data with dimensions being subject and activity and the remainder vars as measures

datamelt <- melt(fulldata, id=c("subject", "activity"), measure.vars= varLabels)
finaldata <- dcast(datamelt, subject+activity~variable, mean)


# lets write this data back into the working directory

write.table(finaldata, file="finaldata.txt", row.names=FALSE)
