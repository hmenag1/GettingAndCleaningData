
################################ This script calculates the means of each
### selected variables and should be called from run_analysis.R

library(plyr)

allvars <- c("subject","activities", selvars$V2[1:86])

##samavg <- eval(paste("ddply(dataset, c('subject','activities'), summarize,
##                sum= mean(", allvars, "))"))

samavg1 <- ddply(dataset, c('subject','activities'), summarize,
                sum= mean(tBodyAcc_mean_X))
samavg <- samavg1
#colnames(samavg) <- c("subject","activities", "tBodyAcc_mean_X")

samavg2 <- ddply(dataset, c('subject','activities'), summarize,
                sum= mean(tBodyAcc_mean_Y))
samavg <- cbind(samavg, samavg2[,3])

samavg3 <- ddply(dataset, c('subject','activities'), summarize,
                 sum= mean(tBodyAcc_mean_Z))
samavg <- cbind(samavg, samavg3[,3])

samavg4 <- ddply(dataset, c('subject','activities'), summarize,
                 sum= mean(tBodyAcc_std_X))
samavg <- cbind(samavg, samavg4[,3])

samavg5 <- ddply(dataset, c('subject','activities'), summarize,
                 sum= mean(tBodyAcc_std_Y))
samavg <- cbind(samavg, samavg5[,3])

samavg6 <- ddply(dataset, c('subject','activities'), summarize,
                 sum= mean(tBodyAcc_std_Z))
samavg <- cbind(samavg, samavg6[,3])

samavg7 <- ddply(dataset, c('subject','activities'), summarize,
                 sum= mean(tGravityAcc_mean_X))
samavg <- cbind(samavg, samavg7[,3])

samavg8 <- ddply(dataset, c('subject','activities'), summarize,
                 sum= mean(tGravityAcc_mean_Y))
samavg <- cbind(samavg, samavg8[,3])

samavg9 <- ddply(dataset, c('subject','activities'), summarize,
                 sum= mean(tGravityAcc_mean_Z))
samavg <- cbind(samavg, samavg9[,3])

samavg10 <- ddply(dataset, c('subject','activities'), summarize,
                 sum= mean(tGravityAcc_std_X))
samavg <- cbind(samavg, samavg10[,3])

samavg11 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(tGravityAcc_std_Y))
samavg <- cbind(samavg, samavg11[,3])

samavg12 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(tGravityAcc_std_Z))
samavg <- cbind(samavg, samavg12[,3])

samavg13 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(tBodyAccJerk_mean_X))
samavg <- cbind(samavg, samavg13[,3])

samavg14 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(tBodyAccJerk_mean_Y))
samavg <- cbind(samavg, samavg14[,3])

samavg15 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(tBodyAccJerk_mean_Z))
samavg <- cbind(samavg, samavg15[,3])

samavg16 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(tBodyAccJerk_std_X))
samavg <- cbind(samavg, samavg16[,3])

samavg17 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(tBodyAccJerk_std_Y))
samavg <- cbind(samavg, samavg17[,3])

samavg18 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(tBodyAccJerk_std_Z))
samavg <- cbind(samavg, samavg18[,3])

samavg19 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(tBodyGyro_mean_X))
samavg <- cbind(samavg, samavg19[,3])

samavg20 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(tBodyGyro_mean_Y))
samavg <- cbind(samavg, samavg20[,3])

samavg21 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(tBodyGyro_mean_Z))
samavg <- cbind(samavg, samavg21[,3])

samavg22 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(tBodyGyro_std_X))
samavg <- cbind(samavg, samavg22[,3])

samavg23 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(tBodyGyro_std_Y))
samavg <- cbind(samavg, samavg23[,3])

samavg24 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(tBodyGyro_std_Z))
samavg <- cbind(samavg, samavg24[,3])

samavg25 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(tBodyGyroJerk_mean_X))
samavg <- cbind(samavg, samavg25[,3])

samavg26 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(tBodyGyroJerk_mean_Y))
samavg <- cbind(samavg, samavg26[,3])

samavg27 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(tBodyGyroJerk_mean_Z))
samavg <- cbind(samavg, samavg27[,3])

samavg28 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(tBodyGyroJerk_std_X))
samavg <- cbind(samavg, samavg28[,3])

samavg29 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(tBodyGyroJerk_std_Y))
samavg <- cbind(samavg, samavg29[,3])

samavg30 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(tBodyGyroJerk_std_Z))
samavg <- cbind(samavg, samavg30[,3])

samavg31 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(tBodyAccMag_mean))
samavg <- cbind(samavg, samavg31[,3])

samavg32 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(tBodyAccMag_std))
samavg <- cbind(samavg, samavg32[,3])

samavg33 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(tGravityAccMag_mean))
samavg <- cbind(samavg, samavg33[,3])

samavg34 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(tGravityAccMag_std))
samavg <- cbind(samavg, samavg34[,3])

samavg35 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(tBodyAccJerkMag_mean))
samavg <- cbind(samavg, samavg35[,3])

samavg36 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(tBodyAccJerkMag_std))
samavg <- cbind(samavg, samavg36[,3])

samavg37 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(tBodyGyroMag_mean))
samavg <- cbind(samavg, samavg37[,3])

samavg38 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(tBodyGyroMag_std))
samavg <- cbind(samavg, samavg38[,3])

samavg39 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(tBodyGyroJerkMag_mean))
samavg <- cbind(samavg, samavg39[,3])

samavg40 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(tBodyGyroJerkMag_std))
samavg <- cbind(samavg, samavg40[,3])

samavg41 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyAcc_mean_X))
samavg <- cbind(samavg, samavg41[,3])

samavg42 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyAcc_mean_Y))
samavg <- cbind(samavg, samavg42[,3])

samavg43 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyAcc_mean_Z))
samavg <- cbind(samavg, samavg43[,3])

samavg44 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyAcc_std_X))
samavg <- cbind(samavg, samavg44[,3])

samavg45 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyAcc_std_Y))
samavg <- cbind(samavg, samavg45[,3])

samavg46 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyAcc_std_Z))
samavg <- cbind(samavg, samavg46[,3])

samavg47 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyAcc_meanFreq_X))
samavg <- cbind(samavg, samavg47[,3])

samavg48 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyAcc_meanFreq_Y))
samavg <- cbind(samavg, samavg48[,3])

samavg49 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyAcc_meanFreq_Z))
samavg <- cbind(samavg, samavg49[,3])

samavg50 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyAccJerk_mean_X))
samavg <- cbind(samavg, samavg50[,3])

samavg51 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyAccJerk_mean_Y))
samavg <- cbind(samavg, samavg51[,3])

samavg52 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyAccJerk_mean_Z))
samavg <- cbind(samavg, samavg52[,3])

samavg53 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyAccJerk_std_X))
samavg <- cbind(samavg, samavg53[,3])

samavg54 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyAccJerk_std_Y))
samavg <- cbind(samavg, samavg54[,3])

samavg55 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyAccJerk_std_Z))
samavg <- cbind(samavg, samavg55[,3])

samavg56 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyAccJerk_meanFreq_X))
samavg <- cbind(samavg, samavg56[,3])

samavg57 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyAccJerk_meanFreq_Y))
samavg <- cbind(samavg, samavg57[,3])

samavg58 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyAccJerk_meanFreq_Z))
samavg <- cbind(samavg, samavg58[,3])

samavg59 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyGyro_mean_X))
samavg <- cbind(samavg, samavg59[,3])

samavg60 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyGyro_mean_Y))
samavg <- cbind(samavg, samavg60[,3])

samavg61 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyGyro_mean_Z))
samavg <- cbind(samavg, samavg61[,3])

samavg62 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyGyro_std_X))
samavg <- cbind(samavg, samavg62[,3])

samavg63 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyGyro_std_Y))
samavg <- cbind(samavg, samavg63[,3])

samavg64 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyGyro_std_Z))
samavg <- cbind(samavg, samavg64[,3])

samavg65 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyGyro_meanFreq_X))
samavg <- cbind(samavg, samavg65[,3])

samavg66 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyGyro_meanFreq_Y))
samavg <- cbind(samavg, samavg66[,3])

samavg67 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyGyro_meanFreq_Z))
samavg <- cbind(samavg, samavg67[,3])

samavg68 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyAccMag_mean))
samavg <- cbind(samavg, samavg68[,3])

samavg69 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyAccMag_std))
samavg <- cbind(samavg, samavg69[,3])

samavg70 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyAccMag_meanFreq))
samavg <- cbind(samavg, samavg70[,3])

samavg71 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyBodyAccJerkMag_mean))
samavg <- cbind(samavg, samavg71[,3])

samavg72 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyBodyAccJerkMag_std))
samavg <- cbind(samavg, samavg72[,3])

samavg73 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyBodyAccJerkMag_meanFreq))
samavg <- cbind(samavg, samavg73[,3])

samavg74 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyBodyGyroMag_mean))
samavg <- cbind(samavg, samavg74[,3])

samavg75 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyBodyGyroMag_std))
samavg <- cbind(samavg, samavg75[,3])

samavg76 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyBodyGyroMag_meanFreq))
samavg <- cbind(samavg, samavg76[,3])

samavg77 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyBodyGyroJerkMag_mean))
samavg <- cbind(samavg, samavg77[,3])

samavg78 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyBodyGyroJerkMag_std))
samavg <- cbind(samavg, samavg78[,3])

samavg79 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(fBodyBodyGyroJerkMag_meanFreq))
samavg <- cbind(samavg, samavg79[,3])

samavg80 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(angle_tBodyAccMean_gravity_))
samavg <- cbind(samavg, samavg80[,3])

samavg81 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(angle_tBodyAccJerkMean__gravityMean_))
samavg <- cbind(samavg, samavg81[,3])

samavg82 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(angle_tBodyGyroMean_gravityMean_))
samavg <- cbind(samavg, samavg82[,3])

samavg83 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(angle_tBodyGyroJerkMean_gravityMean_))
samavg <- cbind(samavg, samavg83[,3])

samavg84 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(angle_X_gravityMean_))
samavg <- cbind(samavg, samavg84[,3])

samavg85 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(angle_Y_gravityMean_))
samavg <- cbind(samavg, samavg85[,3])

samavg86 <- ddply(dataset, c('subject','activities'), summarize,
                  sum= mean(angle_Z_gravityMean_))
samavg <- cbind(samavg, samavg86[,3])


#Rename all variables
colnames(samavg) <- allvars

# Eports the samavg file to a csv file
write.csv(samavg,"samavg.csv")





