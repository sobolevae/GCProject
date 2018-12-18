#loading a library "dplyr" with dataset functions
library(dplyr)

#loading test data into "res_test" dataset 
s_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
colnames(s_test) <- c("person.id")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
colnames(y_test) <- c("activity")
res_test <- bind_cols(s_test, y_test, x_test)

#loading train data into "res_train" dataset 
s_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
colnames(s_train) <- c("person.id")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
colnames(y_train) <- c("activity")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
res_train <- bind_cols(s_train, y_train, x_train)

#binding test and train datasets into "res" dataset
res <- bind_rows(res_test, res_train)

#loading features data with names for the variables of resulting dataset
features <- read.table("UCI HAR Dataset/features.txt")
colnames(features) <- c("fnum", "fname")

#adding two columns into "features" dataset: 
#  "istarget" (TRUE / FALSE) shows if the feature is to be included in a resulting dataset 
#    (if it has "mean" or "std" in it's name)
#  "newname" prepares the names for the variables that are to be included in a resulting dataset
#    (converts the names of the target columns in a character type and puts "col <colnumber>" for the others)
features <- mutate(features, 
                  istarget = grepl("mean|std", fname), 
                  newname = ifelse(istarget, as.character(fname), paste0("col", as.character(fnum))))

#preparing a character vector for the names of variables for the resulting dataset
new_name <- c("person.id", "activity", features$newname)
#preparing a logical vector for the selection of variables for the resulting dataset
is_target <- c(TRUE, TRUE, features$istarget)

#renaming the variables in resulting dataset
colnames(res) <- new_name
#subsetting of a resulting dataset for select only the variables that contain "mean" or "std" in their names
#  the resulting dataset does not contain columns called "col <colnumber>"
res <- subset(res, TRUE, is_target)

#loading activity names data
activ <- read.table("UCI HAR Dataset/activity_labels.txt")
#replacing numbers of activities with their names in a resulting dataset
res <- mutate(res, activity=activ[activity, 2])

#obtaining tidy dataset 
#  by grouping by the variables "person.id" and "activity" 
#  and summarizing getting the average values of feature columns
res_tidy <- group_by(res, person.id, activity) %>% summarize_all(mean)

#saving resulting tidy dataset into a text file
write.table(res_tidy, "res_tydy.txt", row.names = FALSE)

# variable "res_tidy" now contains resulting tidy dataset
# resulting tidy dataset is saved into a file "res_tydy.txt" in user's working directory
