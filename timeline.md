Summary of Div 3 focus/work to Date
====================================


Original Plan
--------------

The project started with a robotic visual programming language on touch
devices.  It seemed a way to combine existing visual language design and add
touch interacivity.  

 * simple robotics visual DSL
 * essentially just wiring up the device
 * needed to handle timing and events primarily
 * ideally interfaced with some other software 
    * audio 
    * basic UI
    * some kind of messaging
 * similar to existing languages, but attempts at *stronger* expression

The personal goal was to attempt to consult on a project essentially handed to
me on a paper napkin to completion.  I have been friends with the robotics
company for years and was trying to help out in addition to picking a fairly
neat HCI problem.



Initial Work
-------------

### Research
 * reviewed previous work with Cabana, PD, Blender
 * looked into making simple programs with Scratch
 * learned Ruby (TAing) and started learning Haskell
 * reviewed Android environment and caught up to 4.0

### Prototypes
 * Android Intent applications: Add2Clip
 * Various pure Java examples for the robotics SDK
 * early attempts at a simple Clojure DSL get a sense for wrapping the SDK

### Problems
 * The SDK did not have the BT/USB support I was expecting
 * The SDK was written 3 years ago by an undergrad who had moved on
 
### Other
At this time I was also TAing the Programming Languages course which will
influence the direction of this project.  Essentially I also learned Haskell
and Ruby fairly well as well as a new appreciation for the incredible
difference a language choice makes on implementing the same algorithms.



Post Robots
-------------
Robotics component had to be dropped fairly quickly.  I attempted to hold on to
some of the other aspects found from audio and other researched languages.
This mostly boiled down to timing, UI, messaging, and events.

At this time it was still an Android or at least html5 editor on top of an
arbitrary visual language.

As I looked at languages covering various subjects, it seemed that most were
just DSLs.  Since textual languages can be homoiconic, it seemed that a visual
language could just be a representation of an executable DSL.  Ideas like this
had been done previously for OO languages (Smalltalk Parts).

In an attempt to have a language with more flexible logic, I started moving
away from the original plan of Rubys object messaging and into arrows as they
exist in Google Go and Clojures core.async.  It seemed that through these ideas
something like messaging (node connections) could be used to express a much
more complicated flow.  Various blocks could be built on top of these channels
to create the 1-to-1 connection between code representation and execution.

### Research
 * Clojure core.async
 * various clojure UI alternatives (processing, html5, etc)
 * concurrent sequential processes

### Prototypes
 * small core.async examples
 * connecting two random libraries with core.async
 * small UI examples

### Problems
 * the IDE and interface and became more and more secondary
 * core.async is young and poorly documented.
 * still no good UI library to use

### Other
Continued working with Ruboto to see if there was still a way my work with
android could remain useful.



Early Monads
-------------

At this point, I start looking at the idea of a more general purpose language
focusing on common data manipulation operations.  Along these lines looked
closer at data flow languages and how to make them better.  

Like one you would have unifying various pieces of web data to create a virtual
currency trading app for example.

It was around here I realized the importance of microlanguages (regexp, infix
math, shorthands, syntactic sugars, etc) to programmer efficacy and what makes
a great language.  

This lead to struggling to figure out the idea of nesting and scope within a
visual language.  The idea of blocking is not necessarily a simple one, though
it can be represented simply with boxes.

Combine this with the microlanguages and it becomes simple to imagine a language
with some boxes which have a custom widget as its context.

This eventually lead back to needing a typing system.  Along these lines I started
looking into how Haskell does typing, which lead into arrows and monads.  These
functional types started to get around some of the problems of how to represent
complex behaviors.  One answer is with a type.

I started trying to envision using monads as the actual glue of the codes
logic.  This could offer a different way to unify a visual language which could
represent a wide range of complex algorithms through something like monads.

### Research
 * Clojure core.typed
 * monads
 * kleisli arrows

### Other
 * moved 
 * started researching bitcoin, bitcoin mining, and bitcoin trading
 * built a bitcoin miner

### Problems
 * still no clear solution on scope and blocks
 * creating an editor becomes impractical



Present: "Understanding" Monads
----------------------------------

At this point I finally understand monads well enough that I know exactly how
little I understand them.  I have the theory roughly down, as well as the
potential use.  That said I do not know haskell well enough to use them in
software.  I also do not know monads well enough to recreate them or use them
as a non native feature.  I can recognize their potential to help but I am
having trouble drawing examples as monads are hard to explain.

I can say is after further research into monads I am even more confident in my,
at this point, hunch that functors, monads, and other advanced functional
techniques could create a much richer visual language.  

