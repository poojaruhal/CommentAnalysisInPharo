# What do class comments tell us? An investigation of comment evolution and practices in Pharo

# Abstract
Previous studies have characterised code comments in different programming languages, and  have shown
how a high quality of code comments is crucial to support program comprehension activities and to improve the effectiveness of maintenance tasks.
However, (i) very few studies have focused on the analysis of the information embedded in code comments,
 (ii) comparing the developers' practices to write the comments to the standard guidelines, (iii) 
 none of them have analyzed these characteristics in the Pharo Smalltalk environment.
    
This paper reports the first empirical study investigating commenting practices in Pharo.
As a first step, we analyze class comment evolution over seven Pharo versions.
Then, we quantitatively and qualitatively analyze class comments of the most recent version of Pharo, to investigate the information types of Pharo comments.
Finally, we study the adherence of developer commenting practices to the class template over Pharo versions.   

The results of this study show that there is a rapid increase in class commenting in the initial three Pharo versions to achieve a good comment ratio and then maintained over subsequent versions and that developers add and update comments of old classes with or without any code changes in them.
In addition, the analysis of the semantics of the comments from the latest Pharo version suggests that  23 information types are typically embedded in class comments by developers and that only seven of them are present in the latest Pharo class comment template.
Additionally, the information types mentioned by the template are present more often than other types of information but written in non-uniform ways and formatting, suggesting the need of revisiting the template integrating the other frequent information types emerged in the study and better structural guidelines, to better support developer information needs and ensure a consistent and higher quality of class comments.
We find that developers adhere to the template by writing the same information types mentioned in it and following the style of writing these information types.
Therefore, it should be carefully designed and adapted to developers information needs.


# Description of the content:
1. "Dataset-for-Replication" folder contains the tool Moose, which is used to perform the analysis, Pharo "Scripts" and "Data" to run various analysis.

2. "/Data" folder contains the data selected for analysing the comments and resultant data after analysis, the data is seperated according to each research question.

3.  "/Data/RQ2" contains the data selected for manual analysis of Pharo external projects and Pharo core.

4.  "/Data/RQ3" contains the resultant data after computing the comments adhering to the template in the content and the writing style aspects and various statistics performed on them. It also contains the raw version of the template collected from all the versions.

3. "/Scripts" contains Pharo and R scripts to analyse the classes of all versions, and perform various statstics respectively.

