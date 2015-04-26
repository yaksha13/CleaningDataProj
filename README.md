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
Short, high-level description of what the cleaning script does