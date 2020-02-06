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

Info_types <- read.csv("Content-info-types.csv") ##this is style..

############################## Preamble
# Shapiro Wilk (to know more about this test, type "help(shapiro.test)" 
# As indicated in https://en.wikipedia.org/wiki/Shapiro%E2%80%93Wilk_test :
# - " if the p value is less than the chosen alpha level, then the null 
#     hypothesis is rejected and there is evidence that the data tested are not normally distributed.

shapiro.test(Info_types$Intent)
shapiro.test(Info_types$Responsibility)
shapiro.test(Info_types$Collabartor)
shapiro.test(Info_types$InstanceVariable)
shapiro.test(Info_types$KeyMessages)
shapiro.test(Info_types$Example)
shapiro.test(Info_types$ImplementenationPoints)
# RESULT:
# non-normal -> use non-parametric tests

############################## 
# 1 Compare comments content levels among Pharo versions
print("##################################################")
print("RQ3: Compare commenting adherence levels among Pharo versions")
Versions<- sort(unique(Info_types$CommentAddedVersion))

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
    distribution_groups[[i]] <-  as.numeric(rowSums(Info_types[which(str_detect(Info_types$CommentAddedVersion,paste(groups[[i]],collapse="|"))), 3:length(Info_types[1,]) ]))
    distribution_groups[[i]] <-  distribution_groups[[i]] #/length(distribution_groups[[i]])
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
      case2<- as.numeric(rowSums(Info_types[which(str_detect(Info_types$CommentAddedVersion,paste(groups[[j]],collapse="|"))), 3:length(Info_types[1,]) ]))
      case2 <-  case2 #/length(case2)
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
  write.csv(results1,"Statistics-on-content-adherence.csv",row.names = FALSE)
  
#### We save the boxplot to support visually the statistics performed
  #pdf("content-adherence_boxplot.pdf")
  #boxplot(distribution_groups,ylab ="Content adherence", xlab ="Pharo Versions",)
  #dev.off()
  
  #results in terms of p-value and magnitude within comment types
  results2<-list(name_groups=c(), content_type=c(),p_value=c(),magnitude=c())
  distribution_groups<-vector(mode = "list",length = length(groups))
  names(distribution_groups)<-names(groups)
  content_types<- unique(names(Info_types)[-(1:2)])

  #cases in which the version of PHaro is in the "group i"
  i<-1
  j<-2
  t<-1
  for(i in 1:length(groups))
  {  
    for(j in 1:length(groups))
    {
      if(j>i)
      {  
        for(t in 1:length(content_types)){
          #cases in which the version of Pharo is in the "group i"
          case1 <-  as.numeric(Info_types[which(str_detect(Info_types$CommentAddedVersion,paste(groups[[i]],collapse="|"))), content_types[t] ])
          pos<-length(results2$p_value)+1
          results2$name_groups[pos]<-paste("Wilcox.test between ",names(groups)[i]," & ",names(groups)[j],"-",content_types[t],sep = "")
          #cases in which the version of Pharo is in the "group j"
          case2<- as.numeric(Info_types[which(str_detect(Info_types$CommentAddedVersion,paste(groups[[j]],collapse="|"))), content_types[t] ])
          #case2 <-  case2 /length(case2)
          #p-value of the comparison between the distribution
          p_value<-as.numeric(wilcox.test(case1, case2)[3])
          magnitude<-paste("Vargha and Delaney A =",as.character(VD.A(case1, case2)[3]$magnitude)) #magnitude
          results2$p_value[pos]<-p_value
          results2$magnitude[pos]<-magnitude
          results2$content_type[pos]<-content_types[t]
        }
      }
    }
  }
  results2<- as.data.frame(results2)
  print(results2)
  write.csv(results2,"Statistics-on-content-adherence-at-type-level.csv",row.names = FALSE)
  

  
  
  