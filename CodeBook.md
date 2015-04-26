---
title: "Codebook for tidy dataset"
author: "Akshay Rao"
date: "April 26, 2015"

---

## This codebook describes the variables and data in the tidy data set as well as the script (run_analysis.R) used for cleaning the data

### Source of Raw Data and Study Design
The initial data for the cleaning exercise was obtained from:
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
and 
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The above links also contain detailed information on the Study design followed for collection of Raw Data

 
### Guide to create the tidy data file

In order to create the tidy data set on your local machine
- Download this repo in your local machine and set it as your working directory
- Download the raw data from this link:[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and unzip the file
- Place the raw data folder "UCI HAR Dataset" inside the repo folder (which is set as your working directory)
- Run the run_analysis.R script and wait (processing the data may take a minute or so)
- You should now have a tidy data file ("tidydataset.txt") within the same directory

A sample of the tidy data set created using the `run_analysis.R` script is available at [https://s3.amazonaws.com/coursera-uploads/user-5148c4bb98a5b56203474727/973500/asst-3/53114f10ebec11e4a9166b9aa399b77f.txt](https://s3.amazonaws.com/coursera-uploads/user-5148c4bb98a5b56203474727/973500/asst-3/53114f10ebec11e4a9166b9aa399b77f.txt)

##Description of the variables in the tinydataset.txt file
 
tidydataset has 14220 observations of 4 variables
Variables present in the dataset: `subject`, `activity`, `feature`, `featureValue`

### subject
Class: integer
Unique values/levels: 1:30
Unit of measurement: None
Description: id of the Subject for whom the the activity, and feature observations have been recorded

### activity
Class: factor
Unique values/levels: 6 levels

	1 "WALKING"
	2 "WALKING_UPSTAIRS"
	3 "WALKING_DOWNSTAIRS"
	4 "SITTING"
	5 "STANDING"
	6 "LAYING"
Unit of measurement: None
Description: The type of activity the subject was performing for which the data/ feature observations were recorded

### feature
Class: factor
Unique values/levels: 79 levels

	1 "tBodyAcc-mean()-X"
	2 "tBodyAcc-mean()-Y"
	3 "tBodyAcc-mean()-Z"
	4 "tGravityAcc-mean()-X"
	5 "tGravityAcc-mean()-Y"
	6 "tGravityAcc-mean()-Z"
	7 "tBodyAccJerk-mean()-X"
	8 "tBodyAccJerk-mean()-Y"
	9 "tBodyAccJerk-mean()-Z"
	10 "tBodyGyro-mean()-X"
	11 "tBodyGyro-mean()-Y"
	12 "tBodyGyro-mean()-Z"
	13 "tBodyGyroJerk-mean()-X"
	14 "tBodyGyroJerk-mean()-Y"
	15 "tBodyGyroJerk-mean()-Z"
	16 "tBodyAccMag-mean()"
	17 "tGravityAccMag-mean()"
	18 "tBodyAccJerkMag-mean()"
	19 "tBodyGyroMag-mean()"
	20 "tBodyGyroJerkMag-mean()"
	21 "fBodyAcc-mean()-X"
	22 "fBodyAcc-mean()-Y"
	23 "fBodyAcc-mean()-Z"
	24 "fBodyAcc-meanFreq()-X"
	25 "fBodyAcc-meanFreq()-Y"
	26 "fBodyAcc-meanFreq()-Z"
	27 "fBodyAccJerk-mean()-X"
	28 "fBodyAccJerk-mean()-Y"
	29 "fBodyAccJerk-mean()-Z"
	30 "fBodyAccJerk-meanFreq()-X"
	31 "fBodyAccJerk-meanFreq()-Y"
	32 "fBodyAccJerk-meanFreq()-Z"
	33 "fBodyGyro-mean()-X"
	34 "fBodyGyro-mean()-Y"
	35 "fBodyGyro-mean()-Z"
	36 "fBodyGyro-meanFreq()-X"
	37 "fBodyGyro-meanFreq()-Y"
	38 "fBodyGyro-meanFreq()-Z"
	39 "fBodyAccMag-mean()"
	40 "fBodyAccMag-meanFreq()"
	41 "fBodyBodyAccJerkMag-mean()"
	42 "fBodyBodyAccJerkMag-meanFreq()"
	43 "fBodyBodyGyroMag-mean()"
	44 "fBodyBodyGyroMag-meanFreq()"
	45 "fBodyBodyGyroJerkMag-mean()"
	46 "fBodyBodyGyroJerkMag-meanFreq()"
	47 "tBodyAcc-std()-X"
	48 "tBodyAcc-std()-Y"
	49 "tBodyAcc-std()-Z"
	50 "tGravityAcc-std()-X"
	51 "tGravityAcc-std()-Y"
	52 "tGravityAcc-std()-Z"
	53 "tBodyAccJerk-std()-X"
	54 "tBodyAccJerk-std()-Y"
	55 "tBodyAccJerk-std()-Z"
	56 "tBodyGyro-std()-X"
	57 "tBodyGyro-std()-Y"
	58 "tBodyGyro-std()-Z"
	59 "tBodyGyroJerk-std()-X"
	60 "tBodyGyroJerk-std()-Y"
	61 "tBodyGyroJerk-std()-Z"
	62 "tBodyAccMag-std()"
	63 "tGravityAccMag-std()"
	64 "tBodyAccJerkMag-std()"
	65 "tBodyGyroMag-std()"
	66 "tBodyGyroJerkMag-std()"
	67 "fBodyAcc-std()-X"
	68 "fBodyAcc-std()-Y"
	69 "fBodyAcc-std()-Z"
	70 "fBodyAccJerk-std()-X"
	71 "fBodyAccJerk-std()-Y"
	72 "fBodyAccJerk-std()-Z"
	73 "fBodyGyro-std()-X"
	74 "fBodyGyro-std()-Y"
	75 "fBodyGyro-std()-Z"
	76 "fBodyAccMag-std()"
	77 "fBodyBodyAccJerkMag-std()"
	78 "fBodyBodyGyroMag-std()"
	79 "fBodyBodyGyroJerkMag-std()"

	
Unit of measurement: No unit of measurement. Only Character Name of Variable
Description: The type of feature observation which was measured. These are directly associated with the `featureValue` and are for multiple iterations of observations for each `subject` and each type of `activity`


***The features present in this data set are derived from the `mean()`, `std()` and `meanFreq()` variables estimated from the signals described below:***

The features for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. Each axis is present as a separate variable

	1 tBodyAcc-XYZ
	2 tGravityAcc-XYZ
	3 tBodyAccJerk-XYZ
	4 tBodyGyro-XYZ
	5 tBodyGyroJerk-XYZ
	6 tBodyAccMag
	7 tGravityAccMag
	8 tBodyAccJerkMag
	9 tBodyGyroMag
	10 tBodyGyroJerkMag
	11 fBodyAcc-XYZ
	12 fBodyAccJerk-XYZ
	13 fBodyGyro-XYZ
	14 fBodyAccMag
	15 fBodyAccJerkMag
	16 fBodyGyroMag
	17 fBodyGyroJerkMag

The suffixes imply the following:
- `mean()`: Mean value
- `std()`: Standard deviation
- `meanFreq()`: Weighted average of the frequency components to obtain a mean frequency



### featureValue
Class: numeric
Unique values/levels: NA
Unit of measurement: The unit of measurement for each `featureValue` is related to the associated `feature`

Description: The type of activity the subject was performing for which the data/ feature observations were recorded.
Additionally, the `featureValue` are **averaged** over multiple observations for a specific `feature`  grouped by each `activity` and each `subject`
