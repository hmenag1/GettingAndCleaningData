##Reading the files

source ("J:/Documents/Utilities/Data Tools/R/MyFunctions/getDir.R")

machine <- "PNY Silver"
#machine <- "Browny"

dir.part1 <- getDir("pny silver", "getting and cleaning data")
dir.part2 <- file.path("Week 3","Assignment", "Data","UCI HAR Dataset")
dir.parts <- file.path(dir.part1,dir.part2)
dir.train <- file.path(dir.parts,"train")
dir.test  <- file.path(dir.parts, "test")




## Upload labels and feature names
activities <- read.csv(file.path(dir.parts, "activity_labels.txt"), 
                       header=FALSE,sep=" ")

features <- read.csv(file.path(dir.parts, "features.txt"), 
                     header=FALSE,sep=" ",stringsAsFactors=FALSE)


Xtrainfile <- file.path(dir.train, "X_train.txt")
Ytrainfile <- file.path(dir.train, "y_train.txt")
Subtrainfile <- file.path(dir.train, "subject_train.txt")


colLabs <- features
colLabs$V2 <- as.character(NA)


## Fixing the feature labels
vl <- dim(colLabs)[1]


for (intx in 1:vl){
  colLabs[intx,2] <- gsub("()","",features[intx,2],fixed=TRUE)  
}

for (intx in 1:vl){
  colLabs[intx,2] <- gsub(",","_",colLabs[intx,2],fixed=TRUE)  
}

for (intx in 1:vl){
  colLabs[intx,2] <- gsub("-","_",colLabs[intx,2],fixed=TRUE)  
}

for (intx in 1:vl){
  colLabs[intx,2] <- gsub("(","_",colLabs[intx,2],fixed=TRUE)  
}

for (intx in 1:vl){
  colLabs[intx,2] <- gsub(")","_",colLabs[intx,2],fixed=TRUE)  
}

#Label the files
for (intx in 1:vl){
  colLabs[intx,2] <- gsub(")","_",colLabs[intx,2],fixed=TRUE)  
}

colLabs <- colLabs[order(colLabs$V1),]

fnames <- colLabs$V2

## Upload train and test data sets 
Xtrain <- read.table(Xtrainfile)
colnames(Xtrain) <- fnames
Xtrain$ID <- paste("train", rownames(Xtrain),sep="")
Ytrain <- read.table(Ytrainfile)
colnames(Ytrain) <- c("act")
subtrain <- read.table(Subtrainfile)
colnames(subtrain) <- c("subject")
XYtrain <- cbind(Ytrain, subtrain, Xtrain)


Xtestfile <- file.path(dir.test, "X_test.txt")
Ytestfile <- file.path(dir.test, "y_test.txt")
Subtestfile <- file.path(dir.test, "subject_test.txt")


#Xtest <- read.table(Xtestfile,nrow=100)
Xtest <- read.table(Xtestfile)
colnames(Xtest) <- fnames
Xtest$ID <- paste("test", rownames(Xtest),sep="")
Ytest <- read.table(Ytestfile)
colnames(Ytest) <- c("act")
subtest <- read.table(Subtestfile)
colnames(subtest) <- c("subject")
XYtest <- cbind(Ytest,subtest,Xtest)


## Merge both files
XYmerged <- rbind(XYtrain,XYtest )


cnt <- dim(activities)[1]

for (x in 1:cnt){
  XYmerged$activities[XYmerged$act==x] <- as.character(activities[x,2]) 
}

## Select the measurements on the mean and standard deviation
newNames <- colLabs$V2
xmean <- grepl("mean",newNames, ignore.case=TRUE)
xstd <- grepl("std",newNames, ignore.case=TRUE)
meanvars <- colLabs[xmean,]
stdvars <- colLabs[xstd,]
selvars <- rbind(meanvars,stdvars)
selvars <- selvars[order(selvars$V1),]
nfields <- selvars$V1
nfieldscomp <- nfields +2
XYmergedFinal <- XYmerged[c(564:565,1:2,nfieldscomp)]
XYmergedFinal <- XYmergedFinal[c(-3)]

############## Tidy Data Set

dataset <- XYmergedFinal

source("calcmeans.R")
