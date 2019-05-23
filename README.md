# Code Comment Practices and Evolution: the Case of the Pharo Ecosystem

# Abstract

Code comments play a paramount role in program comprehension, development, and maintenance tasks.
    Given their unstructured (or semi-structured)  nature and varying quality,  
     researchers have analyzed characteristics of comments in different programming languages, to ensure a high quality of comments.
    However, no previous work has analyzed these characteristics in the Pharo program language,
    where commenting evolutionary patterns are not known and best practices are still forming.
    For instance, Pharo developers are guided by a semi-structured template to write a class comment, but the actual impact of this template in the developers' commenting practices is unclear.
    
    This paper reports the first empirical study investigating class-comment evolution and commenting practices characterizing Pharo.
    This investigation is critical to define approaches that ensure a high-quality of code comments in this ecosystem.
    As a first step, we analyze class comment evolution over seven Pharo versions.
    Then, we quantitatively and qualitatively analyze class comments of the most recent version of Pharo,  to investigate potential information types in Pharo comments.
    Finally, we study the impact of the class template on the developers' commenting practices.     
    
    Our results show that the percentage of commented classes increases over time, with developers adding comments to old classes.
    We find that Pharo template has an impact on developers commenting practices.
    Interestingly, Pharo class comments are characterized by 23 information types, and only seven of them are included in the Pharo template.
    This highlights that the Pharo template substantially diverges from contemporary practices of developers,
    Therefore, we suggest that additional information types should be included in the standard template to ensure a high-quality of class comments.



# Description of the content:
1. "Data" folder contains the data selected for analysing the comments.
2. 'Template.md' describes the new proposed template https://github.com/poojaruhal/CommentAnalysisInPharo/blob/master/images/New-template.jpg with instructions details.
