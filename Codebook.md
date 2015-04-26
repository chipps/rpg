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

* **timebodyaccelerationaveragex**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's average acceleration in X direction 

* **timebodyaccelerationaveragey**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's average acceleration in Y direction 

* **timebodyaccelerationaveragez**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's average acceleration in Z direction 

* **timebodyaccelerationstandarddeviationx**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's standard deviation of acceleration in X direction 

* **timebodyaccelerationstandarddeviationy**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's standard deviation of acceleration in Y direction 

* **timebodyaccelerationstandarddeviationz**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's standard deviation of acceleration in Z direction 

* **timegravityaccelerationaveragex**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of gravity induced average acceleration in X direction 

* **timegravityaccelerationaveragey**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of gravity induced average acceleration in Y direction 

* **timegravityaccelerationaveragez**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of gravity induced average acceleration in Z direction 

* **timegravityaccelerationstandarddeviationx**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of gravity induced standard deviation of acceleration in X direction 

* **timegravityaccelerationstandarddeviationy**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of gravity induced standard deviation of acceleration in Y direction 

* **timegravityaccelerationstandarddeviationz**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of gravity induced standard deviation of acceleration in Z direction 

* **timebodyaccelerationjerkaveragex**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's average jerky acceleration in X direction 

* **timebodyaccelerationjerkaveragey**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's average jerky acceleration in Y direction 

* **timebodyaccelerationjerkaveragez**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's average jerky acceleration in Z direction 

* **timebodyaccelerationjerkstandarddeviationx**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's standard deviation of jerky acceleration in X direction 

* **timebodyaccelerationjerkstandarddeviationy**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's standard deviation of jerky acceleration in Y direction 

* **timebodyaccelerationjerkstandarddeviationz**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's standard deviation of jerky acceleration in Z direction 

* **timebodygyroscopeaveragex**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's average gyroscopic movement reading in X direction 

* **timebodygyroscopeaveragey**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's average gyroscopic movement reading in Y direction 

* **timebodygyroscopeaveragez**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's average gyroscopic movement reading in Z direction 

* **timebodygyroscopestandarddeviationx**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's standard deviation of gyroscopic movement reading in X direction 

* **timebodygyroscopestandarddeviationy**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's standard deviation of gyroscopic movement reading in Y direction 

* **timebodygyroscopestandarddeviationz**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's standard deviation of gyroscopic movement reading in Z direction 

* **timebodygyroscopejerkaveragex**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's average gyroscopic jerky movement reading in X direction 

* **timebodygyroscopejerkaveragey**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's average gyroscopic jerky movement reading in Y direction 

* **timebodygyroscopejerkaveragez**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's average gyroscopic jerky movement reading in Z direction 

* **timebodygyroscopejerkstandarddeviationx**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's standard deviation of gyroscopic jerky movement reading in X direction 

* **timebodygyroscopejerkstandarddeviationy**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Time Domain measurement of smartphone wearer's body's standard deviation of gyroscopic jerky movement reading in Y direction 

* **timebodygyroscopejerkstandarddeviationz**

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

* **frequencydomainbodyaccelerationaveragex**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average acceleration in X direction 

* **frequencydomainbodyaccelerationaveragey**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average acceleration in Y direction 

* **frequencydomainbodyaccelerationaveragez**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average acceleration in Z direction 

* **frequencydomainbodyaccelerationstandarddeviationx**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's standard deviation of acceleration in X direction 

* **frequencydomainbodyaccelerationstandarddeviationy**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's standard deviation of acceleration in Y direction 

* **frequencydomainbodyaccelerationstandarddeviationz**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's standard deviation of acceleration in Z direction 

* **frequencydomainbodyaccelerationaveragefrequencyx**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average acceleration by frequency in X direction 

* **frequencydomainbodyaccelerationaveragefrequencyy**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average acceleration by frequency in Y direction 

* **frequencydomainbodyaccelerationaveragefrequencyz**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average acceleration by frequency in Z direction 

* **frequencydomainbodyaccelerationjerkaveragex**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average jerky acceleration in X direction 

* **frequencydomainbodyaccelerationjerkaveragey**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average jerky acceleration in Y direction 

* **frequencydomainbodyaccelerationjerkaveragez**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average jerky acceleration in Z direction 

* **frequencydomainbodyaccelerationjerkstandarddeviationx**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's standard deviation of jerky acceleration in X direction 

* **frequencydomainbodyaccelerationjerkstandarddeviationy**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's standard deviation of jerky acceleration in Y direction 

* **frequencydomainbodyaccelerationjerkstandarddeviationz**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's standard deviation of jerky acceleration in Z direction 

* **frequencydomainbodyaccelerationjerkaveragefrequencyx**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average jerky acceleration by frequency in X direction 

* **frequencydomainbodyaccelerationjerkaveragefrequencyy**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average jerky acceleration by frequency in Y direction 

* **frequencydomainbodyaccelerationjerkaveragefrequencyz**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average jerky acceleration by frequency in Z direction 

* **frequencydomainbodygyroscopeaveragex**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average gyroscopic movement reading in X direction 

* **frequencydomainbodygyroscopeaveragey**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average gyroscopic movement reading in Y direction 

* **frequencydomainbodygyroscopeaveragez**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average gyroscopic movement reading in Z direction 

* **frequencydomainbodygyroscopestandarddeviationx**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's standard deviation of gyroscopic movement reading in X direction 

* **frequencydomainbodygyroscopestandarddeviationy**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's standard deviation of gyroscopic movement reading in Y direction 

* **frequencydomainbodygyroscopestandarddeviationz**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's standard deviation of gyroscopic movement reading in Z direction 

* **frequencydomainbodygyroscopeaveragefrequencyx**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average gyroscopic movement reading by frequency in X direction 

* **frequencydomainbodygyroscopeaveragefrequencyy**

 Size: 12

 Notation: Scientific

 Type: Exponential Float

Frequency Domain measurement of smartphone wearer's body's average gyroscopic movement reading by frequency in Y direction 

* **frequencydomainbodygyroscopeaveragefrequencyz**

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
