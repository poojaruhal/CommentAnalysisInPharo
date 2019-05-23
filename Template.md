# About Template
The template follows pillar (https://github.com/pillar-markup/pillar) markup for writing content.

# Class Comment Template

``
!Please comment me using the following template:

!!Intent  
Who am I? What is my purpose?

!!Responsibility
Three sentences about main responsibilities - what I do, what I know.

!!Usage of the class
How to instantiate and use the class?
For example, the class ${class:OrderedCollection}$ is instantiated like:

[ [ [ 
			"Write code snippet here"

			aCollection := OrderedCollection new:5.
] ] ]

!!Public API and their usage
; ApiOne
: description of #ApiOne 
  
; ApiTwo
: description of #ApiTwo   
 

!!Instance Variables
; edges <Object>
: description of edges

; nodes <Object>
: description of nodes
            
!!Implementation notes
- Describe internal details and representations here.

`` !!Reference to other resources
*Further-Template-Instructions>https://github.com/poojaruhal/CommentAnalysisInPharo/edit/master/Template.md http://pharo.org*


!!If you have other information about the class, you can use headers: 
Warning, Precondition, Dependency, Observation, Recommendation, Extensions, ToDo.``

## The template is rendered as https://github.com/poojaruhal/CommentAnalysisInPharo/blob/master/images/New-template.jpg

# More Details About Template
In this section we cover more examples about each section, what each section expects.

!!Intent  
This section contains information about the purpose of the class.

!!Responsibility
E.g I know about browser class. I implement basic bahavior.

!!Usage of the class
How to instantiate and use the class?
For example, the class ${class:OrderedCollection}$ is instantiated like:

[ [ [ 
			"Write code snippet here"

			aCollection := OrderedCollection new:5.
] ] ]

!!Public API and their usage
; collectValues
: Collect values from the object and return a new collection.
 
 

!!Instance Variables
; edges <Object>
: edges connect two nodes.

; nodes <Object>
: a list of graph nodes 
            
!!Implementation notes
This section contains details about the implementation specific points for the class.
- e.g The formula used to calculate size =  2 * wi * pi.


#The template supports various headers. Developers can use existing header and can define their own headers for extra information.

## Existing extra headers the template supports are:
!Extension
Describe how you class can be extended further. 

!!Warning
Mention the warnings about you classes. The points other developers, readers should pay attention to.

!!Precondition
Describe the precondition of your class and its APIs

!!Dependency
State all the dependencies of your class.

!!Observation
State your observation about the class behaviors.

!!Recommnedation
Any recommendation for future maintaince, extensions, refactorings etc.

!!ToDo
List your Todos here

## Custom headers
To define a custom header, you can use `!CustomeHeaderName`. Keep the header names short and precise.

## Embed extra information to the template
-Add description list
``!Public API and their usage
; API one
: description of API one
; API two
: description of API two``


- To add code snippets
[[[ ClassComment getInfo]]]

- Formatting
To make something bold, write ""bold"" (with 2 double quotes)
To make something italic, write ''italic'' (with 2 single quotes)
To make something strikethrough, write --strikethrough--	 

- Links
	*Link>webAddress*

- Pictures
	+Caption>path of the file+

## Generate and export a document from Pillar
- follow section 7 from https://ci.inria.fr/pharo-contribution/job/EnterprisePharoBook/lastSuccessfulBuild/artifact/book-result/PillarChap/Pillar.html to generate and export the comment document.






