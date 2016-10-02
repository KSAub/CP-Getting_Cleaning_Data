#download and unzip the dataset, remove .zip-file
if(!file.exists("./data")) {dir.create("./data")}
fUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fUrl, destfile = "./data/Dataset.zip")

unzip("./data/Dataset.zip", list = FALSE, exdir = "./data", unzip = "internal")
file.remove("./data/Dataset.zip")

#change working directory to extracted files root folder
setwd("./data/UCI HAR Dataset")

#read the features, and turn feature list into a vector in order to add it as column name
# to the training / test data
dLabels <- read.table("features.txt")
dLab <- as.vector(dLabels[,2])

#read the training/test data, add column names
dtrain <- read.table("./train/X_train.txt", col.names = dLab)
dtest <- read.table("./test/X_test.txt", col.names = dLab)

#read the activity label for train / test data, add col name
dtrainact <- read.table("./train/y_train.txt", col.names = "activity")
dtestact <- read.table("./test/y_test.txt", col.names = "activity")

#read the subject label for train data, add col name
dtrainsub <- read.table("./train/subject_train.txt", col.names = "subject")
dtestsub <- read.table("./test/subject_test.txt", col.names = "subject")

# regular expression for selecting only mean and standard deviation measurements
search.rex <- "([Mm]ean|[Ss]td)\\(\\)" #searching for this expression: mean() or std()
"([Mm]ean|[Ss]td)(\\(\\))?" # looks for all expressions, the () are optional

#restrict the training /test data to the variables defined by search.rex
filter <- grepl(search.rex, dLabels$V2)

dtrain <- dtrain[,filter]
dtest <- dtest[,filter]

# combine subject, activity and train/test data 
trainData <- cbind(dtrainsub,dtrainact,dtrain)
testData <- cbind(dtestsub, dtestact,dtest)
dall <- rbind(trainData, testData)

#rename columns
colnames(dall)[1]<-"Subject"
colnames(dall)[2]<-"Activity"
colnames(dall) <- gsub("\\(|\\)|\\-|\\.","", colnames(dall))
colnames(dall) <- gsub("^t","", colnames(dall))
colnames(dall) <- gsub("^f","Freq", colnames(dall))
colnames(dall) <- gsub("mean","Mean", colnames(dall))
colnames(dall) <- gsub("std","Std", colnames(dall))

#use the descriptive activity names
activities <- read.table("activity_labels.txt")[,2]
dall$Activity <- activities[dall$Activity]

#use dplyr to calculate the average of each variable for each activity and each subject.
library(dplyr)
daverage <- dall %>% group_by(Subject,Activity) %>% summarise_each(funs(mean(., na.rm=TRUE))) %>% as.data.frame()

# return to our previous working directory
setwd("../..")
