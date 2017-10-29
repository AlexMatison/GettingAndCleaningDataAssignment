# Getting and Cleaning Data Course Project
Readme file  
Student: Alex Matison  

## Prerequisities
1. You will need to have downloaded the "Human Activity Recognition Using Smartphones Data Set" <sup>[1](#fn1)</sup>.
2. You will need to have a working copy of R.

## Method
1. Copy cleanUpData.r from this repository into the parent directory of the "UCI HAR Dataset" directory from the dataset.
2. From the R console, set the R working directory to the directory of cleanUpData.r. For example:  
`setwd("~/data/")`
3. Run cleanUpData.r  
`source("run_analysis.r")`
4. This will create a dataframe called aggregatedData. You can then export it with `write.table` or an similar function.



<a name="fn1">1.</a>  Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013. https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip