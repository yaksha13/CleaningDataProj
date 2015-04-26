## Getting and Cleaning Data Course Project

### Objective of this Project

The Project's objective was to take raw data collected from accelerometers from the Samsung Galaxy S smartphone by subjects and prepare a clean tidy data set 

### Contents

This project contains the following:
- README.md : General description of the project
- CodeBook.md: Describes the variables and measurements in the tidy data set
- run_analysis.R: Cleaning script for preparing the tidy dataset from the raw data


### Source of Raw Data
The initial data for the cleaning exercise was obtained from:
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
and 
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)


### Generated tidy data set using the run_analysis.R script
You can find the tidy data set uploaded here:
[https://s3.amazonaws.com/coursera-uploads/user-5148c4bb98a5b56203474727/973500/asst-3/53114f10ebec11e4a9166b9aa399b77f.txt](https://s3.amazonaws.com/coursera-uploads/user-5148c4bb98a5b56203474727/973500/asst-3/53114f10ebec11e4a9166b9aa399b77f.txt)

Descriptions of the observations and the measurements in the tidy data set have been described in CodeBook.md

### What has been considered to be a "tidy dataset"

The cleaning script and resultant dataset (linked above) follows the following tidy data set principles:
- Each variable measured is in ONE column
- Each observation for that variable is in a different row
- There is only ONE table for each 'kind' of variable

### Description of the cleaning script: run_analysis.R
The script performs the following major functions:
- Take data in the train and test sets (for subjects, activity and features) and merge them into a master data set
- Provide the appropriate labels that are descriptive for the variable names. Here the names provided in features.txt of the Raw data was used
- Create a smaller dataset that only has the mean() and std() feature measurements for the raw data
- After creating the smaller dataset, replace the factor style values for the Activity variable with more descriptive alternatives
	- Again, activity names provided in activity_labels.txt of the Raw Data was used
- Group the multiple observations (and feature measurements) for each subject and each activity, substituting it with the average over all those measurements
- Finally, melt the "wide"-style tidy data set into a "narrow-tall" style  dataset by combining all the different feature measurements (now averaged over multiple subject/ activity observations) into a single "feature" column and its corresponding measurement value in "featureValue" column
- write the final tidy data out to "tidydataset.txt"
