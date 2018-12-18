# GCProject
## Getting and cleaning data - Coursera course project

The objective of the project was to get data from an external available source and transform them in a more convevient tidy form for futher analysis.
The original data were provided by [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) y were downloaded in a zip-archive from [this resource](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

**The project tasks were:**
1. Get the data from an available resource.
2. Write R-script that transforms the raw data into a resulting tidy dataset by the following steps:
    1. Get the data from various .txt-files and merge them into a single dataset.
    2. Extract only the measurements on the mean and standard deviation for each measurement.
    3. Use descriptive activity names instead of the numbers, appropriately rename dataset variables.
    4. Create a new tidy dataset with the average of each variable for each activity and each subject.
    5. Save resulting tidy dataset into a .txt-file.
3. Make a codebooke describing the resulting tidy dataset.
4. Prepare a README describing the project.

**The project consisted of the following steps:**
1. Downloading the data from an [available resource](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), unzipping the data into the working folder. 
1. Writing R-script that transforms raw data containing in a folder "UCI HAR Dataset" in the working directory into a tidy dataset by doing following steps:
    1. loading 6 source .txt-files of "test" and "traning" data into dataframes in R;
    1. renaming variables of dataframes for make their names more descriptive and for prepare dataframes for merge;
    1. merging 6 initial dataframes in one dataframe "res" for futher transformations;
    1. loading features data into a dataframe "features" in R;
    1. adding two varialbes into a "features" dataframe that represent feature names and subsetting rule (TRUE if the feature name contents "mean" or "std" and FLASE otherwise) for the resulting tidy dataset.
    1. obtaining two vectors by subsetting "features" dataframe: character vector "newname" for the variable names and a logical vector "istarget" for subsetting "res" dataframe;
    1. renaming the variables of "res" dataframe using the "newname" vector;
    1. subsetting "res" dataframe by "istarget" vector;
    1. loading data of the activity names into a "activ" dataframe; replacing activity numbers in "res" dataframe with their names by columns of "activ" dataframe
    1. obtaining the resulting tidy dataframe "res_tidy" by gouping the "res" dataframe by "person.id" (subject) and "activity" columns and getting the avarages of all the measuremens (features).
    1. saving "res_tidy" dataframe as a .txt-file "res_tydy.txt" into a working directory
1. Wring a codebook describing the resulting tidy dataset.
1. Preparing readme file describing the project.
1. Loading project results into a repo on github.

**How to use the project results:**
1. Download zipped data from [this resource](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and unzip them in your working directory. The result of this step should be a folder named "UCI HAR Dataset" in your working directory.
2. Put R-script "run_analysis.R" into your working directory and execute it in R-environment ("dplyr" package should be installed previously). The result of this step will be the file "res_tydy.txt" in your working directory. This is a resulting clear dataset. You can also view and analyse the res_tidy variable in R-environment where the script was run.
3. Consult the "CodeBook.md" for more information about the data of a resulting dataset.
