---
title: "Codebook.md"
author: "Anonymous"
output:
  html_document:
    theme: journal
---

# Data Notes

This document describes a summary dataset built upon original raw data procured by scientists at the University of California at Irvine. The raw data consists of measurements of motile activity of test and training subjects using the Samsung smartphones. The raw measurements include 3 dimensional acceleration and gravitational measurements from the smartphone's accelerometer and similar gyroscopic measurements from the smartphone's gyroscope. Generally time based and frequency based measurements have been provided in the raw data, the latter being provided by using the Fast Fourier Transform to calculate the frequency domain counterpart to the time domain measurements.

A full description is available at the site where the raw data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## Raw Data Origin

The original raw data can be obtained below:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The above download file is a zip file which can be unzipped into a directory in your PC.

## Steps taken to produce Summary Dataset

1. Downloaded File using above web site.
2. Unzipped downloaded file into RStudio working directory.
3. Run provided run_analysis.R
4. The previous step will summarize the raw data into upload.txt

## run_analysis notes

The run_analysis program performs the following 5 high level steps.


1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Tidy Data

The final summary dataset uploaded using upload.txt conforms to the following four tidy data rules.

### Each variable you measure should be in one column

This above rule is implemented in the run_analysis function by COMBINING the TEST and the TRAUN measurement datasets and thereby ensuring that data distributed between the TEST and TRAIN datasets have been combined into one dataset with the same column names.

### Each different observation of that variable should be in a different row.

Although the combination of the two TRAIN and TEST datasets had different observations of the same variable in different rows, since our objective is to provide a Summary of all of the data, we, by definition will not have multiple observations of the same variable as we are providing aggregated information.

### There should be one table for each "kind" of variable.

Our final product, the summary dataset in upload.txt only contains one table, thus automatically adhering to this above precept.

### Multiple table solutions should have link columns

The original raw data tables did not adhere to this precept as the subject and the Y files did not have link columns to the X file. However, our summary dataset does have the personid and activity columns which function as links if needed.



# Data Dictionary

This  section describes each column of data provided in the upload.txt dataset.

* **personid**

 Size: 2

 Notation: Numeric

 Type: Integer

A unique identifier which anonymously enumerates the person from whon the smartphone measurements were recorded.

* **activity**

 Size: 20

 Notation: Character

 Type: ASCII

An easy to read string which describes which activity the subject was engaged in when the measurement was recorded. Valid values are WALKING,WALKING UPSTAIRS,WALKING DOWNSTAIRS,SITTING,STANDING,LAYING

* **timebodyaccelerationaverageX**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's average acceleration in X direction 

* **timebodyaccelerationaverageY**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's average acceleration in Y direction 

* **timebodyaccelerationaverageZ**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's average acceleration in Z direction 

* **timebodyaccelerationstandarddeviationX**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's standard deviation of acceleration in X direction 

* **timebodyaccelerationstandarddeviationY**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's standard deviation of acceleration in Y direction 

* **timebodyaccelerationstandarddeviationZ**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's standard deviation of acceleration in Z direction 

* **timegravityaccelerationaverageX**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of gravity induced average acceleration in X direction 

* **timegravityaccelerationaverageY**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of gravity induced average acceleration in Y direction 

* **timegravityaccelerationaverageZ**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of gravity induced average acceleration in Z direction 

* **timegravityaccelerationstandarddeviationX**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of gravity induced standard deviation of acceleration in X direction 

* **timegravityaccelerationstandarddeviationY**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of gravity induced standard deviation of acceleration in Y direction 

* **timegravityaccelerationstandarddeviationZ**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of gravity induced standard deviation of acceleration in Z direction 

* **timebodyaccelerationjerkaverageX**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's average jerky acceleration in X direction 

* **timebodyaccelerationjerkaverageY**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's average jerky acceleration in Y direction 

* **timebodyaccelerationjerkaverageZ**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's average jerky acceleration in Z direction 

* **timebodyaccelerationjerkstandarddeviationX**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's standard deviation of jerky acceleration in X direction 

* **timebodyaccelerationjerkstandarddeviationY**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's standard deviation of jerky acceleration in Y direction 

* **timebodyaccelerationjerkstandarddeviationZ**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's standard deviation of jerky acceleration in Z direction 

* **timebodygyroscopeaverageX**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's average gyroscopic movement reading in X direction 

* **timebodygyroscopeaverageY**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's average gyroscopic movement reading in Y direction 

* **timebodygyroscopeaverageZ**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's average gyroscopic movement reading in Z direction 

* **timebodygyroscopestandarddeviationX**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's standard deviation of gyroscopic movement reading in X direction 

* **timebodygyroscopestandarddeviationY**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's standard deviation of gyroscopic movement reading in Y direction 

* **timebodygyroscopestandarddeviationZ**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's standard deviation of gyroscopic movement reading in Z direction 

* **timebodygyroscopejerkaverageX**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's average gyroscopic jerky movement reading in X direction 

* **timebodygyroscopejerkaverageY**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's average gyroscopic jerky movement reading in Y direction 

* **timebodygyroscopejerkaverageZ**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's average gyroscopic jerky movement reading in Z direction 

* **timebodygyroscopejerkstandarddeviationX**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's standard deviation of gyroscopic jerky movement reading in X direction 

* **timebodygyroscopejerkstandarddeviationY**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's standard deviation of gyroscopic jerky movement reading in Y direction 

* **timebodygyroscopejerkstandarddeviationZ**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's standard deviation of gyroscopic jerky movement reading in Z direction 

* **timebodyaccelerationmagnitudeaverage**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's Average of Eclidean norm magnitude of acceleration 

* **timebodyaccelerationmagnitudestandarddeviation**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's standard deviation of Eclidean norm magnitude of acceleration 

* **timegravityaccelerationmagnitudeaverage**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of gravity induced Average of Eclidean norm magnitude of acceleration 

* **timegravityaccelerationmagnitudestandarddeviation**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of gravity induced standard deviation of Eclidean norm magnitude of acceleration 

* **timebodyaccelerationjerkmagnitudeaverage**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's Average of Eclidean norm magnitude of jerk acceleration 

* **timebodyaccelerationjerkmagnitudestandarddeviation**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's standard deviation of Eclidean norm magnitude of jerk acceleration 

* **timebodygyroscopemagnitudeaverage**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's Average of Eclidean norm magnitude of gyroscopic movement reading 

* **timebodygyroscopemagnitudestandarddeviation**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's standard deviation of Eclidean norm magnitude of gyroscopic movement reading 

* **timebodygyroscopejerkmagnitudeaverage**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's Average of Eclidean norm magnitude of gyroscopic jerky movement reading 

* **timebodygyroscopejerkmagnitudestandarddeviation**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's standard deviation of Eclidean norm magnitude of gyroscopic jerky movement reading 

* **frequencydomainbodyaccelerationaverageX**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average acceleration in X direction 

* **frequencydomainbodyaccelerationaverageY**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average acceleration in Y direction 

* **frequencydomainbodyaccelerationaverageZ**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average acceleration in Z direction 

* **frequencydomainbodyaccelerationstandarddeviationX**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's standard deviation of acceleration in X direction 

* **frequencydomainbodyaccelerationstandarddeviationY**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's standard deviation of acceleration in Y direction 

* **frequencydomainbodyaccelerationstandarddeviationZ**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's standard deviation of acceleration in Z direction 

* **frequencydomainbodyaccelerationaveragefrequencyX**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average acceleration by frequency in X direction 

* **frequencydomainbodyaccelerationaveragefrequencyY**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average acceleration by frequency in Y direction 

* **frequencydomainbodyaccelerationaveragefrequencyZ**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average acceleration by frequency in Z direction 

* **frequencydomainbodyaccelerationjerkaverageX**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average jerky acceleration in X direction 

* **frequencydomainbodyaccelerationjerkaverageY**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average jerky acceleration in Y direction 

* **frequencydomainbodyaccelerationjerkaverageZ**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average jerky acceleration in Z direction 

* **frequencydomainbodyaccelerationjerkstandarddeviationX**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's standard deviation of jerky acceleration in X direction 

* **frequencydomainbodyaccelerationjerkstandarddeviationY**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's standard deviation of jerky acceleration in Y direction 

* **frequencydomainbodyaccelerationjerkstandarddeviationZ**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's standard deviation of jerky acceleration in Z direction 

* **frequencydomainbodyaccelerationjerkaveragefrequencyX**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average jerky acceleration by frequency in X direction 

* **frequencydomainbodyaccelerationjerkaveragefrequencyY**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average jerky acceleration by frequency in Y direction 

* **frequencydomainbodyaccelerationjerkaveragefrequencyZ**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average jerky acceleration by frequency in Z direction 

* **frequencydomainbodygyroscopeaverageX**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average gyroscopic movement reading in X direction 

* **frequencydomainbodygyroscopeaverageY**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average gyroscopic movement reading in Y direction 

* **frequencydomainbodygyroscopeaverageZ**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average gyroscopic movement reading in Z direction 

* **frequencydomainbodygyroscopestandarddeviationX**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's standard deviation of gyroscopic movement reading in X direction 

* **frequencydomainbodygyroscopestandarddeviationY**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's standard deviation of gyroscopic movement reading in Y direction 

* **frequencydomainbodygyroscopestandarddeviationZ**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's standard deviation of gyroscopic movement reading in Z direction 

* **frequencydomainbodygyroscopeaveragefrequencyX**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average gyroscopic movement reading by frequency in X direction 

* **frequencydomainbodygyroscopeaveragefrequencyY**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average gyroscopic movement reading by frequency in Y direction 

* **frequencydomainbodygyroscopeaveragefrequencyZ**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average gyroscopic movement reading by frequency in Z direction 

* **frequencydomainbodyaccelerationmagnitudeaverage**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's Average of Eclidean norm magnitude of acceleration 

* **frequencydomainbodyaccelerationmagnitudestandarddeviation**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's standard deviation of Eclidean norm magnitude of acceleration 

* **frequencydomainbodyaccelerationmagnitudeaveragefrequency**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's Average of Eclidean norm magnitude of acceleration by frequency 

* **frequencydomainbodyaccelerationjerkmagnitudeaverage**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's Average of Eclidean norm magnitude of jerk acceleration 

* **frequencydomainbodyaccelerationjerkmagnitudestandarddeviation**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's standard deviation of Eclidean norm magnitude of jerk acceleration 

* **frequencydomainbodyaccelerationjerkmagnitudeaveragefrequency**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's Average of Eclidean norm magnitude of jerk acceleration by frequency 

* **frequencydomainbodygyroscopemagnitudeaverage**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's Average of Eclidean norm magnitude of gyroscopic movement reading 

* **frequencydomainbodygyroscopemagnitudestandarddeviation**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's standard deviation of Eclidean norm magnitude of gyroscopic movement reading 

* **frequencydomainbodygyroscopemagnitudeaveragefrequency**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's Average of Eclidean norm magnitude of gyroscopic movement reading by frequency 

* **frequencydomainbodygyroscopejerkmagnitudeaverage**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's Average of Eclidean norm magnitude of gyroscopic jerky movement reading 

* **frequencydomainbodygyroscopejerkmagnitudestandarddeviation**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's standard deviation of Eclidean norm magnitude of gyroscopic jerky movement reading 

* **frequencydomainbodygyroscopejerkmagnitudeaveragefrequency**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's Average of Eclidean norm magnitude of gyroscopic jerky movement reading by frequency 
