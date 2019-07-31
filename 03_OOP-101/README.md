# Object Oriented Programming 101

## What are objects? How are they used in Java?

Java is a unique language in that everything is Object Oriented. An object is something that has procedures and data that can be called, accessed, and manipulated. Formally, these procedures are called methods and the data are called attributes naturally stored in variables. The base object in Java is quite literally `Object`. With Objects there exists inheritance in which an object can inherit from another class. An easier way to understand this is to think of objects like a family tree. If object_2 inherits from object_1 then object_2 has data and information "passed on" from object_1 that it can use the same way we inherit traits from our family members. All Objects in Java inherit from a base object: `Object`.

## How can we efficiently use objects?

We can use objects to store our methods and data in a single place. Because each object has its own reference in memory when instantiated, each object can also carry unique information and data specific to that object.

## Objects vs methods

To understand the difference between objects and methods we must understand what a method is: a procedure or "action" that is activated when the method is called. I will explain this topic in terms of the human body. Think of the human body as an Object. Now why did I choose the human body? The human body has attributes (color of hair, number of arms, color of eyes, etc) and it also has actions it can perform (eat, sleep, shower, etc). When deciding between creating an object or a method think to yourself: Should this have attributes? Is this an action? Does what I am trying to create have features that need to be further specified?

Objects should typically be thought of as a foundation to provide attributes/data and actions. Methods should typically be thought of as actions that act upon or manipulate data when asked to.

## What goes in objects?

As previously mentioned, an Object has attributes/variables and methods. You typically want to create variables and actions specific to that Object only. The reason to this is, is because you now have the ability for modularity during inheritance. Isolating the Object to what it is also keeps code clean and organized.
