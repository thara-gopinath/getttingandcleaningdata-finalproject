This file describes the variables, the data, and any transformations performed to clean up the data.


###Input Data

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This data is unzipped into UCI HAR Dataset folder in the working directory

###run_analysis.R script

The run_analysis.R script does the following steps to clean the data:

Read X_train.txt, y_train.txt and subject_train.txt from the "UCI HAR Dataset/train" folder and store them in xTrain, yTrain and subTrain variables respectively.
Read X_test.txt, y_test.txt and subject_test.txt from the ".UCI HAR Dataset/test" folder and store them in xTest, yTest and subTest variables respectively.
Rename the V1 variables in subTrain and subTest to subject.
Rename the V1 variables in yTrain and yTest to activity.
cbind subTrain, yTrain and xTrain into Train.
cbind subTest, yTest and xTest into Test.
rbind Train and Text into wearData.
Remove xTrain, yTrain, subTrain, xTest, yTest, subTest, Test and Train objects
Select only relevant columns from wearData(activity, subject and all measurements ending in mean or std) into wearData.
At this point wearData has 10299 obeservations of 68 columns.
Convert the acitivty column into a factor with six levels namely WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING
Rename columns other than subject and activity in wearData as per features.txt and features_info.txt files in UCI HAR Dataset folder
Group wearData by subject and activity respectively
Summarize rest of the columns of wearData by mean() function effectively yielding mean of each variable grouped by acivity and subject and storing this summarised data into tidyData data frame.
Write tidyData data frame into tidyData.txt file in the working directory.
Remove wearData and tidyData objects.

###Output Data
Output consists of 180 observations of 68 variables.
The first two variables are subject and activity.
There are 30 subjects in total and 6 activities namely WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING.
Rest of the variables correspond to per subject per acitivity giving rise to 180 observation in total. 
The rest of the 66 variables are 
"mean_bodyacc_along_x_axis" 
"mean_bodyacc_along_y_axis" 
"mean_bodyacc_along_z_axis" 
"std_bodyacc_along_x_axis" 
"std_bodyacc_along_y_axis" 
"std_bodyacc_along_z_axis" 
"mean_gravityacc_along_x_axis" 
"mean_gravityacc_along_y_axis"
"mean_gravityacc_along_z_axis"
"std_gravityacc_along_x_axis"
"std_gravityacc_along_y_axis"
"std_gravityacc_along_z_axis"
"mean_jerk_bodyacc_along_x_axis"
"mean_jerk_bodyacc_along_y_axis"
"mean_jerk_bodyacc_along_z_axis"
"std_jerk_bodyacc_along_x_axis"
"std_jerk_bodyacc_along_y_axis"
"std_jerk_bodyacc_along_z_axis"
"mean_bodygyro_along_x_axis"
"mean_bodygyro_along_y_axis"
"mean_bodygyro_along_z_axis"
"std_bodygyro_along_x_axis"
"std_bodygyro_along_y_axis"
"std_bodygyro_along_z_axis"
"mean_jerk_bodygyro_along_x_axis"
"mean_jerk_bodygyro_along_y_axis"
"mean_jerk_bodygyro_along_z_axis"
"std_jerk_bodygyro_along_x_axis"
"std_jerk_bodygyro_along_y_axis"
"std_jerk_bodygyro_along_z_axis"
"mean_mag_bodyacc"
"std_mag_bodyacc"
"mean_mag_gravityacc"
"std_mag_gravityacc"
"mean_jerk_mag_bodyacc"
"std_jerk_mag_bodyacc"
"mean_mag_bodygyro"
"std_mag_bodygyro"
"mean_jerk_mag_bodygyro"
"std_jerk_mag_bodygyro"
"mean_fft_bodyacc_along_x_axis"
"mean_fft_bodyacc_along_y_axis"
"mean_fft_bodyacc_along_z_axis"
"std_fft_bodyacc_along_x_axis"
"std_fft_bodyacc_along_y_axis"
"std_fft_bodyacc_along_z_axis"
"mean_fft_jerk_bodyacc_along_x_axis"
"mean_fft_jerk_bodyacc_along_y_axis"
"mean_fft_jerk_bodyacc_along_z_axis"
"std_fft_jerk_bodyacc_along_x_axis"
"std_fft_jerk_bodyacc_along_y_axis"
"std_fft_jerk_bodyacc_along_z_axis"
"mean_fft_bodygyro_along_x_axis"
"mean_fft_bodygyro_along_y_axis"
"mean_fft_bodygyro_along_z_axis"
"std_fft_bodygyro_along_x_axis"
"std_fft_bodygyro_along_y_axis"
"std_fft_bodygyro_along_z_axis"
"mean_fft_mag_bodyacc"
"std_fft_mag_bodyacc"
"mean_fft_jerk_mag_bodyacc"
"std_fft_jerk_mag_bodyacc"
"mean_fft_mag_bodygyro"
"std_fft_mag_bodygyro"
"mean_fft_jerk_mag_bodygyro"
"std_fft_jerk_mag_bodygyro"
