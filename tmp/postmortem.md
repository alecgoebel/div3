Summary of Div 3 focus/work to Date
====================================

Original Plan
--------------

Robotic visual programming language.  
Originally for tablets for a potential "program robots on a phone" type thing.

Wound up being far to large but it was an interesting idea originally.

See [contract]

 * Simple robotics visual DSL
 * Essentially just wiring up the device
 * Needed to handle timing and events primarily
 * ideally interfaced with some other software 
    * audio 
    * basic UI
    * some kind of messaging
 * similar to existing languages, but attempts at *stronger* expression

The personal goal was to attempt to consult on a project essentially handed to me on a paper napkin to completion.  I have been friends with the robotics company for years and was trying to help out in addition to picking a fairly neat HCI problem.


Initial Work
-------------

I put my nose to the grindstone and attempted small examples to get various
pieces of the project working.  I also tried to get a good sense of what other
languages looked like and felt like.  Lastly I brushed up on a number of subjects.

### Research
 * reviewed previous work with Cabana, PD, Blender
 * Looked into making simple programs with Scratch
 * learned Ruby (TAing) and started learning Haskell
 * reviewed android environment and caught up to 4.0

### Prototypes
 * Android Intent applications: Add2Clip
 * Various pure Java examples for the robotics SDK
 * early attempts at a simple Clojure library get a sense for wrapping the SDK

### Problems
 * Android did not have the BT/USB support I was expecting
 * The SDK was written 3 years ago by an undergrad who had moved on
 
### Other

At this time I was also TAing the Programming Languages course which will
influence time ahead.  Essentially I also learned Haskell and Ruby fairly well
as well as a new appreciation for the incredible difference a language choice
makes on implementing the same algorithms.


Post Robots
-------------
Robotics component had to be dropped fairly quickly.  I attempted to hold on to
some of the other aspects found from audio and other researched languages.  This 
mostly boiled down to timing, UI, messaging, and events.

I started playing around more with the idea that visual languages are just DSLs more times than not.  
Since data and code can be homoiconic, execution speed could be increased if you just render and manipulate code.  
Ideas like this had been done previously for Object Oriented languages (Smalltalk parts).
This seemed a way something like Scratch could be implemented it.

In an attempt to have a language with more flexible logic, I started moving
away from the original plan of Rubys object messaging and into arrows as they
exist in Google Go and Clojures core.async.  It seemed that through these ideas
something like messaging (node connections) could be used to express a much
more complicated flow.  Various blocks could be built on top of these channels
to create the 1 to 1 connection between code representation and execution.

### Research
 * Clojure core.async
 * various clojure UI alternatives (app, web, etc)

### Prototypes
 * small core.async examples
 * connecting two random libraries with core.async
 * small UI examples

### Problems
 * the visuals started getting incredibly vague at this point
 * the IDE and interface of a language like this became more and more secondary
 * core.async is young and poorly documented.
 * still no good UI library to use



Web RPC Language
-------------------

### Desc
A visual language with logical connections, focusing on 


### Summary
At this point, I start looking at the idea of a more general purpose language
geared specifically for common data manipulation operations.  Like one you
would have unifying various pieces of web data to create a virtual currency
trading app for example.

It was around here I realized the importance of microlanguages (regexp, infix
math, shorthands, syntactic sugars, etc) to programmer efficacy and what makes
a great language.  So, something like a widget for specific components could
certainly be concieved of in a visual language; a way to break back into plaintext for a statement
or within an s-expression.

This lead to struggling to figure out the idea of nesting and scope within a
visual language.  Ignoring the complexities of a zooming in and out of nested
infinite planes (one IDE representation idea), there is no clear way to
indicate many pieces just the idea of blocking, the thing discovered to get rid
of GOTO statements.  (Knuth describes gotos as "logical spaghetti")

The wiring of all this scope and block mess on top of destructuring sugars sounded like you may need a typing system.

### Visually
The language now consisted of nodes and blocks.  Blocks being a general group
for manipulating nodes which were typed data.


### Research
 * Clojure core.typed

### Results
 * destructing could be a separate step on the Node instead

### Problems
 * still no clear solution on scope and blocks
 * creating an editor becomes impractical
 * Accidentally focused on a new problem domain instead of dropping it completely

### Other
On the side, my housemate and I begun building a bitcoin mining rig, learning
about how bitcoin actually works, and studying bitcoin as a commodity.


Early Monads
-------------
### Description
A visual language spec (similar to UML) 

### Summary
Because of the immaturaty of the clojure libraries and the complexities of
getting them playing together.  I go back to the board and find the primary
places I was finding benefit was core.async and specifically "Communicating
Sequential Processes".  Looking into other ways to implement this idea lead me
back to Haskell.  At this point I took a better look into what Monads actually
are, how they relate to arrows, why this makes the library CHP possible etc.

After reading an incredible amount of correct and incorrect information on
monads, I started seeing how they could be used to capture the idea of a
"computational context".  This included exceptions, state, IO, and an
incredible range of monadic implementations.

I started trying to envision using monads as the actual glue of the codes
logic.  This could offer a different way to unify a visual language which could
represent a wide range of complex algorithms through something like monads.

### Prototypes
 * 


Present: "Understanding" Monads
----------------------------------
### Description
working towards a visual programming language

### Summary
At this point I finally understand monads well enough that I know exactly how
little I understand them.  I have the theory roughly down, as well as the
potential use.  That said I do not know haskell well enough to use them in
software.  I also do not know monads well enough to recreate them or use them
as a non native feature.  I can recognize their potential to help but I am
having trouble drawing examples as monads are hard to explain.

I can say is after further research into monads I am even more confident in my,
at this point, hunch that functors, monads, and other advanced functional
techniques could create a much richer visual language.  

----

In addition, this started as a programming project and somehow it is now a paper.  I have written very few papers





Visual Language Analysis
==========================
Along those lines started looking at existing languages:
    cabana (previously): visual language developed by a Hampshire graduate.  Node based to javascript objects.  
    blender
    puredata
    Scratch

Seems like all but scratch were more DSLs than full languages.

Since scratch seemed to be a large improvement through blocks
A weird combination of imperative (global static names) and event-drive.







Textual Languages analysis
============================
At the same time I was looking at a series of programming languages.

As some languages can be homoiconic (LISPs), I had the idea generating code as a backend to power the whole thing with actual power.

This lead research into Ruby as a potential scripting language on Android with Ruboto.  At this point the language was essentially
scripted handles with messaging.  Inspired in part that Ruboto is a Smalltalk successor in messaging.


Eventually, I came to the conclusion that although ruby DSLs were possible, they would work better with pure functional programming
(functions are arrows).  This lead to looking into core.async and Clojure.  

I read up on CSP styles and iocthreading (still vague here).

The problem I was coming to was imagining arbitrary visual deconstruction.  I started looking to other functional languages (haskell) and while
there is not necessarily a need for a strong typing as that, the need for typing emerged.

This complication lead to the idea of even 
more generalized languages.  Especially if the need for libraries in this visual mess were going to have a hope of working.  At least on the level of atom, s-expression or hopefully slightly larger allowing for (x:xs) head/tail syntax equivilents.

Typing seemed a logical solution.  If maps/sets and other collections could be detected, then deconstruction could have a much more powerful syntax.  Equivilents of a[3] or even a[idx] could be possible.
Similar to clojures:

Started looking at core.typed as a solution to this.  Another very young API.

Typing and functional lead me to CHP (CSP for haskell). 

CHP and all the other libraries which did equivilents to what I was used to in clojure showed me monads.  This took the bulk of my time to wrap my head around.



Functional Language
====================
Monads seemed to be a great way to represent complicated ideas through a typing system.  Haskell had these, core.async, core.typed, and algo.monads are incredibly young libraries which are hard to play together.  At this point in time I can still barely program haskell, as it is an active language for approximately half a year.  However, I was going to learn it goddamn it.

At this point, I feel something along the lines of functional types (not entirely sure what the category is).  By this I mean Applicatives, Functors, Monads, and Arrows.


