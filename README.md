# getttingandcleaningdata-finalproject
Project Work for Getting and Cleaning Data Coursera Data Science Course

###Description

The script run_analysis.R cleans up the  data collected from the
accelerometers from Samsung Galaxy S Smartphone 

###Input

The input files to the script are
	subject_train.txt
	y_train.txt
	X_train.txt
placed in "UCI HAR Dataset/train" directory in the working directory
and
	subject_test.txt
	y_test.txt
	X_test.txt
placed in "UCI HAR Dataset/test" directory in the working directory


### Running the script

source("run_analysis.R") 

###Output

The output tidy data is placed in tidyData.txt file in the working directory.
To read the tidy data execute the following,
	tidyData <- read.table("tidyData.txt", header = TRUE)
	View(tidyData)
