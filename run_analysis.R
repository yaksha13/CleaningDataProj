# run_analysis.R
# Assume that the UCI HAR Dataset folder is in the current working directory
# 1. Merge training & test sets to create one data set
## Read in the data from the train and test data files
library(dplyr)
library(reshape2)

xtrain<-read.table("UCI HAR Dataset/train/X_train.txt")
ytrain<- read.table("UCI HAR Dataset/train/y_train.txt")
subtrain<-read.table("UCI HAR Dataset/train/subject_train.txt")

xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("UCI HAR Dataset/test/y_test.txt")
subtest <- read.table("UCI HAR Dataset/test/subject_test.txt")

# labels has the descriptive names for mesurements in xtrain, xtest
labels <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = F)
# activity has the descriptive name for activity in ytrain, ytest
activity <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = F)

dftest <- cbind(subtest,ytest,xtest)

dftrain <- cbind(subtrain, ytrain, xtrain)




# Check if there are any subjects both in the training and test sets
# We see that any(subtrain %in% subtest) > FALSE. So we can be sure they are 
# mutually exclusive

masterData <- rbind(dftest,dftrain)
# Appropriately label the data set with descriptive variable names
names(masterData)<- c("Subject","Activity",labels[,2])

rm(dftest,dftrain, subtest, subtrain, xtest, xtrain, ytest, ytrain)


# 2. Extracts only measurements on mean & std dev for each measurement
# Excludes GravityMean() as that is considered as different from just mean()
ordermean <- grep("mean()",labels[,2])
orderstd <- grep ("std()", labels[,2])
newData <- masterData[c(1,2,ordermean+2,orderstd+2)]

# 3. Use descriptive activity names to name the activities in the data set
for (i in 1: nrow(newData)){
    newData[i,2]<- activity[newData[i,2],2]
}

# 5. From 4, create a second tidy data set with average of each variable
##   for each activity and each subject.