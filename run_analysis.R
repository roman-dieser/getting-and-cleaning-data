#Rscript run_analysis.R

trainset <- read.table("train/X_train.txt")
testset <- read.table("test/X_test.txt")
feature <- read.table("features.txt")

sample <- c()
sample_index <- c()

for(i in 1:nrow(feature)){
    if (
        (length(grep('mean()', feature[i,2], fixed=TRUE)) > 0)
        ||
        (length(grep('std()', feature[i,2], fixed=TRUE)) > 0)
       ) {
        train_sample <- trainset[, c(feature[i,1])]
        test_sample <- testset[, c(feature[i,1])]
        sample <- cbind(sample, c(train_sample, test_sample))
        sample_index <- cbind(sample_index, c(i))   
    }
}

colnames(sample) <- feature[sample_index, 2]

write.table(sample, "sample.txt")

activity_labels <- read.table("activity_labels.txt")
activity_train_codes <- read.table("train/y_train.txt")
activity_test_codes <- read.table("test/y_test.txt")

activity_merged <- merge(rbind(activity_train_codes, activity_test_codes), activity_labels, by=1)
activity <- activity_merged[,2]

subjects_train <- read.table("train/subject_train.txt")
subjects_test <- read.table("test/subject_test.txt")
subjects <- rbind( 
    sapply(subjects_train, paste0, "_train_subject"), 
    sapply(subjects_test, paste0, "_test_subject")
)

samp <- read.table("sample.txt")
agr <- aggregate(samp, list(activity, subjects), FUN=mean)
print(agr)
write.table(agr, "sample-aggregated.txt", row.names=FALSE)
