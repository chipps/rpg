
This document describes a summary dataset built upon original raw data procured by scientists at the University of California at Irvine. The raw data consists of measurements of motile activity of test and training subjects using the Samsung smartphones. The raw measurements include 3 dimensional acceleration and gravitational measurements from the smartphone's accelerometer and similar gyroscopic measurements from the smartphone's gyroscope. Generally time based and frequency based measurements have been provided in the raw data, the latter being provided by using the Fast Fourier Transform to calculate the frequency domain counterpart to the time domain measurements.

A full description is available at the site where the raw data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## Raw Data Origin

The original raw data can be obtained below:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The above download file is a zip file which can be unzipped into a directory in your PC.

## Steps taken to produce Summary Dataset

1. Download File using above web site.
2. Unzip downloaded file into RStudio working directory.
3. Run provided run_analysis.R
4. The previous step will summarize the raw data into upload.txt

## run_analysis notes

The run_analysis program performs the following 5 high level steps.


1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The Codebook.md file found in this same repository will explain in detail, each variable column and please refer to this file for such data dictionary information.

