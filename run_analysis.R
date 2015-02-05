#Read in the data

train<-read.table(file="X_train.txt")
test<-read.table(file="X_test.txt")

#Read in the column names
features<-read.table(file="features.txt")
names<-features[,2]
#work out which columns have mean() or std() in their names
namesl<-grep("mean\\(\\)|std\\(\\)",names)

#merge the data sets (they are of different observations, so should be stacked vertically)

full<-rbind(train,test)
names(full)<-names

#extract only the columns of interest

meanstddata<-full[namesl]

#get the subjects

trainsubject<-read.table(file="subject_train.txt")
testsubject<-read.table(file="subject_test.txt")
fullsubject<-rbind(trainsubject,testsubject)

#read in the activity names

trainlabel<-read.table(file="Y_test.txt")
testlabel<-read.table(file="Y_train.txt")
fulllabel<-rbind(trainlabel,testlabel)

#activities according to activity_labels.txt
fulllabel[,1]<-as.factor(fulllabel[,1])
levels(fulllabel[,1])<-c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")

#create full data set

meanstd<-data.frame(subject=fullsubject[,1],activity=fulllabel[,1],meanstddata)

#summarise data

library(data.table)
meantable<-data.table(meanstd)
meanmean<-meantable[,lapply(.SD,mean),by=list(subject,activity)]

#write out data

write.table(meanmean,file="meandata.txt",sep="\t")
