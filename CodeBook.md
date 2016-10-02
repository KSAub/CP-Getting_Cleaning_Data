##Getting and Cleaning Data Course Project: Code Book

This code book expands the existing / available codebooks by listing the variables used, and indicating the variables and averages calculated, as well as other relevant information. 


###Tidy datasets "dall" and "daverages"

This file containes the merged, filtered, and cleaned-up training and test datasets. Its fields are:

[1] "Subject"                     "Activity"                    "BodyAccMeanX"                "BodyAccMeanY"               
 [5] "BodyAccMeanZ"                "BodyAccStdX"                 "BodyAccStdY"                 "BodyAccStdZ"                
 [9] "GravityAccMeanX"             "GravityAccMeanY"             "GravityAccMeanZ"             "GravityAccStdX"             
[13] "GravityAccStdY"              "GravityAccStdZ"              "BodyAccJerkMeanX"            "BodyAccJerkMeanY"           
[17] "BodyAccJerkMeanZ"            "BodyAccJerkStdX"             "BodyAccJerkStdY"             "BodyAccJerkStdZ"            
[21] "BodyGyroMeanX"               "BodyGyroMeanY"               "BodyGyroMeanZ"               "BodyGyroStdX"               
[25] "BodyGyroStdY"                "BodyGyroStdZ"                "BodyGyroJerkMeanX"           "BodyGyroJerkMeanY"          
[29] "BodyGyroJerkMeanZ"           "BodyGyroJerkStdX"            "BodyGyroJerkStdY"            "BodyGyroJerkStdZ"           
[33] "BodyAccMagMean"              "BodyAccMagStd"               "GravityAccMagMean"           "GravityAccMagStd"           
[37] "BodyAccJerkMagMean"          "BodyAccJerkMagStd"           "BodyGyroMagMean"             "BodyGyroMagStd"             
[41] "BodyGyroJerkMagMean"         "BodyGyroJerkMagStd"          "FreqBodyAccMeanX"            "FreqBodyAccMeanY"           
[45] "FreqBodyAccMeanZ"            "FreqBodyAccStdX"             "FreqBodyAccStdY"             "FreqBodyAccStdZ"            
[49] "FreqBodyAccJerkMeanX"        "FreqBodyAccJerkMeanY"        "FreqBodyAccJerkMeanZ"        "FreqBodyAccJerkStdX"        
[53] "FreqBodyAccJerkStdY"         "FreqBodyAccJerkStdZ"         "FreqBodyGyroMeanX"           "FreqBodyGyroMeanY"          
[57] "FreqBodyGyroMeanZ"           "FreqBodyGyroStdX"            "FreqBodyGyroStdY"            "FreqBodyGyroStdZ"           
[61] "FreqBodyAccMagMean"          "FreqBodyAccMagStd"           "FreqBodyBodyAccJerkMagMean"  "FreqBodyBodyAccJerkMagStd"  
[65] "FreqBodyBodyGyroMagMean"     "FreqBodyBodyGyroMagStd"      "FreqBodyBodyGyroJerkMagMean" "FreqBodyBodyGyroJerkMagStd" 

* "Subject" the person on which the measurements were being done (numeric identifier)
* "Activity" the activity performed at the time of the measurement.

The variables (measurements) used are those on the mean and standard deviation for each measurement, leaving 66 of the original 561. 

Measurements come from the accelerometer and gyroscope. They were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. Those measurements have the prefix "Freq" 


Activities can be any of the following

WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING

