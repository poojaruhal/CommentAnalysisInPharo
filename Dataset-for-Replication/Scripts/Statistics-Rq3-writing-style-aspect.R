# 
# Author: spanichella
###############################################################################

#Pre-requisities: Install the following libraries before loading them.
library(data.table)
library(ggplot2)
library(ggthemes)
library(effsize)
library(plyr)
library(lmPerm)
library(stringr)

############################## Load CSV files
#Note, the following path need to be set according to the location ot the files
base_folder <- setwd("~/Data/RQ3")

all_Sections <- read.csv("Writing-style-rules.csv") 
All_classes_writing_rules <- read.csv("All-classes-rules-calculated.csv")
#normalization of data
all_Sections$True<- all_Sections$True/all_Sections$Total
all_Sections$False<- all_Sections$False/all_Sections$Total
#we remove NA values and irrelevant attributes for the statistics
All_classes_writing_rules[is.na(All_classes_writing_rules)] <- 0
All_classes_writing_rules$ClassName<-NULL
#All_classes_writing_rules[1,]

############################## Preamble
# Shapiro Wilk (to know more about this test, type "help(shapiro.test)" 
# As indicated in https://en.wikipedia.org/wiki/Shapiro%E2%80%93Wilk_test :
# - " if the p value is less than the chosen alpha level, then the null 
#     hypothesis is rejected and there is evidence that the data tested are not normally distributed.

shapiro.test(all_Sections$True)
shapiro.test(all_Sections$False)
# RESULT:
# non-normal -> use non-parametric tests

############################## 
# 1 Compare commenting adherence levels among Pharo versions
print("##################################################")
print("RQ3: Compare commenting adherence levels among Pharo versions")
Versions<- sort(unique(all_Sections$Version))

groups<-list(group1=c(),group2=c(),group3=c())
groups$group1<- c(Versions[1:1])
groups$group2<- c(Versions[2:3])
groups$group3<- c(Versions[4])
groups$group4<- c(Versions[5:7])
#automated renaming of columns
names(groups)[1]<- as.character(paste("Pharo",paste(groups$group1,collapse = "-"),sep = ""))
names(groups)[2]<- as.character(paste("Pharo",paste(groups$group2,collapse = "-"),sep = ""))
names(groups)[3]<- as.character(paste("Pharo",paste(groups$group3,collapse = "-"),sep = ""))
names(groups)[4]<- as.character(paste("Pharo",paste(groups$group4,collapse = "-"),sep = ""))

#results in terms of p-value and magnitude
results1<-list(name_groups=c(),p_value=c(),magnitude=c())
distribution_groups<-vector(mode = "list",length = length(groups))
names(distribution_groups)<-names(groups)

#cases in which the version of PHaro is in the "group i"
  i<-1
  for(i in 1:length(groups))
  {  
    distribution_groups[[i]] <-  all_Sections$True[which(str_detect(all_Sections$Version,paste(groups[[i]],collapse="|")))]*100
    j<-1
    for(j in 1:length(groups))
    {
      if(j>i)
      {  
      pos<-length(results1$p_value)+1
      results1$name_groups[pos]<-paste("Wilcox.test between ",names(groups)[i]," & ",names(groups)[j],sep = "")
      #cases in which the version of Pharo is in the "group i"
      case1<- distribution_groups[[i]]
      #cases in which the version of Pharo is in the "group j"
      case2<- all_Sections$True[which(str_detect(all_Sections$Version,paste(groups[[j]],collapse="|")))]*100
      #p-value of the comparison between the distribution
      p_value<-as.numeric(wilcox.test(case1, case2)[3])
      magnitude<-paste("Vargha and Delaney A =",as.character(VD.A(case1, case2)[3]$magnitude)) #magnitude
      results1$p_value[pos]<-p_value
      results1$magnitude[pos]<-magnitude
      }
    }
  }
  results1<- as.data.frame(results1)
  print(results1)
  write.csv(results1,"Statistics-on-style-adherence.csv",row.names = FALSE)
  
#### We save the boxplot to support visually the statistics performed
  pdf("style-adherence_boxplot.pdf")
  boxplot(distribution_groups,ylab ="Style adherence (%)", xlab ="Pharo Versions")
  dev.off()

## RESULT: two-way permutation test
print("##################################################")
print("RQ3: two-way permutation test for content adherence")
#EXAMPLE of two-way permutation test
#data(Alfalfa)
#summaryC(aovp(Yield~Variety*Date+Error(Block/Variety),Alfalfa))
#Before computing the permutation test we:
#1) initialize the average values
All_classes_writing_rules$meanContentAdherence<-0
All_classes_writing_rules <- as.data.frame(All_classes_writing_rules)
j<-1
#2) convert all attributes in  numerical types
for(j in 1:length(All_classes_writing_rules[1,]))
{
  All_classes_writing_rules[,j]<-as.numeric(All_classes_writing_rules[,j])
}
#3) compute the average content adherence for each Pharo class
i<-1
for(i in 1:length(All_classes_writing_rules$CommentAddedVersion))
  {
  All_classes_writing_rules$meanContentAdherence[i]<-mean(as.numeric(All_classes_writing_rules[i,2:length(All_classes_writing_rules[i,])]))
}

#4) we regroup pharo versions according to the list "groups"
All_classes_writing_rules$CommentAddedVersion[which(str_detect(All_classes_writing_rules$CommentAddedVersion,paste(groups[[1]],collapse="|")))]<-names(groups)[1]
#All_classes_writing_rules$CommentAddedVersion[which(str_detect(All_classes_writing_rules$CommentAddedVersion,paste(c(groups[[2]],groups[[3]]),collapse="|")))]<-paste(names(groups)[2:3],collapse=" & ")
All_classes_writing_rules$CommentAddedVersion[which(str_detect(All_classes_writing_rules$CommentAddedVersion,paste(groups[[2]],collapse="|")))]<-names(groups)[2]
All_classes_writing_rules$CommentAddedVersion[which(str_detect(All_classes_writing_rules$CommentAddedVersion,paste(groups[[3]],collapse="|")))]<-names(groups)[3]
All_classes_writing_rules$CommentAddedVersion[which(str_detect(All_classes_writing_rules$CommentAddedVersion,paste(groups[[4]],collapse="|")))]<-names(groups)[4]

#5) Finally we compute the the permutation test
perm.results <- summary(aovp(meanContentAdherence ~ CommentAddedVersion*WSIntent*WSResponsibility*WSCollabartor*WSInstanceVariable*WSKeyMessages*WSExample*WSImplementenationPoints*WSOthers, All_classes_writing_rules, maxIter=500000, perm="Prob", Ca=0.0001))
p.values <- perm.results[[1]]$Pr

# combination of the two variables
# if (p.values[1] < 0.05){
#   print(paste("Statistical significant interaction between 'CommentAddedVersion' and 'meanContentAdherence'===> p-value = ", p.values[1]))
# } else{
#   print(paste("NO between 'CommentAddedVersion' and 'meanContentAdherence'===> p-value = ", p.values[1]))
# }


