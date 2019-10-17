# Replication Package for the paper entitled “Class Commenting Practices in Pharo"

# Abstract:
Previous studies have characterised code comments in different programming languages, and  have shown
how a high quality of code comments is crucial to support program comprehension activities and to improve the effectiveness of maintenance tasks.
However, (i) very few studies have focused on the analysis of the information embedded in class comments, and (ii) none of them have analyzed these characteristics in the Pharo Smalltalk environment.
       
This paper reports the first empirical study investigating class comments and commenting practices in Pharo.
Results of this study show that there is a steady increase in class commenting over time, and that developers frequently add comments to old classes in Pharo.
In addition, the analysis of the semantics of the comments from the latest Pharo version suggests that  23 information types are typically embedded in class comments by developers, and that only 7 of them are present in the latest Pharo class comment template.
As a consequence, the current class comment template substantially diverges from the contemporary commenting practices of developers,  suggesting the need for new Pharo templates integrating the missing information types, to ensure a higher quality of class comments.


# Description of the content:
1. "Results" is the main folder and contains the result of the studies performed in the paper.

2. "commen-distribution" folder contains the plots to show distribution of comments available in Pharo 7 according to sentence length and frequency of comments.
    a) "comment-distribution-boxplot.pdf" shows the boxplot of distribution of average sentences in class comments
    b) "comment-distribution-respect-to-sentence-frequency.pdf" shows  the distribution of sentences in relation to the frequency of comments

3. "pilot-study" folder contains the dataset manually classified during the pilot study (by one evaluator) and the result achieved for it.
    a) "pilot-study-categories.pdf" plots the frequencies of comment types frequencies achieved considering the classes considered for the pilot study.
    b) "Pilot-study-result.xlsx"  consists in the raw data of the pilot study performed to achieve the initial comment categories (names of columns are self-explanatory)
    
4. "taxonomy-study" folder contains the dataset manually classified in the taxonomy study (by three evaluators) and the result achieved for it. 
    a) "All-categories-with-examples.pdf" this document describes all the categories in a more detailed manner with examples.
    b) "Taxonomoy-study-results.xlsx" consists in the raw data of the taxonomy study performed to achieve the final comment categories (names of columns are self-explanatory)
