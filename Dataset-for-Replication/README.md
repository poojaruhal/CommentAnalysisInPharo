# What do class comments tell us? An investigation of comment evolution and practices in Pharo

# Abstract
Previous studies have characterized code comments in different programming languages, and  have shown
how a high quality of code comments is crucial to support program comprehension activities and to improve the effectiveness of maintenance tasks.
However, very few studies have focused on the analysis of the information embedded in code comments. 
None of them compared the developer's practices to write the comments to the standard guidelines and analyzed these characteristics in the Pharo Smalltalk environment.
    
The class commenting practices have their origins in Smalltalk-80, going back 40 years.
Smalltalk traditionally separates class comments from source code, and offers a brief template for entering a comment for newly-created classes.
These templates have evolved over the years, particularly in the Pharo environment.
This paper reports the first empirical study investigating commenting practices in Pharo Smalltalk.
As a first step, we analyze class comment evolution over seven Pharo versions.
Then, we quantitatively and qualitatively analyze class comments of the most recent version of Pharo, to investigate the information types of Pharo comments.
Finally, we study the adherence of developer commenting practices to the class template over Pharo versions.
   
The results of this study show that there is a rapid increase in class comments in the initial three Pharo versions, while in subsequent versions developers added comments to both new and old classes, thus maintaining a similar ratio.
In addition, the analysis of the 
semantics of the comments from the 
latest Pharo version suggests that 23 information types are typically embedded in class comments by developers 
and that only seven of them are present in the latest \textit{Pharo class comment template}.
However, the information types proposed by the standard template tend to be present more often than other types of information.
Additionally, we find that a substantial proportion of comments follow the writing style of the template in writing these information types, but they are written and formatted in a non-uniform way.
This suggests the need to standardize the commenting guidelines for formatting the text, and providing headers for the different information types to ensure a consistent style, and to identify the information easily.


# Description of the content:
1. "Dataset-for-Replication" folder contains the tool Moose, which is used to perform the analysis, Pharo "Scripts" and "Data" to run various analysis.

2. "/Data" folder contains the data selected for analysing the comments and resultant data after analysis, the data is seperated according to each research question.

3.  "/Data/RQ2" contains the data selected for manual analysis of Pharo external projects and Pharo core.

4.  "/Data/RQ3" contains the resultant data after computing the comments adhering to the template in the content and the writing style aspects and various statistics performed on them. It also contains the raw version of the template collected from all the versions.

3. "/Scripts" contains Pharo and R scripts to analyse the classes of all versions, and perform various statstics respectively.

