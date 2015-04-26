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
1. Download this repo in your local machine and set it as your working directory
2. Download the raw data from this link:[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and unzip the file
3. Place the raw data folder "UCI HAR Dataset" inside the repo folder (which is set as your working directory)
4. Run the run_analysis.R script and wait (processing the data may take a minute or so)
5. You should now have a tidy data file ("tidydataset.txt") within the same directory

A sample of the tidy data set created using the run_analysis.R script is available at [https://s3.amazonaws.com/coursera-uploads/user-5148c4bb98a5b56203474727/973500/asst-3/53114f10ebec11e4a9166b9aa399b77f.txt](https://s3.amazonaws.com/coursera-uploads/user-5148c4bb98a5b56203474727/973500/asst-3/53114f10ebec11e4a9166b9aa399b77f.txt)


//FOR LAST
##Description of the variables in the tiny_data.txt file
General description of the file including:
 - Dimensions of the dataset
 - Summary of the data
 - Variables present in the dataset
 
'data.frame':	14220 obs. of  4 variables:
 $ subject     : int  1 1 1 1 1 1 2 2 2 2 ...
 $ activity    : Factor w/ 6 levels "LAYING","SITTING",..: 3 2 1 4 5 6 3 2 1 4 ...
 $ feature     : Factor w/ 79 levels "fBodyAcc-mean()-X",..: 40 40 40 40 40 40 40 40 40 40 ...
 $ featureValue: num  0.279 0.261 0.222 0.277 0.289 ...

###Variable 1 (repeat this section for all variables in the dataset)
Short description of what the variable describes.
 
Some information on the variable including:
 - Class of the variable
 - Unique values/levels of the variable
 - Unit of measurement (if no unit of measurement list this as well)
 - In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels). 
 
(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)
 
####Notes on variable 1:
If available, some additional notes on the variable not covered elsewehere. If no notes are present leave this section out.
