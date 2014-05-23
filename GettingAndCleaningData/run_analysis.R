library(base)

# If the script doesn't RUN on your machine, please try to define setwd to your ENV
#setwd("~/Dev/RProjects/COURSERA/datasciencecoursera/GettingAndCleaningData/")

# A helper method for printing to the console.
p <- function(...) {
  cat("[run_analysis.R]", ..., "\n")
}

p("Getting and Cleaning Data Course Project")
p("Author: Fabien Barbier")
p("---")
p("Starting up.")
p("Preparing to run analysis.")

## SET and LOAD DATA for analysis
p("Reading datasets.")
p("|---> Reading Features datasets.")
ds.features <- read.table("UCI HAR Dataset/features.txt")
ds.features.train <- read.table("UCI HAR Dataset/train/X_train.txt")
ds.features.test <- read.table("UCI HAR Dataset/test/X_test.txt")
p("|---> Reading Activities datasets.")
ds.activities.train <- read.table("UCI HAR Dataset/train/y_train.txt")
ds.activities.test <- read.table("UCI HAR Dataset/test/y_test.txt")
ds.activity.labels <- read.table("UCI HAR Dataset/activity_labels.txt")
p("|---> Reading Subjects datasets.")
ds.subjects.train <- read.table("UCI HAR Dataset/train/subject_train.txt")
ds.subjects.test <- read.table("UCI HAR Dataset/test/subject_test.txt")
p("|-> Done.")

## Organize Tidy Features Dataset
# Extracts only the measurements on the mean and standard deviation
p("Building Tidy Features Dataset.")
p("|---> Subseting mean and standard deviation...")
subset.features <- grep("std|mean", ds.features$V2)
subset.features.train <- ds.features.train[,subset.features]
subset.features.test <- ds.features.test[,subset.features]
# Combine train and test subset
p("|---> Combining train and test subset...")
tidy.features <- rbind(subset.features.train, subset.features.test)
# Set column names
colnames(tidy.features) <- ds.features[subset.features, 2]
p("|-> Done.")

## Organize Tidy Activities Dataset
p("Building Tidy Features Dataset.")
# Combine train and test activity datasasets
p("|---> Combining train and test subset...")
ds.activities.train_test <- rbind(ds.activities.train, ds.activities.test)
# Add Activity Labels
p("|---> Labeling train and test subset...")
tidy.activities <- factor(ds.activities.train_test$V1, levels = ds.activity.labels$V1, labels = ds.activity.labels$V2)
p("|-> Done.")

## Organize Tidy Subjects Dataset
p("Building Tidy Subjects Dataset.")
# Combine train and test subject datasasets
p("|---> Combining train and test subset...")
tidy.subjects <- rbind(ds.subjects.train, ds.subjects.test)
p("|-> Done.")

## Build the Tidy Dataset
p("Building Tidy Dataset.")
# Combine and name subjects and activities
p("|---> Combine and name subjects and activities...")
tidy.subjects_activities <- cbind(tidy.subjects, tidy.activities)
colnames(tidy.subjects_activities) <- c("subject.id", "activity")
# Combine subjects, activities and features
p("|---> Combine subjects, activities and features...")
tidy <- cbind(tidy.subjects_activities, tidy.features)
p("|-> Done.")

## Build a second Tidy Dataset with the average of each variable for each activity and each subject
p("Building a second Tidy Dataset with the average.")
tidy.average <- aggregate(tidy[,3:81], by = list(tidy$subject.id, tidy$activity), FUN = mean)
# Fix the variable names
colnames(tidy.average)[1:2] <- c("subject.id", "activity")
names <- names(tidy.average)
names <- gsub('-mean', 'Mean', names) # Replace `-mean' by `Mean'
names <- gsub('-std', 'Std', names) # Replace `-std' by 'Std'
names <- gsub('[()-]', '', names) # Remove the parenthesis and dashes
names <- gsub('BodyBody', 'Body', names) # Replace `BodyBody' by `Body'
setnames(tidy.average, names)
p("|-> Done.")

# Write Outputs
# Dump the Tidy Dataset
p("Dump the Tidy Dataset & Tidy Average Dataset.")
write.table(tidy, file="tidyDataset.txt", row.names = FALSE)
# Dump the Tidy Average Dataset
write.table(tidy.average, file="tidyDatasetAverage.txt", row.names = FALSE)
p("|-> Done.")
