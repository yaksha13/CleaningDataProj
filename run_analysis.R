
# Script assumes that the UCI HAR Dataset folder is in the current working directory

library(data.table)
library(reshape2)

# Merge training & test sets to create one data set

## Read in the data from the train and test data files

xtrain<-read.table("UCI HAR Dataset/train/X_train.txt")
ytrain<- read.table("UCI HAR Dataset/train/y_train.txt")
subtrain<-read.table("UCI HAR Dataset/train/subject_train.txt")

xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("UCI HAR Dataset/test/y_test.txt")
subtest <- read.table("UCI HAR Dataset/test/subject_test.txt")

## labels has the descriptive names for mesurements in xtrain, xtest
labels <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = F)
## activity has the descriptive name for activity in ytrain, ytest
activity <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = F)

dftest <- cbind(subtest,ytest,xtest)
dftrain <- cbind(subtrain, ytrain, xtrain)


## Check if there are any subjects both in the training and test sets
## We see that any(subtrain %in% subtest) > FALSE. So we can be sure they are 
## mutually exclusive

## Bind the training and test sets of data as rows
masterData <- rbind(dftest,dftrain)

## Appropriately label the data set with descriptive variable names
names(masterData)<- c("Subject","Activity",labels[,2])

## Cleaning out data objects not needed
rm(dftest,dftrain, subtest, subtrain, xtest, xtrain, ytest, ytrain)


# Extracts only measurements on mean & std dev for each measurement
	## Excludes GravityMean() as that is considered as different from just mean()

ordermean <- grep("mean()",labels[,2])
orderstd <- grep ("std()", labels[,2])
newData <- masterData[c(1,2,ordermean+2,orderstd+2)]
## Adds +2 to the index while subsetting to account for the "Subject" and 
## "Activity" columns

# Use descriptive activity names to name the activities in the data set
for (i in 1: nrow(newData)){
    newData[i,2]<- activity[newData[i,2],2]
}

# Create a second tidy data set with average of each variable
#   for each activity and each subject.

## We assign create the tidy data as a data.table
newData1 <- data.table(newData)
tidyData <- data.table()

## Loop over the data for each of the 30 subjects, 
## Subset the data for that subject,
## Calculate the averages by activity for each subject and,
## Iteratively bind it to the tidyData data.table

for (i in 1:30){
    tempData<- newData1[newData1$Subject == i]
    tidyData<- rbind(tidyData,tempData[,lapply(.SD, mean), by =  Activity])
}

## remove unneeded objects
rm(newData1,tempData)

    ## After the above transoformation each of the variables represents 
    ## averaged values of the measurements over several observations for each 
    ## Subject and for each Activity performed by him/ her

# Now the dataset is essentially 180 observations of 81 variables
# While this is tidy as each column represents a unique type of measurement
# In order to better document the data set structure we can combine all features 
# into a single column using the melt function

## Melt with Subject and Activity as ids and rest as measures
tidyData <- melt(tidyData, id = c("Subject","Activity"))

## Rename the columns for better readability
setnames(tidyData,c("subject", "activity","feature","featureValue"))

## Write the tidy data set to a txt file named "tidydataset.txt"
write.table(tidyData,file = "tidydataset.txt", row.name = FALSE)

