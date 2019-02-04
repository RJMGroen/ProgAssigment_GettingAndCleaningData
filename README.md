##Submission of the Programming Assignment of the Getting and Cleaning data course.

This repository contains a R-script called run_analysis.R and a Codebook describing the variables. The R-script does the following:

1. Merges the training and the test sets to create one data set.
  1.1 (Optional(if not done already)) Get the data from the Internet from                                       
       "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  1.2 Read the data into R. The variable-names (features.txt) are used in both the test and the training dataset. The test and tgraining  
      data is both stored in three seperate files (data, labels and subjects)
  1.3: Prepare data for merge: Assign variable names and add the subject to the test and training data seperately.
  1.4: Merge the data with bind_rows()
  
2. Extracts only the measurements on the mean and standard deviation for each measurement.
   Select the variables names that contain the mean values and the standard deviations. Only 'real' mean measurements are inlcuded as is 
   the requirement. Therefore weighted averages of the frequency components (meanFreq-variables) are excluded.

3. Uses descriptive activity names to name the activities in the data set
   Read the activity names from the the activity_labels.txt file and add them to the dataset

4. Appropriately labels the data set with descriptive variable names.
   - Several variables names had typos. The name said BodyBody instead of Body. This mustr be corrected.
   - To correctly bind the data in step 1.4 it was necessary to include the variable number in the name. The number is also removed
     in this step
   - Almost all names contained the characters '()'. These are removed.
   - Almost all names contained the characters '-'. These are replace by '_'.
   - The names starting with t are changed to Time_ to indicate more clearly these measurements are from the time domain.
   - The names starting with f are changed to Freq_ to indicate more clearly these measurements are from the frequency domain.

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each 
   subject. This gives us a dataset with 180 rows (30 subjects x 6 activities). For every combination the average of the 66 of the 
   measurement variables is calculated.
