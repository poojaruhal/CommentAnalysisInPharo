# About Template
The template follows pillar (https://github.com/pillar-markup/pillar) markup for writing content.

# Class Comment Template

``Please comment me using the following template:

!Intent  
Who am I? What is my purpose?

!Responsibility
Three sentences about main responsibilities - what I do, what I know.

!!Usage of the class
How to instantiate and use the class?
[ [ [ 
            Write code snippets inside brackets..
             ] ] ]

!Public API and their usage
; API one
: description of API one   
; API two
: description of API two   

!Instance Variables
    edges:        <Object>
    nodes:        <Object>


 !Implementation notes(if Any)
- Describe internal details and representations here.

``!Reference to other resources
@@see *TemplateInstructions>https://github.com/poojaruhal/CommentAnalysisInPharo/edit/master/Template.md*
*http://pharo.org*

If you have other information about the class, you can use headers: !Warning, !Precondition, !Dependency, !Observation, !Recommendation, !Extensions !ToDo.``


# More Details About Template
- The template supports various headers. Developers can use existing header and can define their own headers for extra information.

## Existing headers the template support are:
!Extension
Describe how you class can be extended further. 

!Warning
Mention the warnings about you classes. The points other developers, readers should pay attention to.

!Precondition
Describe the precondition of your class and its APIs

!Dependency
State all the dependencies of your class.

!Observation
State your observation about the class behaviors.

!Recommnedation
Any recommendation for future maintaince, extensions, refactorings etc.

!ToDo
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






