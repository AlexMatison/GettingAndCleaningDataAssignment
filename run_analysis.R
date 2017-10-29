#1. Merges the training and the test sets to create one data set.
#2. Extracts only the measurements on the mean and standard deviation for each measurement.
#3. Uses descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive variable names.
#5. From the data set in step 4, creates a second, independent tidy data set with the 
#   average of each variable for each activity and each subject.
#Good luck!

#Open x_train and x_test
#merge to x_merged
#open the features column, remove all the ()s. create a vector of the 2nd column
#apply that to the names of x_merged
#select only the relevant columns (column names include mean, std
#merge (without sorting!)

# Paths to data
subject_train_path <- "./UCI HAR Dataset/train/subject_train.txt"
X_train_path <- "./UCI HAR Dataset/train/X_train.txt"
y_train_path <- "./UCI HAR Dataset/train/y_train.txt"

subject_test_path <- "./UCI HAR Dataset/test/subject_test.txt"
X_test_path <- "./UCI HAR Dataset/test/X_test.txt"
y_test_path <- "./UCI HAR Dataset/test/y_test.txt"

features_path <- "./UCI HAR Dataset/features.txt"
activity_labels_path <- "./UCI HAR Dataset/activity_labels.txt"

# Read in the activity labels
activity_labels <- read.table(activity_labels_path)

# Read in feature names. We'll use this later to set the 'names' on our data table.
# We also need them for filtering.
features <- as.vector(read.table(features_path)[,2])

# Make a boolean vector of all the features that include mean
# and std (Standard Deviation)
meanAndStdDeviationColumns <- sapply(features, grepl, pattern = "mean()|std()")
# or meanAndStdDeviationColumns <- sapply(features, grepl, pattern = "[Mm]ean|std")

# Read in training data.
subject_train <- read.table(subject_train_path)
names(subject_train) <- "subjectId"
X_train <- read.table(X_train_path, strip.white = TRUE, nrows = 10)
X_train_colClasses <- lapply(X_train, class)
X_train <- read.table(X_train_path, strip.white = TRUE, colClasses = X_train_colClasses)

# Apply names to the columns of the training data
names(X_train) <- features

# Filter the training data. Select only columns that include mean or std.
X_train <- X_train[,meanAndStdDeviationColumns]

# Read in the training activity labels
y_train <- read.table(y_train_path)
names(y_train) <- "activityLabel"

# Add the activity labels as an extra column (1st column, soon to be 2nd)
X_train <- cbind(y_train, X_train)

# Add the subject ids as an extra column (1st column)
X_train <- cbind(subject_train, X_train)

# Read in test data
subject_test <- read.table(subject_test_path)
names(subject_test) <- "subjectId"
X_test <- read.table(X_test_path, strip.white = TRUE, nrows = 10)
X_test_colClasses <- lapply(X_train, class)
X_test <- read.table(X_test_path, strip.white = TRUE, colClasses = X_train_colClasses)

# Apply names to the columns of the test data
names(X_test) <- features

# Filter the test data. Select only columns that include mean or std.
X_test <- X_test[,meanAndStdDeviationColumns]

#Read in the test activity labels
y_test <- read.table(y_test_path)
names(y_test) <- "activityLabel"

# Add the activity labels as an extra column
X_test <- cbind(y_test, X_test)

# Add the subject ids as an extra column
X_test <- cbind(subject_test, X_test)

# Add X_train and X_test tables
X_merged <- rbind(X_train, X_test)

# Replace the activity labels with descriptive names.
# That is, replace the numbers with names.
# We know the activity label column is the 2nd column because
# we just added it.

X_merged[,2] <- factor(X_merged[,2], levels = activity_labels[,1], labels = activity_labels[,2])

# Aggregate the data. Find the mean of each variable for each activity and each subject.
aggregatedData <- aggregate(X_merged, by=list(group.subjectId=X_merged$subjectId, group.activityLabels=X_merged$activityLabel), FUN=mean, na.rm=TRUE)
# Remove a couple of duplicate columns.
aggregatedData <- subset(aggregatedData, select=-c(activityLabel,group.subjectId))
# Clean up the name of one of the columns.
install.packages("plyr")
library(plyr)
aggregatedData <- rename(aggregatedData, c("group.activityLabels"="activityLabels"))
write.csv(aggregatedData, "aggregatedData.csv")
