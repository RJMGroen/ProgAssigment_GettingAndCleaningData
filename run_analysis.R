## Goal of this R script is to create two tidy datasets. One 
## containing the measurements on the mean and standard deviation 
## for each measurement for each subject and activity. The second
## dataset contains the average of each variable for each 
## activity and each subject.

## Step 1: Getting the data
## During the first step the data that is required for creating 
## the datasets is imported into R. 

## (Optional) 1.1: Get the data from the Internet
setwd("./R/Coursera/Getting and cleaning data/Week 4")
##zipF<- "./getdata_projectfiles_UCI HAR Dataset.zip"
##download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", zipF)
##unzip(zipF)

## 1.2: Read the data into R.
## The variable-names and activity-labels are used in both the 
## test and the training dataset
library(dplyr)
var_names_data<-read.table("./UCI HAR Dataset/features.txt")
var_names_corr<-mutate(var_names_data, var_name = paste0(V1,V2))

## The test data is stored in three different files
test_data<-read.table("./X_test.txt")
test_label<-read.table("./y_test.txt")
test_subject<-read.table("./subject_test.txt")

## The training data is (also) stored in three different files
train_data<-read.table("./X_train.txt")
train_label<-read.table("./y_train.txt")
train_subject<-read.table("./subject_train.txt")

## 1.3: Prepare data for merge

## Assign the variable names to the train_data and test_data
names(train_data) = var_names_corr[,3]
names(train_subject) = "subject"
names(train_label) = "activity_label"
names(test_data) = var_names_corr[,3]
names(test_subject) = "subject"
names(test_label) = "activity_label"

## Add the subject and activity-label
train_data_total <- cbind(train_subject,train_label,train_data)
test_data_total <- cbind(test_subject,test_label,test_data)

##1.4: Merge the test and training data
merged_data <- bind_rows(train_data_total,test_data_total)

## Step 2: Extract the measurements on mean and 
## standard deviation and not the weighted average
sel_names_mean<-grep("mean\\()",names(merged_data))
sel_names_std<-grep("std()",names(merged_data))
data_select<-select(merged_data,c(1,2,sel_names_mean,sel_names_std))

## Step 3: Name the activity using the names from the activity_labels file
activity_labels<-read.table("./activity_labels.txt")
Experiment_mean_std<-merge(data_select,activity_labels,by.x="activity_label",by.y="V1") %>% rename("activity"="V2") %>% select("activity",2:68,-"activity_label")

## Step 4: Label the dataset with descriptive variable names
names(Experiment_mean_std)<-gsub('[0-9]+', '',names(Experiment_mean_std)) 
names(Experiment_mean_std)<-gsub("BodyBody","Body",names(Experiment_mean_std))
names(Experiment_mean_std)<-gsub('\\()', '',names(Experiment_mean_std))
names(Experiment_mean_std)<-gsub('^t', 'Time_',names(Experiment_mean_std))
names(Experiment_mean_std)<-gsub('^f', 'Freq_',names(Experiment_mean_std))
names(Experiment_mean_std)<-gsub('\\-', '_',names(Experiment_mean_std)) 

## Step 5: Create a second dataset with the average of each variable for 
## each activity and each subject
Grouping<-group_by(Experiment_mean_std,activity,subject)
Mean_data_experiment<-summarize_all(Grouping,mean)
names(Mean_data_experiment)[3:68]<-paste0("avg_",names(Mean_data_experiment)[3:68])

##Create a text file of the last table
##write.table(Mean_data_experiment,file="Mean_data_experiment.txt",row.names=FALSE)