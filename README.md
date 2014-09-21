Getting and Cleaning Data
=========================

This is a repo for a data science course **Getting and Cleaning Data**, held on the [Coursera Website] (http://www.coursera.org/course/getdata).

The script **run_analysis.R** transforms the data from the [Human Activity Recognition Project] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), which is available for download as a zip file [here] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

In order to reproduce the transformation you should download the data file, unzip it and copy the script into the **UCI HAR Dataset** directory. Having this done, you should enter this directory and run the script:

```
$ Rscript run_analysis.R

```
The output you get will be average mean and standard deviation for each measurement, done in the project, grouped by subjects, who took part in the experiment, and their activity.

Detailed description of the variables you may find in the Code Book.
