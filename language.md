# Language

## Base
Nodes simply represent a typed tuple.  This can be thought of as a any point when multiple pieces of data exist, most importantly as function arguments.
![Node][node]

Arrows connect two nodes.  They represent the identity function in their simplest forms.  For now they should be assumed to just be edges reading left to right.
![Arrow][edge]

Types represent what kind of node needs to be connected a known arrow.
![Type][type]


## Functions

Functions are essentially arrows, so "labeling" an arrow could be thought of as calling a function.  Multiple functions on a single arrow could represent chaining.

Assume all functions are single argument functions (multiple argument currying).

![Function with no arguments][fn0]
![Function with one argument][fn1]
![Function with three arguments][fnN]

More complicated function structures, like infix operations, can be conceived.

![Infix hypothetical][infix]



[container_node]: https://github.com/alecgoebel/div3/raw/master/image/container_node.png "Instance of a container"
[container_type]: https://github.com/alecgoebel/div3/raw/master/image/container_type.png "Container with a type"
[context]: https://github.com/alecgoebel/div3/raw/master/image/context.png "Basic context"
[edge]: https://github.com/alecgoebel/div3/raw/master/image/edge.png "Edge between nodes"
[fn0]: https://github.com/alecgoebel/div3/raw/master/image/fn0.png "Function with no arguments"
[fn1]: https://github.com/alecgoebel/div3/raw/master/image/fn1.png "Function with 1 argument"
[fnN]: https://github.com/alecgoebel/div3/raw/master/image/fnN.png "Function with N arguments"
[infix]: https://github.com/alecgoebel/div3/raw/master/image/infix.png "Infix operator"
[node]: https://github.com/alecgoebel/div3/raw/master/image/node.png "Node"
[type]: https://github.com/alecgoebel/div3/raw/master/image/type.png "Type"
