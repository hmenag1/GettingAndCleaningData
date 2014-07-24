##Reading the files
dir.part1 <- file.path("C:","Users","Henri","SkyDrive","Documents")
dir.part2 <- file.path("Career","Training", "Coursera")
dir.part3 <- file.path("Getting and Cleaning Data")
dir.part4 <- file.path("Week 3","Assignment", "Data","UCI HAR Dataset")
dir.parts <- file.path(dir.part1,dir.part2,dir.part3,dir.part4)
dir.train <- file.path(dir.parts,"train")
dir.test  <- file.path(dir.parts, "test")

Xtrainfile <- file.path(dir.train, "X_train.txt")
Ytrainfile <- file.path(dir.train, "y_train.txt")
Subtrainfile <- file.path(dir.train, "subject_train.txt")

#Xtrain <- read.table(Xtrainfile,nrow=100)
Xtrain <- read.table(Xtrainfile)
Xtrain$ID <- paste("train", rownames(Xtrain),sep="")
Ytrain <- read.table(Ytrainfile)
colnames(Ytrain) <- c("lab")
subtrain <- read.table(Subtrainfile)
colnames(subtrain) <- c("subject")
XYtrain <- cbind(Ytrain, subtrain, Xtrain)



Xtestfile <- file.path(dir.test, "X_test.txt")
Ytestfile <- file.path(dir.test, "y_test.txt")
Subtestfile <- file.path(dir.test, "subject_test.txt")


#Xtest <- read.table(Xtestfile,nrow=100)
Xtest <- read.table(Xtestfile)
Xtest$ID <- paste("test", rownames(Xtest),sep="")
Ytest <- read.table(Ytestfile)
colnames(Ytest) <- c("lab")
subtest <- read.table(Subtestfile)
colnames(subtest) <- c("subject")
XYtest <- cbind(Ytest,subtest,Xtest)


## Merge both files
XYmerged <- rbind(XYtrain,XYtest )
