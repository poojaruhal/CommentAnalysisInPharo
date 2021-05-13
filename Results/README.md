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
- **Results** is the main folder and contains the result of the studies performed in the paper. For each research question, we have a subfolder.

- **RQ1/trend-analysis/** contains the dataset manually analysed to identify the co-occurrence of code and comment changes.

- **RQ2/pilot-study/** folder contains the dataset manually classified during the pilot study (by one evaluator) and the result achieved for it.
	- **Pilot-study-categories.pdf** plots the frequencies of comment types frequencies achieved considering the classes considered for the pilot study.
	- **Pilot-study-result.xlsx** consists in the raw data of the pilot study performed to achieve the initial comment categories (names of columns are self-explanatory)
    
- **RQ2/taxonomy-study/** folder contains the dataset manually classified in the taxonomy study (by three evaluators) and the result achieved for it. 
	- **All-categories-with-examples.pdf** this document describes all the categories in a more detailed manner with examples.
    - **Taxonomy-study-results.xlsx** consists  of the raw data of the taxonomy and the process of evaluating the comments to achieve the final comment categories (names of columns are self-explanatory)

- **RQ3/** folder contains the dataset manually classified in the comment adherence study (by three evaluators) and the result achieved for it. 
	- **Adherence-of-comments-to-template.xlsx** consists of the raw data "Content aspect" used to perform taxonomy study with respect to content adherence and "Writing style aspect" to evaluate the adherence of the comments to the writing style rules of the templates.
	- **Constraints-definition-for-template-writing-style.xlsx** this document shows the process followed to formulate the constraints.

