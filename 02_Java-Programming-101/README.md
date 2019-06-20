# Java Programming 101

OOP Before Java

## Data Types

* `String varName = "A string is enclosed with quotes";`
* `int varName = 5;`
* `char varName = 'a'; // Notice the single quotes use`
* `double varName = 5.023453;`
* `boolean varName = true; // Or false`
* `long varName = 2345235234523453 // A really long int`

## if/else Statements

```java
if(condition) { // Conditions must evaluate to an expression
    // If the condition is true this block runs
} else if(second_condition){
    // If the first condition is false and the second is true
    // this block runs
} else {
    // No other condition was true so only this block runs
}
```

* Comparison Operators
  * `==`
  * `!=`
  * `<`, `>`, `<=` `>=`

* Logical Operators
  * `&&`
  * `!`
  * `||`

## Methods

```java
(visiblity) (return type) methodName( (parameter type) (parameter name) ){
    (return if any)
}
```

* Method Syntax
* Parameters
* Return types
* Visibility options

## Classes

```java
(visiblity) class className {
    (visiblity) className((parameter type) (parameter name)){
        // This is a constuctor and runs immediately when the class is instantiated!
        // The name of the "method" aka constructor must be the same name as the class!
    }
}
```

* `this dot`
* Scopes
  * Difference between object references & local references

## OOP 101

* Everything that you can imagine as an object should be a class
* If something has an attribute is should be a variable
* Any actions or behavior should be represented using functions
* Good naming conventions/practices -.- no (`c++`)
* Organizing code structure
* Documenting classes using Java Docs

