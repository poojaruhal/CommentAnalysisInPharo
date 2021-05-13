# What do class comments tell us? An investigation of comment evolution and practices in Pharo Smalltalk

# Abstract
Previous studies have characterized code comments in various programming languages, showing
how high quality of code comments is crucial to support program comprehension activities, and to improve the effectiveness of maintenance tasks.
However, very few studies have focused on understanding developer practices to write comments. 
None of them has compared such developer practices to the standard comment guidelines to study the extent to which developers follow the guidelines.
This paper reports the first empirical study investigating commenting practices in Pharo Smalltalk.
First, we analyze class comment evolution over seven Pharo versions.
Then, we quantitatively and qualitatively investigate the information types embedded in class comments.
Finally, we study the adherence of developer commenting practices to the official class comment template over Pharo versions.
   
The results of this study show that there is a rapid increase in class comments in the initial three Pharo versions, while in subsequent versions developers added comments to both new and old classes, thus maintaining a similar code to comment ratio.
We furthermore found three times as many information types in class comments as those suggested by the template.
However, the information types suggested by the template tend to be present more often than other types of information.
Additionally, we find that a substantial proportion of comments follow the writing style of the template in writing these information types, but they are written and formatted in a non-uniform way.
This suggests the need to standardize the commenting guidelines for formatting the text, and to provide headers for the different information types to ensure a consistent style and to identify the information easily.
Given the importance of high-quality code comments, we draw numerous implications for developers and researchers to improve the support for comment quality assessment tools.

# Description of the content:
- **Dataset-for-Replication** folder contains the tool Moose, which is used to perform the analysis, Pharo "Scripts" and "Data" to run various analysis.

	- **/Data** folder contains the data selected for analysing the class comments. The data is seperated according to each research question.

	- **/Scripts** contains Pharo and R scripts to analyse the comments of all versions, and perform various statstics respectively.

	- **/Tool-Moose-Pharo.zip** contains the tool, Moose, using which we conduct various analysis on comments.	

- **Results** contains the results acheived according to each research question.
