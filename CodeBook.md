---
title: "Codebook Programming Assignment"
author: "Robbert-Jan Groen"
date: "February 3, 2019"
---

## Project Description
Programming assigment for the Getting And Cleaning Data Course

##Study design and data processing

###Collection of the raw data
The data was provided for this assignment. It can be found in https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

###Notes on the original (raw) data 
The data linked to represents data collected from the accelerometers from the Samsung Galaxy S smartphone. The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.

A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Creating the tidy datafile

The tidy dataset consists with the average of each measurement variable (mean and standard deviation) for each activity and each subject. This gives us a dataset with 180 rows (30 subjects x 6 activities). For every combination the average of the 66 of the measurement variables is calculated.

###Guide to create the tidy data file

The following steps have been taken to create the tidy dataset called (in R-script) 'Data_experiment_means':
 - Download the file
 - Unzip the file and read the eight necessary text files into R
 - Merge the datasets
 - Rename the variables if necessary
 - Recode variables values if necessary
 - Summarize the data

###Cleaning of the data

The cleaning script (run_analysis.R) does the following: 
 1. It merges the training and the test sets to create one data set.
 2. It extracts only the measurements on the mean and standard deviation for each measurement. Only 'real' mean measurements are inlcuded as is the requirement. 
    Therefore weighted averages of the frequency components (meanFreq-variables) are excluded.
 3. It uses descriptive activity names to name the activities in the data set. These are provided in the activity_labels.txt
 4. It appropriately labels the data set with descriptive variable names. Typos are corrected and some names are extended for clarity.
 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable 
    for each activity and each subject.

More information can be found in the ReadMe document in this Github-repository

##Description of the variables in the Data_experiment_means.txt file
The final table 'Data_experiment_means' has the following description:
- Dimension:            68 variables and 180 observations (30 participants with 6 activities each)
- Variables in the dataset have the following names: 
	Activity
	Subject
	Mean_Time_BodyAcc_mean_X
	Mean_Time_BodyAcc_mean_Y
	Mean_Time_BodyAcc_mean_Z
	Mean_Time_GravityAcc_mean_X
	Mean_Time_GravityAcc_mean_Y
	Mean_Time_GravityAcc_mean_Z
	Mean_Time_BodyAccJerk_mean_X
	Mean_Time_BodyAccJerk_mean_Y
	Mean_Time_BodyAccJerk_mean_Z
	Mean_Time_BodyGyro_mean_X
	Mean_Time_BodyGyro_mean_Y
	Mean_Time_BodyGyro_mean_Z
	Mean_Time_BodyGyroJerk_mean_X
	Mean_Time_BodyGyroJerk_mean_Y
	Mean_Time_BodyGyroJerk_mean_Z
	Mean_Time_BodyAccMag_mean
	Mean_Time_GravityAccMag_mean
	Mean_Time_BodyAccJerkMag_mean
	Mean_Time_BodyGyroMag_mean
	Mean_Time_BodyGyroJerkMag_mean
	Mean_Freq_BodyAcc_mean_X
	Mean_Freq_BodyAcc_mean_Y
	Mean_Freq_BodyAcc_mean_Z
	Mean_Freq_BodyAccJerk_mean_X
	Mean_Freq_BodyAccJerk_mean_Y
	Mean_Freq_BodyAccJerk_mean_Z
	Mean_Freq_BodyGyro_mean_X
	Mean_Freq_BodyGyro_mean_Y
	Mean_Freq_BodyGyro_mean_Z
	Mean_Freq_BodyAccMag_mean
	Mean_Freq_BodyAccJerkMag_mean
	Mean_Freq_BodyGyroMag_mean
	Mean_Freq_BodyGyroJerkMag_mean
	Mean_Time_BodyAcc_std_X
	Mean_Time_BodyAcc_std_Y
	Mean_Time_BodyAcc_std_Z
	Mean_Time_GravityAcc_std_X
	Mean_Time_GravityAcc_std_Y
	Mean_Time_GravityAcc_std_Z
	Mean_Time_BodyAccJerk_std_X
	Mean_Time_BodyAccJerk_std_Y
	Mean_Time_BodyAccJerk_std_Z
	Mean_Time_BodyGyro_std_X
	Mean_Time_BodyGyro_std_Y
	Mean_Time_BodyGyro_std_Z
	Mean_Time_BodyGyroJerk_std_X
	Mean_Time_BodyGyroJerk_std_Y
	Mean_Time_BodyGyroJerk_std_Z
	Mean_Time_BodyAccMag_std
	Mean_Time_GravityAccMag_std
	Mean_Time_BodyAccJerkMag_std
	Mean_Time_BodyGyroMag_std
	Mean_Time_BodyGyroJerkMag_std
	Mean_Freq_BodyAcc_std_X
	Mean_Freq_BodyAcc_std_Y
	Mean_Freq_BodyAcc_std_Z
	Mean_Freq_BodyAccJerk_std_X
	Mean_Freq_BodyAccJerk_std_Y
	Mean_Freq_BodyAccJerk_std_Z
	Mean_Freq_BodyGyro_std_X
	Mean_Freq_BodyGyro_std_Y
	Mean_Freq_BodyGyro_std_Z
	Mean_Freq_BodyAccMag_std
	Mean_Freq_BodyAccJerkMag_std
	Mean_Freq_BodyGyroMag_std
	Mean_Freq_BodyGyroJerkMag_std
 - Summary of the data: 
 activity     		  subject         Mean_Time_BodyAcc_mean_X
  LAYING            :30    Min.   : 1.0    Min.   :0.2216        
  SITTING           :30    1st Qu.: 8.0    1st Qu.:0.2712        
  STANDING          :30    Median :15.5    Median :0.2770        
  WALKING           :30    Mean   :15.5    Mean   :0.2743        
  WALKING_DOWNSTAIRS:30    3rd Qu.:23.0    3rd Qu.:0.2800        
  WALKING_UPSTAIRS  :30    Max.   :30.0    Max.   :0.3015        
 Mean_Time_BodyAcc_mean_Y 	Mean_Time_BodyAcc_mean_Z
  Min.   :-0.040514              Min.   :-0.15251      
  1st Qu.:-0.020022              1st Qu.:-0.11207      
  Median :-0.017262              Median :-0.10819      
  Mean   :-0.017876              Mean   :-0.10916      
  3rd Qu.:-0.014936              3rd Qu.:-0.10443      
  Max.   :-0.001308              Max.   :-0.07538      
 Mean_Time_GravityAcc_mean_X    Mean_Time_GravityAcc_mean_Y
  Min.   :-0.6800                Min.   :-0.47989         
  1st Qu.: 0.8376                1st Qu.:-0.23319         
  Median : 0.9208                Median :-0.12782         
  Mean   : 0.6975                Mean   :-0.01621         
  3rd Qu.: 0.9425                3rd Qu.: 0.08773         
  Max.   : 0.9745                Max.   : 0.95659         
 Mean_Time_GravityAcc_mean_Z    Mean_Time_BodyAccJerk_mean_X
  Min.   :-0.49509               Min.   :0.04269           
  1st Qu.:-0.11726               1st Qu.:0.07396           
  Median : 0.02384               Median :0.07640           
  Mean   : 0.07413               Mean   :0.07947           
  3rd Qu.: 0.14946               3rd Qu.:0.08330           
  Max.   : 0.95787               Max.   :0.13019           
 Mean_Time_BodyAccJerk_mean_Y   Mean_Time_BodyAccJerk_mean_Z
  Min.   :-0.0386872             Min.   :-0.067458         
  1st Qu.: 0.0004664             1st Qu.:-0.010601         
  Median : 0.0094698             Median :-0.003861         
  Mean   : 0.0075652             Mean   :-0.004953         
  3rd Qu.: 0.0134008             3rd Qu.: 0.001958         
  Max.   : 0.0568186             Max.   : 0.038053         
 Mean_Time_BodyGyro_mean_X      Mean_Time_BodyGyro_mean_Y
  Min.   :-0.20578               Min.   :-0.20421       
  1st Qu.:-0.04712               1st Qu.:-0.08955       
  Median :-0.02871               Median :-0.07318       
  Mean   :-0.03244               Mean   :-0.07426       
  3rd Qu.:-0.01676               3rd Qu.:-0.06113       
  Max.   : 0.19270               Max.   : 0.02747       
 Mean_Time_BodyGyro_mean_Z      Mean_Time_BodyGyroJerk_mean_X
  Min.   :-0.07245               Min.   :-0.15721           
  1st Qu.: 0.07475               1st Qu.:-0.10322           
  Median : 0.08512               Median :-0.09868           
  Mean   : 0.08744               Mean   :-0.09606           
  3rd Qu.: 0.10177               3rd Qu.:-0.09110           
  Max.   : 0.17910               Max.   :-0.02209           
 Mean_Time_BodyGyroJerk_mean_Y  Mean_Time_BodyGyroJerk_mean_Z
  Min.   :-0.07681               Min.   :-0.092500          
  1st Qu.:-0.04552               1st Qu.:-0.061725          
  Median :-0.04112               Median :-0.053430          
  Mean   :-0.04269               Mean   :-0.054802          
  3rd Qu.:-0.03842               3rd Qu.:-0.048985          
  Max.   :-0.01320               Max.   :-0.006941          
 Mean_Time_BodyAccMag_mean      Mean_Time_GravityAccMag_mean
  Min.   :-0.9865                Min.   :-0.9865           
  1st Qu.:-0.9573                1st Qu.:-0.9573           
  Median :-0.4829                Median :-0.4829           
  Mean   :-0.4973                Mean   :-0.4973           
  3rd Qu.:-0.0919                3rd Qu.:-0.0919           
  Max.   : 0.6446                Max.   : 0.6446           
 Mean_Time_BodyAccJerkMag_mean  Mean_Time_BodyGyroMag_mean
  Min.   :-0.9928                Min.   :-0.9807         
  1st Qu.:-0.9807                1st Qu.:-0.9461         
  Median :-0.8168                Median :-0.6551         
  Mean   :-0.6079                Mean   :-0.5652         
  3rd Qu.:-0.2456                3rd Qu.:-0.2159         
  Max.   : 0.4345                Max.   : 0.4180         
 Mean_Time_BodyGyroJerkMag_mean Mean_Freq_BodyAcc_mean_X
  Min.   :-0.99732               Min.   :-0.9952       
  1st Qu.:-0.98515               1st Qu.:-0.9787       
  Median :-0.86479               Median :-0.7691       
  Mean   :-0.73637               Mean   :-0.5758       
  3rd Qu.:-0.51186               3rd Qu.:-0.2174       
  Max.   : 0.08758               Max.   : 0.5370       
 Mean_Freq_BodyAcc_mean_Y       Mean_Freq_BodyAcc_mean_Z
  Min.   :-0.98903               Min.   :-0.9895       
  1st Qu.:-0.95361               1st Qu.:-0.9619       
  Median :-0.59498               Median :-0.7236       
  Mean   :-0.48873               Mean   :-0.6297       
  3rd Qu.:-0.06341               3rd Qu.:-0.3183       
  Max.   : 0.52419               Max.   : 0.2807       
 Mean_Freq_BodyAccJerk_mean_X   Mean_Freq_BodyAccJerk_mean_Y
  Min.   :-0.9946                Min.   :-0.9894           
  1st Qu.:-0.9828                1st Qu.:-0.9725           
  Median :-0.8126                Median :-0.7817           
  Mean   :-0.6139                Mean   :-0.5882           
  3rd Qu.:-0.2820                3rd Qu.:-0.1963           
  Max.   : 0.4743                Max.   : 0.2767           
 Mean_Freq_BodyAccJerk_mean_Z   Mean_Freq_BodyGyro_mean_X
  Min.   :-0.9920                Min.   :-0.9931        
  1st Qu.:-0.9796                1st Qu.:-0.9697        
  Median :-0.8707                Median :-0.7300        
  Mean   :-0.7144                Mean   :-0.6367        
  3rd Qu.:-0.4697                3rd Qu.:-0.3387        
  Max.   : 0.1578                Max.   : 0.4750        
 Mean_Freq_BodyGyro_mean_Y      Mean_Freq_BodyGyro_mean_Z
  Min.   :-0.9940                Min.   :-0.9860        
  1st Qu.:-0.9700                1st Qu.:-0.9624        
  Median :-0.8141                Median :-0.7909        
  Mean   :-0.6767                Mean   :-0.6044        
  3rd Qu.:-0.4458                3rd Qu.:-0.2635        
  Max.   : 0.3288                Max.   : 0.4924        
 Mean_Freq_BodyAccMag_mean      Mean_Freq_BodyAccJerkMag_mean
  Min.   :-0.9868                Min.   :-0.9940            
  1st Qu.:-0.9560                1st Qu.:-0.9770            
  Median :-0.6703                Median :-0.7940            
  Mean   :-0.5365                Mean   :-0.5756            
  3rd Qu.:-0.1622                3rd Qu.:-0.1872            
  Max.   : 0.5866                Max.   : 0.5384            
 Mean_Freq_BodyGyroMag_mean     Mean_Freq_BodyGyroJerkMag_mean
  Min.   :-0.9865                Min.   :-0.9976             
  1st Qu.:-0.9616                1st Qu.:-0.9813             
  Median :-0.7657                Median :-0.8779             
  Mean   :-0.6671                Mean   :-0.7564             
  3rd Qu.:-0.4087                3rd Qu.:-0.5831             
  Max.   : 0.2040                Max.   : 0.1466             
 Mean_Time_BodyAcc_std_X        Mean_Time_BodyAcc_std_Y        Mean_Time_BodyAcc_std_Z
  Min.   :-0.9961                Min.   :-0.99024               Min.   :-0.9877      
  1st Qu.:-0.9799                1st Qu.:-0.94205               1st Qu.:-0.9498      
  Median :-0.7526                Median :-0.50897               Median :-0.6518      
  Mean   :-0.5577                Mean   :-0.46046               Mean   :-0.5756      
  3rd Qu.:-0.1984                3rd Qu.:-0.03077               3rd Qu.:-0.2306      
  Max.   : 0.6269                Max.   : 0.61694               Max.   : 0.6090      
 Mean_Time_GravityAcc_std_X     Mean_Time_GravityAcc_std_Y
  Min.   :-0.9968                Min.   :-0.9942         
  1st Qu.:-0.9825                1st Qu.:-0.9711         
  Median :-0.9695                Median :-0.9590         
  Mean   :-0.9638                Mean   :-0.9524         
  3rd Qu.:-0.9509                3rd Qu.:-0.9370         
  Max.   :-0.8296                Max.   :-0.6436         
 Mean_Time_GravityAcc_std_Z     Mean_Time_BodyAccJerk_std_X
  Min.   :-0.9910                Min.   :-0.9946          
  1st Qu.:-0.9605                1st Qu.:-0.9832          
  Median :-0.9450                Median :-0.8104          
  Mean   :-0.9364                Mean   :-0.5949          
  3rd Qu.:-0.9180                3rd Qu.:-0.2233          
  Max.   :-0.6102                Max.   : 0.5443          
 Mean_Time_BodyAccJerk_std_Y    Mean_Time_BodyAccJerk_std_Z
  Min.   :-0.9895                Min.   :-0.99329         
  1st Qu.:-0.9724                1st Qu.:-0.98266         
  Median :-0.7756                Median :-0.88366         
  Mean   :-0.5654                Mean   :-0.73596         
  3rd Qu.:-0.1483                3rd Qu.:-0.51212         
  Max.   : 0.3553                Max.   : 0.03102         
 Mean_Time_BodyGyro_std_X      Mean_Time_BodyGyro_std_Y
  Min.   :-0.9943               Min.   :-0.9942       
  1st Qu.:-0.9735               1st Qu.:-0.9629       
  Median :-0.7890               Median :-0.8017       
  Mean   :-0.6916               Mean   :-0.6533       
  3rd Qu.:-0.4414               3rd Qu.:-0.4196       
  Max.   : 0.2677               Max.   : 0.4765       
 Mean_Time_BodyGyro_std_Z      Mean_Time_BodyGyroJerk_std_X
  Min.   :-0.9855               Min.   :-0.9965           
  1st Qu.:-0.9609               1st Qu.:-0.9800           
  Median :-0.8010               Median :-0.8396           
  Mean   :-0.6164               Mean   :-0.7036           
  3rd Qu.:-0.3106               3rd Qu.:-0.4629           
  Max.   : 0.5649               Max.   : 0.1791           
 Mean_Time_BodyGyroJerk_std_Y  Mean_Time_BodyGyroJerk_std_Z
  Min.   :-0.9971               Min.   :-0.9954           
  1st Qu.:-0.9832               1st Qu.:-0.9848           
  Median :-0.8942               Median :-0.8610           
  Mean   :-0.7636               Mean   :-0.7096           
  3rd Qu.:-0.5861               3rd Qu.:-0.4741           
  Max.   : 0.2959               Max.   : 0.1932           
 Mean_Time_BodyAccMag_std      Mean_Time_GravityAccMag_std
  Min.   :-0.9865               Min.   :-0.9865          
  1st Qu.:-0.9430               1st Qu.:-0.9430          
  Median :-0.6074               Median :-0.6074          
  Mean   :-0.5439               Mean   :-0.5439          
  3rd Qu.:-0.2090               3rd Qu.:-0.2090          
  Max.   : 0.4284               Max.   : 0.4284          
 Mean_Time_BodyAccJerkMag_std  Mean_Time_BodyGyroMag_std
  Min.   :-0.9946               Min.   :-0.9814        
  1st Qu.:-0.9765               1st Qu.:-0.9476        
  Median :-0.8014               Median :-0.7420        
  Mean   :-0.5842               Mean   :-0.6304        
  3rd Qu.:-0.2173               3rd Qu.:-0.3602        
  Max.   : 0.4506               Max.   : 0.3000        
 Mean_Time_BodyGyroJerkMag_std Mean_Freq_BodyAcc_std_X
  Min.   :-0.9977               Min.   :-0.9966      
  1st Qu.:-0.9805               1st Qu.:-0.9820      
  Median :-0.8809               Median :-0.7470      
  Mean   :-0.7550               Mean   :-0.5522      
  3rd Qu.:-0.5767               3rd Qu.:-0.1966      
  Max.   : 0.2502               Max.   : 0.6585      
 Mean_Freq_BodyAcc_std_Y       Mean_Freq_BodyAcc_std_Z
  Min.   :-0.99068              Min.   :-0.9872      
  1st Qu.:-0.94042              1st Qu.:-0.9459      
  Median :-0.51338              Median :-0.6441      
  Mean   :-0.48148              Mean   :-0.5824      
  3rd Qu.:-0.07913              3rd Qu.:-0.2655      
  Max.   : 0.56019              Max.   : 0.6871      
 Mean_Freq_BodyAccJerk_std_X   Mean_Freq_BodyAccJerk_std_Y
  Min.   :-0.9951               Min.   :-0.9905          
  1st Qu.:-0.9847               1st Qu.:-0.9737          
  Median :-0.8254               Median :-0.7852          
  Mean   :-0.6121               Mean   :-0.5707          
  3rd Qu.:-0.2475               3rd Qu.:-0.1685          
  Max.   : 0.4768               Max.   : 0.3498          
 Mean_Freq_BodyAccJerk_std_Z   Mean_Freq_BodyGyro_std_X
  Min.   :-0.993108             Min.   :-0.9947       
  1st Qu.:-0.983747             1st Qu.:-0.9750       
  Median :-0.895121             Median :-0.8086       
  Mean   :-0.756489             Mean   :-0.7110       
  3rd Qu.:-0.543787             3rd Qu.:-0.4813       
  Max.   :-0.006236             Max.   : 0.1966       
 Mean_Freq_BodyGyro_std_Y      Mean_Freq_BodyGyro_std_Z
  Min.   :-0.9944               Min.   :-0.9867       
  1st Qu.:-0.9602               1st Qu.:-0.9643       
  Median :-0.7964               Median :-0.8224       
  Mean   :-0.6454               Mean   :-0.6577       
  3rd Qu.:-0.4154               3rd Qu.:-0.3916       
  Max.   : 0.6462               Max.   : 0.5225       
 Mean_Freq_BodyAccMag_std      Mean_Freq_BodyAccJerkMag_std
  Min.   :-0.9876               Min.   :-0.9944           
  1st Qu.:-0.9452               1st Qu.:-0.9752           
  Median :-0.6513               Median :-0.8126           
  Mean   :-0.6210               Mean   :-0.5992           
  3rd Qu.:-0.3654               3rd Qu.:-0.2668           
  Max.   : 0.1787               Max.   : 0.3163           
 Mean_Freq_BodyGyroMag_std     Mean_Freq_BodyGyroJerkMag_std
  Min.   :-0.9815               Min.   :-0.9976            
  1st Qu.:-0.9488               1st Qu.:-0.9802            
  Median :-0.7727               Median :-0.8941            
  Mean   :-0.6723               Mean   :-0.7715            
  3rd Qu.:-0.4277               3rd Qu.:-0.6081            
  Max.   : 0.2367               Max.   : 0.2878   

###Variable 1: activity
Describes the activity for which the measures are obtained.

 - Class of the variable: Factor with 6 levels
 - Unique levels of the variable: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

###Variable 2: subject
Describes the different subjects that participated in the experiment.

 - Class of the variable: Integer
 - Unique values of the variable: 1 to 30 (30 participants)

The variable names below contain a abbreviated words. The meaning of the abbreviations is as follows:

Freq: Frequency (domain)
Acc: Acceleration
Gyro: Angular velocity (measurement comes from Gyroscope)
Mag: Magnitude
std: standard deviation

###Variable 3: Mean_Time_BodyAcc_mean_X
This variables contains the mean for each activity and each subject of the mean value of the body acceleration signal in the X direction in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyAcc_mean_X (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 4: Mean_Time_BodyAcc_mean_Y
This variables contains the mean for each activity and each subject of the mean value of the body acceleration signal in the Y direction in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyAcc_mean_Y (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 5: Mean_Time_BodyAcc_mean_Z
This variables contains the mean for each activity and each subject of the mean value of the body acceleration signal in the Z direction in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyAcc_mean_Z (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 6: Mean_Time_GravityAcc_mean_X
This variables contains the mean for each activity and each subject of the mean value of the gravity acceleration signal in the X direction in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_GravityAcc_mean_X (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 7: Mean_Time_GravityAcc_mean_Y
This variables contains the mean for each activity and each subject of the mean value of the gravity acceleration signal in the Y direction in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_GravityAcc_mean_Y (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 8: Mean_Time_GravityAcc_mean_Z
This variables contains the mean for each activity and each subject of the mean value of the gravity acceleration signal in the Z direction in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_GravityAcc_mean_Z (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 9: Mean_Time_BodyAccJerk_mean_X
This variables contains the mean for each activity and each subject of the mean value of the jerk signal of the body acceleration in the X direction in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyAccJerk_mean_X (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 10: Mean_Time_BodyAccJerk_mean_Y
This variables contains the mean for each activity and each subject of the mean value of the jerk signal of the body acceleration in the Y direction in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyAccJerk_mean_Y (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 11: Mean_Time_BodyAccJerk_mean_Z
This variables contains the mean for each activity and each subject of the mean value of the jerk signal of the body acceleration in the Z direction in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyAccJerk_mean_Z (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 12: Mean_Time_BodyGyro_mean_X
This variables contains the mean for each activity and each subject of the mean value of the body angular velocity signal in the X direction in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyGyro_mean_X (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 13: Mean_Time_BodyGyro_mean_Y
This variables contains the mean for each activity and each subject of the mean value of the body angular velocity signal in the Y direction in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyGyro_mean_Y (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 14: Mean_Time_BodyGyro_mean_Z
This variables contains the mean for each activity and each subject of the mean value of the body angular velocity signal in the Z direction in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyGyro_mean_Z (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 15: Mean_Time_BodyGyroJerk_mean_X
This variables contains the mean for each activity and each subject of the mean value of the jerk signal of the angular velocity of the body in the X direction in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyGyroJerk_mean_X (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 16: Mean_Time_BodyGyroJerk_mean_Y
This variables contains the mean for each activity and each subject for each activity and each subject of the mean value of the jerk signal of the angular velocity of the body in the Y direction in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyGyroJerk_mean_Y (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 17: Mean_Time_BodyGyroJerk_mean_Z
This variables contains the mean for each activity and each subject of the mean value of the jerk signal of the angular velocity of the body in the Z direction in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyGyroJerk_mean_Z (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 18: Mean_Time_BodyAccMag_mean
This variables contains the mean for each activity and each subject of the mean value of the magnitude of the three-dimensional signals of body acceleration in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyAccMag_mean (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 19: Mean_Time_GravityAccMag_mean
This variables contains the mean for each activity and each subject of the mean value of the magnitude of the three-dimensional signals of gravity acceleration in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_GravityAccMag_mean (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 20: Mean_Time_BodyAccJerkMag_mean
This variables contains the mean for each activity and each subject of the mean value of the magnitude of the three-dimensional signals of the jerk of the acceleration of the body in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyAccJerkMag_mean (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 21: Mean_Time_BodyGyroMag_mean
This variables contains the mean for each activity and each subject of the mean value of the magnitude of the three-dimensional signals of the angular velocity of the body in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyGyroMag_mean (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 22: Mean_Time_BodyGyroJerkMag_mean
This variables contains the mean for each activity and each subject of the mean value of the magnitude of the three-dimensional signals of the jerk of the angular velocity of the body in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyGyroJerkMag_mean (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 23: Mean_Freq_BodyAcc_mean_X
This variables contains the mean for each activity and each subject of the mean value of the body acceleration signal in the X direction in the frequency domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Freq_BodyAcc_mean_X (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 24: Mean_Freq_BodyAcc_mean_Y
This variables contains the mean for each activity and each subject of the mean value of the body acceleration signal in the Y direction in the frequency domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Freq_BodyAcc_mean_Y (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 25: Mean_Freq_BodyAcc_mean_Z
This variables contains the mean for each activity and each subject of the mean value of the body acceleration signal in the Z direction in the frequency domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Freq_BodyAcc_mean_Z (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 26: Mean_Freq_BodyAccJerk_mean_X
This variables contains the mean for each activity and each subject of the mean value of the jerk signal of the body acceleration in the X direction in the frequency domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Freq_BodyAccJerk_mean_X (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 27: Mean_Freq_BodyAccJerk_mean_Y
This variables contains the mean for each activity and each subject of the mean value of the jerk signal of the body acceleration in the Y direction in the frequency domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Freq_BodyAccJerk_mean_Y (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 28: Mean_Freq_BodyAccJerk_mean_Z
This variables contains the mean for each activity and each subject of the mean value of the jerk signal of the body acceleration in the Z direction in the frequency domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Freq_BodyAccJerk_mean_Z (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 29: Mean_Freq_BodyGyro_mean_X
This variables contains the mean for each activity and each subject of the mean value of the body angular velocity signal in the X direction in the frequency domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Freq_BodyGyro_mean_X (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 30: Mean_Freq_BodyGyro_mean_Y
This variables contains the mean for each activity and each subject of the mean value of the body angular velocity signal in the Y direction in the frequency domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Freq_BodyGyro_mean_Y (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 31: Mean_Freq_BodyGyro_mean_Z
This variables contains the mean for each activity and each subject of the mean value of the body angular velocity signal in the Z direction in the frequency domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Freq_BodyGyro_mean_Z (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 32: Mean_Freq_BodyAccMag_mean
This variables contains the mean for each activity and each subject of the mean value of the magnitude of the three-dimensional signals of body acceleration in the frequency domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Freq_BodyAccMag_mean (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 33: Mean_Freq_BodyAccJerkMag_mean
This variables contains the mean for each activity and each subject of the mean value of the magnitude of the three-dimensional signals of the jerk of the acceleration of the body in the frequency domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Freq_BodyAccJerkMag_mean (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 34: Mean_Freq_BodyGyroMag_mean
This variables contains the mean for each activity and each subject of the mean value of the magnitude of the three-dimensional signals of the angular velocity of the body in the frequency domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Freq_BodyGyroMag_mean (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 35: Mean_Freq_BodyGyroJerkMag_mean
This variables contains the mean for each activity and each subject of the mean value of the magnitude of the three-dimensional signals of the jerk of the angular velocity of the body in the frequency domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Freq_BodyGyroJerkMag_mean (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 36: Mean_Time_BodyAcc_std_X
This variables contains the mean for each activity and each subject of the standard deviation of the body acceleration signal in the X direction in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyAcc_std_X (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 37: Mean_Time_BodyAcc_std_Y
This variables contains the mean for each activity and each subject of the standard deviation of the body acceleration signal in the Y direction in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyAcc_std_Y (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 38: Mean_Time_BodyAcc_std_Z
This variables contains the mean for each activity and each subject of the standard deviation of the body acceleration signal in the Z direction in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyAcc_std_Z (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 39: Mean_Time_GravityAcc_std_X
This variables contains the mean for each activity and each subject of the standard deviation of the gravity acceleration signal in the X direction in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_GravityAcc_std_X (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 40: Mean_Time_GravityAcc_std_Y
This variables contains the mean for each activity and each subject of the standard deviation of the gravity acceleration signal in the Y direction in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_GravityAcc_std_Y (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 41: Mean_Time_GravityAcc_std_Z
This variables contains the mean for each activity and each subject of the standard deviation of the gravity acceleration signal in the Z direction in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_GravityAcc_std_Z (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 42: Mean_Time_BodyAccJerk_std_X
This variables contains the mean for each activity and each subject of the standard deviation of the jerk signal of the body acceleration in the X direction in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyAccJerk_std_X (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 43: Mean_Time_BodyAccJerk_std_Y
This variables contains the mean for each activity and each subject of the standard deviation of the jerk signal of the body acceleration in the Y direction in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyAccJerk_std_Y (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 44: Mean_Time_BodyAccJerk_std_Z
This variables contains the mean for each activity and each subject of the standard deviation of the jerk signal of the body acceleration in the Z direction in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyAccJerk_std_Z (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 45: Mean_Time_BodyGyro_std_X
This variables contains the mean for each activity and each subject of the standard deviation of the body angular velocity signal in the X direction in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyGyro_std_X (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 46: Mean_Time_BodyGyro_std_Y
This variables contains the mean for each activity and each subject of the standard deviation of the body angular velocity signal in the Y direction in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyGyro_std_Y (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 47: Mean_Time_BodyGyro_std_Z
This variables contains the mean for each activity and each subject of the standard deviation of the body angular velocity signal in the Z direction in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyGyro_std_Z (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 48: Mean_Time_BodyGyroJerk_std_X
This variables contains the mean for each activity and each subject of the standard deviation of the jerk signal of the angular velocity of the body in the X direction in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyGyroJerk_std_X (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 49: Mean_Time_BodyGyroJerk_std_Y
This variables contains the mean for each activity and each subject of the standard deviation of the jerk signal of the angular velocity of the body in the Y direction in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyGyroJerk_std_Y (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 50: Mean_Time_BodyGyroJerk_std_Z
This variables contains the mean for each activity and each subject of the standard deviation of the jerk signal of the angular velocity of the body in the Z direction in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyGyroJerk_std_Z (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 51: Mean_Time_BodyAccMag_std
This variables contains the mean for each activity and each subject of the standard deviation of the magnitude of the three-dimensional signals of body acceleration in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyAccMag_std (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 52: Mean_Time_GravityAccMag_std
This variables contains the mean for each activity and each subject of the standard deviation of the magnitude of the three-dimensional signals of gravity acceleration in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_GravityAccMag_std (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 53: Mean_Time_BodyAccJerkMag_std
This variables contains the mean for each activity and each subject of the standard deviation of the magnitude of the three-dimensional signals of the jerk of the acceleration of the body in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyAccJerkMag_std (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 54: Mean_Time_BodyGyroMag_std
This variables contains the mean for each activity and each subject of the standard deviation of the magnitude of the three-dimensional signals of the angular velocity of the body in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyGyroMag_std (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 55: Mean_Time_BodyGyroJerkMag_std
This variables contains the meanv of the standard deviation of the magnitude of the three-dimensional signals of the jerk of the angular velocity of the body in the time domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Time_BodyGyroJerkMag_std (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 56: Mean_Freq_BodyAcc_std_X
This variables contains the mean for each activity and each subject of the standard deviation of the body acceleration signal in the X direction in the frequency domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Freq_BodyAcc_std_X (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 57: Mean_Freq_BodyAcc_std_Y
This variables contains the mean for each activity and each subject of the standard deviation of the body acceleration signal in the Y direction in the frequency domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Freq_BodyAcc_std_Y (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 58: Mean_Freq_BodyAcc_std_Z
This variables contains the mean for each activity and each subject of the standard deviation of the body acceleration signal in the Z direction in the frequency domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Freq_BodyAcc_std_Z (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 59: Mean_Freq_BodyAccJerk_std_X
This variables contains the mean for each activity and each subject of the standard deviation of the jerk signal of the body acceleration in the X direction in the frequency domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Freq_BodyAccJerk_std_X (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 60: Mean_Freq_BodyAccJerk_std_Y
This variables contains the mean for each activity and each subject of the standard deviation of the jerk signal of the body acceleration in the Y direction in the frequency domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Freq_BodyAccJerk_std_Y (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 61: Mean_Freq_BodyAccJerk_std_Z
This variables contains the mean for each activity and each subject of the standard deviation of the jerk signal of the body acceleration in the Z direction in the frequency domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Freq_BodyAccJerk_std_Z (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 62: Mean_Freq_BodyGyro_std_X
This variables contains the mean for each activity and each subject of the standard deviation of the body angular velocity signal in the X direction in the frequency domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Freq_BodyGyro_std_X (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 63: Mean_Freq_BodyGyro_std_Y
This variables contains the mean for each activity and each subject of the standard deviation of the body angular velocity signal in the Y direction in the frequency domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Freq_BodyGyro_std_Y (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 64: Mean_Freq_BodyGyro_std_Z
This variables contains the mean for each activity and each subject of the standard deviation of the body angular velocity signal in the Z direction in the frequency domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Freq_BodyGyro_std_Z (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 65: Mean_Freq_BodyAccMag_std
This variables contains the mean for each activity and each subject of the standard deviation of the magnitude of the three-dimensional signals of body acceleration in the frequency domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Freq_BodyAccMag_std (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 66: Mean_Freq_BodyAccJerkMag_std
This variables contains the mean for each activity and each subject of the standard deviation of the magnitude of the three-dimensional signals of the jerk of the acceleration of the body in the frequency domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Freq_BodyAccJerkMag_std (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 67: Mean_Freq_BodyGyroMag_std
This variables contains the mean for each activity and each subject of the standard deviation of the magnitude of the three-dimensional signals of the angular velocity of the body in the frequency domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Freq_BodyGyroMag_std (from which the mean value is shown) are normalized and bounded within [-1,1].

###Variable 68: Mean_Freq_BodyGyroJerkMag_std
This variables contains the mean for each activity and each subject of the standard deviation of the magnitude of the three-dimensional signals of the jerk of the angular velocity of the body in the frequency domain

 - Class of the variable: Integer
 - Unique values of the variable: The values in the variable Freq_BodyGyroJerkMag_std (from which the mean value is shown) are normalized and bounded within [-1,1].

##Sources
https://gist.github.com/JorisSchut/dbc1fc0402f28cad9b41 was used as template for this CodeBook
