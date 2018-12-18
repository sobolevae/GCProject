# GCProject
## Getting and cleaning data - Coursera course project

The point of this project is to take data from an external source available, and then transform it into a more convenient tidy form for further analysis.
The original data provided by [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
(can be downloaded as zip-archive [this resource](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)).

**The project tasks were:**
1. Download data from given resource.
2. Write R-script to transform raw data into a resulting tidy dataset as following:
    1. Load data from various text files, and merge them into a single dataset.
    2. Extract values of the mean and standard deviation for each measurement.
    3. Use descriptive activity names instead of the numbers, correctly rename dataset variables.
    4. Create a new tidy dataset with the average of each variable for activities and subjects.
    5. Save resulting tidy dataset into a text file.
3. Make a codebook describing the resulting tidy dataset.
4. Prepare a README file describing the project.

**Solution consists of the following steps:**
1. Downloading the data from an [available resource](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), unzipping the data into the working folder.
1. Writing R-script that transforms raw data containing in a folder "UCI HAR Dataset" in the working directory into a tidy dataset by doing following steps:
    1. loading 6 source .txt-files of "test" and "training" data into dataframes in R;
    1. renaming variables of dataframes to name them more descriptive and to prepare dataframes for merge;
    1. merging 6 initial dataframes into single dataframe "res" for further operations;
    1. loading features data into a dataframe "features" in R;
    1. adding two variables into a "features" dataframe that represent feature names and subsetting rule (TRUE if the feature name contents "mean" or "std" and FLASE otherwise) for the resulting tidy dataset.
    1. obtaining two vectors by subsetting "features" dataframe: character vector "newname" for the variable names and a logical vector "istarget" for subsetting "res" dataframe;
    1. renaming the variables of "res" dataframe using the "newname" vector;
    1. subsetting "res" dataframe by "istarget" vector;
    1. loading data of the activity names into a "activ" dataframe; replacing activity numbers in "res" dataframe with their names by columns of "activ" dataframe
    1. obtaining the resulting tidy dataframe "res_tidy" by grouping the "res" dataframe by "person.id" (subject) and "activity" columns and getting the averages of all the measurements (features).
    1. saving "res_tidy" dataframe as a text file "res_tydy.txt" into a working directory
1. Writing a codebook describing the resulting tidy dataset.
1. Preparing README file describing the project.
1. Uploading project results into a repo on github.

**How to use the project results:**
1. Download zipped data from [this resource](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and unzip them in your working directory. As a result you should have a folder "UCI HAR Dataset" in your working directory.
2. Download R-script "run_analysis.R" into your working directory and execute it in R-environment ("dplyr" package should be installed properly). As a result you will have file "res_tydy.txt" in your working directory. It contains a resulting clear dataset. You can also view and analyse the res_tidy variable in R-environment, after you run the script.
3. Consult the "CodeBook.md" for more information about the data of a resulting dataset.
