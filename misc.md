

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


