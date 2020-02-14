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
1. "Results" is the main folder and contains the result of the studies performed in the paper. For each research question, we have a subfolder.

2. "RQ1/trend-analysis" contains the dataset manually analysed to identify the co-occurrence of code and comment changes.

3. "RQ2/pilot-study" folder contains the dataset manually classified during the pilot study (by one evaluator) and the result achieved for it.
    a) "pilot-study-categories.pdf" plots the frequencies of comment types frequencies achieved considering the classes considered for the pilot study.
    b) "Pilot-study-result.xlsx"  consists in the raw data of the pilot study performed to achieve the initial comment categories (names of columns are self-explanatory)
    
4. "RQ2/Taxonomy-study" folder contains the dataset manually classified in the taxonomy study (by three evaluators) and the result achieved for it. 
    a) "All-categories-with-examples.pdf" this document describes all the categories in a more detailed manner with examples.
    b) "Taxonomy-study-results.xlsx" consists  of the raw data of the taxonomy and the process of evaluating the comments to achieve the final comment categories (names of columns are self-explanatory)

5. "RQ3" folder contains the dataset manually classified in the comment adherence study (by three evaluators) and the result achieved for it. 
    a) "Constraints-definition-for-template-writing-style.xlsx" this document shows the process followed to formulate the constraints.
    b) "Adherence-of-comments-to-template.xlsx" consists of the raw data "Content aspect" used to perform taxonomy study with respect to content adherence and "Writing style aspect" to evaluate the adherence of the comments to the writing style rules of the templates.
