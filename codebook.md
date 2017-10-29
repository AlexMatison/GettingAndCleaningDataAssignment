# Getting and Cleaning Data Course Project Code Book

### Student: Alex Matison  

## Description
This code book describes the data contained in the aggregatedData.csv file, which is an output of the cleanUpData.r script<sup>[1](#fn1)</sup>. This script transforms and cleans data from the Human Activity Recognition Using Smartphones Dataset<sup>[2](#fn2)</sup>. It then creates an aggregate dataset, as described below.

## Data Description
Refer to the "Human Activity Recognition Using Smartphones Dataset" README.txt for a full description of the dataset.

### Variables

Variable name: activityLabels  
Variable description: A label for each activity.  
Possible values:  
WALKING  
WALKING_UPSTAIRS  
WALKING_DOWNSTAIRS  
SITTING  
STANDING  
LAYING  

Variable name: subjectId  
Variable description: The ID for each subject whose activities were recorded for this experiment.  
Possible values: 1 to 30  
  
The following list of variables are described using the following key:   
t = time domain signal  
f = frequency domain signal  
X/Y/Z = X, Y or Z axis  
Body = Body signal  
Gravity = Gravity signal  
Acc = Acceleration  
mean() = Mean value (note that all values in this dataset are mean values. In this context, mean means the mean of the set of means for each subject/activity combination.  
std() = Standard deviation  
Jerk = Jerk signal  
Mag = Magnitude  
Possible values: -1 to 1.  
Variable names:  
subjectId  
tBodyAcc-mean()-X  
tBodyAcc-mean()-Y  
tBodyAcc-mean()-Z  
tBodyAcc-std()-X  
tBodyAcc-std()-Y  
tBodyAcc-std()-Z  
tGravityAcc-mean()-X  
tGravityAcc-mean()-Y  
tGravityAcc-mean()-Z  
tGravityAcc-std()-X  
tGravityAcc-std()-Y  
tGravityAcc-std()-Z  
tBodyAccJerk-mean()-X  
tBodyAccJerk-mean()-Y  
tBodyAccJerk-mean()-Z  
tBodyAccJerk-std()-X  
tBodyAccJerk-std()-Y  
tBodyAccJerk-std()-Z  
tBodyGyro-mean()-X  
tBodyGyro-mean()-Y  
tBodyGyro-mean()-Z  
tBodyGyro-std()-X  
tBodyGyro-std()-Y  
tBodyGyro-std()-Z  
tBodyGyroJerk-mean()-X  
tBodyGyroJerk-mean()-Y  
tBodyGyroJerk-mean()-Z  
tBodyGyroJerk-std()-X  
tBodyGyroJerk-std()-Y  
tBodyGyroJerk-std()-Z  
tBodyAccMag-mean()  
tBodyAccMag-std()  
tGravityAccMag-mean()  
tGravityAccMag-std()  
tBodyAccJerkMag-mean()  
tBodyAccJerkMag-std()  
tBodyGyroMag-mean()  
tBodyGyroMag-std()  
tBodyGyroJerkMag-mean()  
tBodyGyroJerkMag-std()  
fBodyAcc-mean()-X  
fBodyAcc-mean()-Y  
fBodyAcc-mean()-Z  
fBodyAcc-std()-X  
fBodyAcc-std()-Y  
fBodyAcc-std()-Z  
fBodyAcc-meanFreq()-X  
fBodyAcc-meanFreq()-Y  
fBodyAcc-meanFreq()-Z  
fBodyAccJerk-mean()-X  
fBodyAccJerk-mean()-Y  
fBodyAccJerk-mean()-Z  
fBodyAccJerk-std()-X  
fBodyAccJerk-std()-Y  
fBodyAccJerk-std()-Z  
fBodyAccJerk-meanFreq()-X  
fBodyAccJerk-meanFreq()-Y  
fBodyAccJerk-meanFreq()-Z  
fBodyGyro-mean()-X  
fBodyGyro-mean()-Y  
fBodyGyro-mean()-Z  
fBodyGyro-std()-X  
fBodyGyro-std()-Y  
fBodyGyro-std()-Z  
fBodyGyro-meanFreq()-X  
fBodyGyro-meanFreq()-Y  
fBodyGyro-meanFreq()-Z  
fBodyAccMag-mean()  
fBodyAccMag-std()  
fBodyAccMag-meanFreq()  
fBodyBodyAccJerkMag-mean()  
fBodyBodyAccJerkMag-std()  
fBodyBodyAccJerkMag-meanFreq()  
fBodyBodyGyroMag-mean()  
fBodyBodyGyroMag-std()  
fBodyBodyGyroMag-meanFreq()  
fBodyBodyGyroJerkMag-mean()  
fBodyBodyGyroJerkMag-std()  
fBodyBodyGyroJerkMag-meanFreq()  

### Data
The original data is the "Human Activity Recognition Using Smartphones Data Set"<sup>[2](#fn2)</sup>.  
There are no missing values in the data.

### Transformations
The following transformations have been made on the data:
1. The training and test data sets have been merged.
2. The data set has been filtered to only include the mean and standard deviation variables. Note that the following variables are also excluded: gravityMean, tBodyAccMean, tBodyAccJerkMean, tBodyGyroMean, tBodyGyroJerkMean.
3. Activity codes (numbers) have been replaced with activity labels (text).
4. Labels have been applied to each variable.
5. An aggregate data set has been created which takes the mean of each value for each activity / subject pair.


<a name="fn1">1.</a> https://github.com/AlexMatison/GettingAndCleaningDataAssignment  
<a name="fn2">2.</a> Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013. 