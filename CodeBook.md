# SUMMARY OF DATA collected from the accelerometers from the Samsung Galaxy S smartphone within the project "Human Activity Recognition Using Smartphones Data Set"

### Prepared as a course project within "Getting and Cleaning Data" Coursera course as a part of "Data Science" specialization


### Student: Ekaterina Soboleva


### December, 2018


**Data source**


The dataset provided is based on the data of [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#) that contaisn data of the experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. The source data were obtained from [this resource](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

**Processing the data**


The dataset was created from the initial data by integration all the data into one dataset, extracting only the measurements on the mean and standard deviation for each measurement and summarizing the data getting the the average for each activity and each subject. 

**Data format**


The data is provided as a single .txt file named "res_tydy.txt". The file has 181 lines. The first line contains variable names and the other 180 lines contain the average values for each of 79 measurements for each activity and each subject. The values in each line are separated by a single space symbol.

**Variable description**
1. "person.id":

  type: numeric; range of values from 1 to 30

  represents the ids of persons (subjects) who performed the activities.

2. "activity":

  type: character; one of the strings from the list <WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING>

  represent the activity performed

3 - 81. average values of 79 measurements

type: numeric

The names of measurement variables repeat the featute names of the source data. The measurements are 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. Measurements are normalized and bounded within [-1,1].

For more information about the measurement variables please consult [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

