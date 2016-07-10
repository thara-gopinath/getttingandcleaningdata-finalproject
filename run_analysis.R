library(dplyr)
subTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
yTrain <- read.table("UCI HAR Dataset/train/y_train.txt")
xTrain <- read.table("UCI HAR Dataset/train/X_train.txt")
subTest <- read.table("UCI HAR Dataset/test/subject_test.txt")
yTest <- read.table("UCI HAR Dataset/test/y_test.txt")
xTest <- read.table("D:/Data Science/UCI HAR Dataset/test/X_test.txt")
subTrain <- rename(subTrain, subject = V1 )
subTest <- rename(subTest, subject = V1 )
yTest <- rename(yTest, activity = V1 )
yTrain <- rename(yTrain, activity = V1 )

Train <- cbind(subTrain, yTrain, xTrain)
Test <- cbind(subTest, yTest, xTest)
wearData <- rbind(Train, Test)
rm(subTest, subTrain, xTest, xTrain, yTest, yTrain, Train, Test)
wearData <- select(wearData, c(subject, activity, V1:V6, V41:V46, V81:V86,
                               V121:V126, V161:V166, V201, V202, V214, V215,
                               V227, V228, V240, V241, V253, V254, V266:V271,
                               V345:V350, V424:V429, V503, V504, V516, V517,
                               V529, V530, V542, V543))
wearData$activity <- factor(wearData$activity, levels = c(1, 2, 3, 4, 5, 6),
                            labels = c("WALKING", "WALKING_UPSTAIRS",
                                       "WALKING_DOWNSTAIRS", "SITTING",
                                        "STANDING", "LAYING"))
wearData <- rename(wearData, mean_bodyacc_along_x_axis = V1,
                        mean_bodyacc_along_y_axis = V2,
                        mean_bodyacc_along_z_axis = V3,
                        std_bodyacc_along_x_axis = V4,
                        std_bodyacc_along_y_axis = V5,
                        std_bodyacc_along_z_axis = V6,
                        mean_gravityacc_along_x_axis = V41,
                        mean_gravityacc_along_y_axis = V42,
                        mean_gravityacc_along_z_axis = V43,
                        std_gravityacc_along_x_axis = V44,
                        std_gravityacc_along_y_axis = V45,
                        std_gravityacc_along_z_axis = V46,
                        mean_jerk_bodyacc_along_x_axis = V81,
                        mean_jerk_bodyacc_along_y_axis = V82,
                        mean_jerk_bodyacc_along_z_axis = V83,
                        std_jerk_bodyacc_along_x_axis = V84,
                        std_jerk_bodyacc_along_y_axis = V85,
                        std_jerk_bodyacc_along_z_axis = V86,
                        mean_bodygyro_along_x_axis = V121,
                        mean_bodygyro_along_y_axis = V122,
                        mean_bodygyro_along_z_axis = V123,
                        std_bodygyro_along_x_axis = V124,
                        std_bodygyro_along_y_axis = V125,
                        std_bodygyro_along_z_axis = V126,
                        mean_jerk_bodygyro_along_x_axis = V161,
                        mean_jerk_bodygyro_along_y_axis = V162,
                        mean_jerk_bodygyro_along_z_axis = V163,
                        std_jerk_bodygyro_along_x_axis = V164,
                        std_jerk_bodygyro_along_y_axis = V165,
                        std_jerk_bodygyro_along_z_axis = V166,
                        mean_mag_bodyacc = V201, std_mag_bodyacc = V202,
                        mean_mag_gravityacc = V214, std_mag_gravityacc = V215,
                        mean_jerk_mag_bodyacc = V227,
                        std_jerk_mag_bodyacc = V228,
                        mean_mag_bodygyro = V240, std_mag_bodygyro = V241,
                        mean_jerk_mag_bodygyro = V253,
                        std_jerk_mag_bodygyro = V254,
                        mean_fft_bodyacc_along_x_axis = V266,
                        mean_fft_bodyacc_along_y_axis = V267,
                        mean_fft_bodyacc_along_z_axis = V268,
                        std_fft_bodyacc_along_x_axis = V269,
                        std_fft_bodyacc_along_y_axis = V270,
                        std_fft_bodyacc_along_z_axis = V271,
                        mean_fft_jerk_bodyacc_along_x_axis = V345,
                        mean_fft_jerk_bodyacc_along_y_axis = V346,
                        mean_fft_jerk_bodyacc_along_z_axis = V347,
                        std_fft_jerk_bodyacc_along_x_axis = V348,
                        std_fft_jerk_bodyacc_along_y_axis = V349,
                        std_fft_jerk_bodyacc_along_z_axis = V350,
                        mean_fft_bodygyro_along_x_axis = V424,
                        mean_fft_bodygyro_along_y_axis = V425,
                        mean_fft_bodygyro_along_z_axis = V426,
                        std_fft_bodygyro_along_x_axis = V427,
                        std_fft_bodygyro_along_y_axis = V428,
                        std_fft_bodygyro_along_z_axis = V429,
                        mean_fft_mag_bodyacc = V503, std_fft_mag_bodyacc = V504,
                        mean_fft_jerk_mag_bodyacc = V516,
                        std_fft_jerk_mag_bodyacc = V517,
                        mean_fft_mag_bodygyro = V529,
                        std_fft_mag_bodygyro = V530,
                        mean_fft_jerk_mag_bodygyro = V542,
                        std_fft_jerk_mag_bodygyro = V543)
wearData <- group_by(wearData, subject, activity)
tidyData <- summarise_each(wearData, funs(mean))
write.table(tidyData, "tidyData.txt", row.name = FALSE)
rm(wearData, tidyData)