# CP-Getting_Cleaning_Data
The repository for the course project for the course "Getting and Cleaning Data" from the data science specialisation from JHU. 

This is my submission for the week 4 programming assignment for the Coursera course "Getting and Cleaning Data". The files in this repository are:

* README.md This file
* run_analysis.R An R file containing the code to 
a - download the zip-file and unzip it
b - read the train and test data
c - add subjects, activities and more eligible measurement names
d - create a dataset with the average of each variable for each activity and each subject.

* CodeBook.md A code book looking at the measurements in the new tidy datasets "dall" and "daverages", which are generated by the run_analysis.R code


####Downloading the datasets

run_analysis.R will download the zipfile into a folder "data", which will be created in your working directory, switch your working directory to the folder "UCI HAR Dataset" and switch to your original working directory after it has run its course. 
