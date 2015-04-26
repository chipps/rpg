run_analysis <- function() {


  library(data.table)
  library( sqldf )

# Read Master Data  
  activity_labels   <- read.table("./UCI_HAR_Dataset/activity_labels.txt",header=FALSE,  stringsAsFactors=FALSE)
  colnames(activity_labels ) <- c("activityID","label")
  
# Read Test Data  
  tst_person_id   <- read.table("./UCI_HAR_Dataset/test/subject_test.txt",header=FALSE,  stringsAsFactors=FALSE)

  colnames(tst_person_id) <- c("personid")
 
  tst_activity_id   <- read.table("./UCI_HAR_Dataset/test/y_test.txt",header=FALSE,  stringsAsFactors=FALSE)
  colnames(tst_activity_id) <- c("activityid")


 tst_measures <- read.table("./UCI_HAR_Dataset/test/X_test.txt",header=FALSE,  stringsAsFactors=FALSE)


# Read Train Data

trn_person_id   <- read.table("./UCI_HAR_Dataset/train/subject_train.txt",header=FALSE,  stringsAsFactors=FALSE)

colnames(trn_person_id) <- c("personid")

trn_activity_id   <- read.table("./UCI_HAR_Dataset/train/y_train.txt",header=FALSE,  stringsAsFactors=FALSE)
colnames(trn_activity_id) <- c("activityid")


trn_measures <- read.table("./UCI_HAR_Dataset/train/X_train.txt",header=FALSE,  stringsAsFactors=FALSE)



 library(plyr)

trndata <- data.frame(trn_person_id,trn_activity_id,trn_measures)  
tstdata <- data.frame(tst_person_id,tst_activity_id,tst_measures)  

# Merges the training and the test sets to create one data set.
 alldata <- sqldf("select * from trndata union select * from tstdata")


  
  # Extracts only the measurements on the mean and standard deviation for each measurement. 

 labelz <- read.table("./UCI_HAR_Dataset/features.txt",header=FALSE,  stringsAsFactors=FALSE)
 

 
 labelz <- sqldf("select v1,replace(v2,'()','') as V2 from labelz where V2 like '%mean()%' or V2 like '%std()%' or V2 like '%meanFreq()%' ")




subst_buffer1 <- alldata[, labelz$V1+2 ]  

subst_buffer <- data.frame( alldata$personid,alldata$activityid, subst_buffer1)




# Appropriately labels the data set with descriptive variable names. 

labelz$V2 <- sub("tBodyAcc","timebodyacceleration", labelz$V2)

labelz$V2 <- sub("-meanFreq","averagefrequency", labelz$V2)

labelz$V2 <- sub("-mean","average", labelz$V2)

labelz$V2 <- sub("-std","standarddeviation", labelz$V2)

labelz$V2 <- sub("tGravityAcc","timegravityacceleration", labelz$V2)

labelz$V2 <- sub("tBodyGyro","timebodygyroscope", labelz$V2)

labelz$V2 <- sub("Mag","magnitude", labelz$V2)

labelz$V2 <- sub("fBodyAcc","frequencydomainbodyacceleration", labelz$V2)

labelz$V2 <- sub("fBodyGyro","frequencydomainbodygyroscope", labelz$V2)


labelz$V2 <- sub("fBodyBodyAcc","frequencydomainbodyacceleration", labelz$V2)

labelz$V2 <- sub("fBodyBodyGyro","frequencydomainbodygyroscope", labelz$V2)

labelz$V2 <- sub("-","", tolower(labelz$V2) )


column_buffer <- c( "personid",'activity')

final_column_buffer <- append(column_buffer, labelz$V2 )

 colnames( subst_buffer) <- final_column_buffer

# Uses descriptive activity names to name the activities in the data set

repl_df <-  sqldf("select x.*,y.label from subst_buffer x, activity_labels y where x.activity = y.activityID")

repl_df$activity <- repl_df$label

repl_df$label <- NULL



# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  

tidy_df <- aggregate( repl_df[,3:81], repl_df[,1:2], FUN = mean)

write.table( format(tidy_df,scientific=TRUE), "upload.txt", quote=FALSE, row.names = FALSE)
  
  
}
