Codebook
========

### Initial Data
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

### The differences from the original data set:

1. Training and test sets are merged together.
2. All variables are merged together.
3. The resulting data frame is labelled.
4. The activity field uses the activity names instead of numeric indicators.
5. Only the variables listing means and SDs are included.
6. The second data set groups all data by subject and activity, averaging over all observations.

### tidyDatasetAverage.txt

For tidyDatasetAverage the variables were renamed according to following rules:

 1. Replace `-mean` with `Mean`
 1. Replace `-std` with `Std`
 1. Remove characters `-()`
 1. Replace `BodyBody` with `Body`

 
### Variables in tidyDatasetAverage.txt

| Tidy data set
|--------------
| `subject.id : The subject ID, an integer in the range 1:30`
| `activity : The activity performed by the subject`
| `tBodyAccMeanX`
| `tBodyAccMeanY`
| `tBodyAccMeanZ`
| `tBodyAccStdX`
| `tBodyAccStdY`
| `tBodyAccStdZ`
| `tGravityAccMeanX`
| `tGravityAccMeanY`
| `tGravityAccMeanZ`
| `tGravityAccStdX`
| `tGravityAccStdY`
| `tGravityAccStdZ`
| `tBodyAccJerkMeanX`
| `tBodyAccJerkMeanY`
| `tBodyAccJerkMeanZ`
| `tBodyAccJerkStdX`
| `tBodyAccJerkStdY`
| `tBodyAccJerkStdZ`
| `tBodyGyroMeanX`
| `tBodyGyroMeanY`
| `tBodyGyroMeanZ`
| `tBodyGyroStdX`
| `tBodyGyroStdY`
| `tBodyGyroStdZ`
| `tBodyGyroJerkMeanX`
| `tBodyGyroJerkMeanY`
| `tBodyGyroJerkMeanZ`
| `tBodyGyroJerkStdX`
| `tBodyGyroJerkStdY`
| `tBodyGyroJerkStdZ`
| `tBodyAccMagMean`
| `tBodyAccMagStd`
| `tGravityAccMagMean`
| `tGravityAccMagStd`
| `tBodyAccJerkMagMean`
| `tBodyAccJerkMagStd`
| `tBodyGyroMagMean`
| `tBodyGyroMagStd`
| `tBodyGyroJerkMagMean`
| `tBodyGyroJerkMagStd`
| `fBodyAccMeanX`
| `fBodyAccMeanY`
| `fBodyAccMeanZ`
| `fBodyAccStdX`
| `fBodyAccStdY`
| `fBodyAccStdZ`
| `fBodyAccMeanFreqX`
| `fBodyAccMeanFreqY`
| `fBodyAccMeanFreqZ`
| `fBodyAccJerkMeanX`
| `fBodyAccJerkMeanY`
| `fBodyAccJerkMeanZ`
| `fBodyAccJerkStdX`
| `fBodyAccJerkStdY`
| `fBodyAccJerkStdZ`
| `fBodyAccJerkMeanFreqX`
| `fBodyAccJerkMeanFreqY`
| `fBodyAccJerkMeanFreqZ`
| `fBodyGyroMeanX`
| `fBodyGyroMeanY`
| `fBodyGyroMeanZ`
| `fBodyGyroStdX`
| `fBodyGyroStdY`
| `fBodyGyroStdZ`
| `fBodyGyroMeanFreqX`
| `fBodyGyroMeanFreqY`
| `fBodyGyroMeanFreqZ`
| `fBodyAccMagMean`
| `fBodyAccMagStd`
| `fBodyAccMagMeanFreq`
| `fBodyAccJerkMagMean`
| `fBodyAccJerkMagStd`
| `fBodyAccJerkMagMeanFreq`
| `fBodyGyroMagMean`
| `fBodyGyroMagStd`
| `fBodyGyroMagMeanFreq`
| `fBodyGyroJerkMagMean`
| `fBodyGyroJerkMagStd`
| `fBodyGyroJerkMagMeanFreq`