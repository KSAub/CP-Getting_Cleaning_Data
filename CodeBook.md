##Getting and Cleaning Data Course Project: Code Book

This code book expands the existing / available codebooks by listing the variables used, and indicating the variables and averages calculated, as well as other relevant information. 


###Tidy datasets "dall" and "daverages"

This file containes the merged, filtered, and cleaned-up training and test datasets. Its fields are:

* "Subject" the person on which the measurements were being done (numeric identifier)
* "Activity" the activity performed at the time of the measurement.
* Measurements: 

- "Subject"                     
- "Activity"                    
- "BodyAccMeanX"                
- "BodyAccMeanY"               
- "BodyAccMeanZ"                
- "BodyAccStdX"                 
- "BodyAccStdY"                 
- "BodyAccStdZ"                
- "GravityAccMeanX"             
- "GravityAccMeanY"             
- "GravityAccMeanZ"             
- "GravityAccStdX"             
- "GravityAccStdY"              
- "GravityAccStdZ"              
- "BodyAccJerkMeanX"            
- "BodyAccJerkMeanY"           
- "BodyAccJerkMeanZ"            
- "BodyAccJerkStdX"             
- "BodyAccJerkStdY"             
- "BodyAccJerkStdZ"            
- "BodyGyroMeanX"               
- "BodyGyroMeanY"               
- "BodyGyroMeanZ"               
- "BodyGyroStdX"               
- "BodyGyroStdY"                
- "BodyGyroStdZ"                
- "BodyGyroJerkMeanX"           
- "BodyGyroJerkMeanY"          
- "BodyGyroJerkMeanZ"           
- "BodyGyroJerkStdX"            
- "BodyGyroJerkStdY"            
- "BodyGyroJerkStdZ"           
- "BodyAccMagMean"              
- "BodyAccMagStd"               
- "GravityAccMagMean"           
- "GravityAccMagStd"           
- "BodyAccJerkMagMean"          
- "BodyAccJerkMagStd"           
- "BodyGyroMagMean"             
- "BodyGyroMagStd"             
- "BodyGyroJerkMagMean"         
- "BodyGyroJerkMagStd"          
- "FreqBodyAccMeanX"            
- "FreqBodyAccMeanY"           
- "FreqBodyAccMeanZ"            
- "FreqBodyAccStdX"             
- "FreqBodyAccStdY"             
- "FreqBodyAccStdZ"            
- "FreqBodyAccJerkMeanX"        
- "FreqBodyAccJerkMeanY"        
- "FreqBodyAccJerkMeanZ"        
- "FreqBodyAccJerkStdX"        
- "FreqBodyAccJerkStdY"         
- "FreqBodyAccJerkStdZ"         
- "FreqBodyGyroMeanX"           
- "FreqBodyGyroMeanY"          
- "FreqBodyGyroMeanZ"           
- "FreqBodyGyroStdX"            
- "FreqBodyGyroStdY"            
- "FreqBodyGyroStdZ"           
- "FreqBodyAccMagMean"          
- "FreqBodyAccMagStd"           
- "FreqBodyBodyAccJerkMagMean"  
- "FreqBodyBodyAccJerkMagStd"  
- "FreqBodyBodyGyroMagMean"     
- "FreqBodyBodyGyroMagStd"      
- "FreqBodyBodyGyroJerkMagMean" 
- "FreqBodyBodyGyroJerkMagStd" 

The variables (measurements) used are those on the mean and standard deviation for each measurement, leaving 66 of the original 561. 

Measurements come from the accelerometer and gyroscope. They were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. Those measurements have the prefix "Freq" 

####Activities
Activities can be any of the following

- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

