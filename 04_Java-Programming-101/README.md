# Java Programming 101

## Data Types

In Java we can save information/data in variables. Every variable must have a specified data type when being declared. These are the following data types and how to declare & instantiate a variable:

* `String varName; // This is a variable that is declared`
* `String varName = "This is a variable that is declared and instantiated";`
* `String varName = "A string is enclosed with quotes" // Strings are typically text, but can be anything as long as it is enclosed in quotes. You can have numbers stored in quotes, but the variable does not behave like a number;`
* `int varName = 5; // Integers are data types that can store any whole numbers`
* `char varName = 'a'; // Notice the single quotes use. Characters store only letters`
* `double varName = 5.023453; // Doubles store numbers with decimal points`
* `boolean varName = true; // Or false. Booleans store conditional values such as true or false`
* `long varName = 2345235234523453 // A really long int`

## if/else Statements

We use if/else statements in order to run code based on certain conditions. For example, if the controller button is pressed, do this. We can write if/else statements like this:

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

### Comparison Operators

We can use special operators to compare two things

* `==` This checks if two things are equal. Notice you cannot use one "=" because that is the assignment operator.
* `!=` This checks if two things are not equal
* `<`, `>`, `<=` `>=` Standard greater/less than checks

### Logical Operators

We can chain comparison checks using logical operators

* `&&` This is the AND operator. If this AND this (Both must be true in order for the check to be true)
* `!` This is the NOT operator. This outputs the opposite value of the check. (!true = false)
* `||` This is the OR operator. If this OR this (Only one has to be true for the check to be true)

## Methods

### Method Syntax

```java
(visiblity) (return type) methodName( (parameter type) (parameter name) ){
    (return if any)
}
```

### Parameters

You can pass variables into methods in order to manipulate them in some way - EX:

```java
public int add(int num1, int num2){
    int sum = num1 + num2;
    return sum;
}
```

Here we are declaring a function called `add` that takes two parameters of type `int`. There parameters must be passed in in order for the code to compile. You can have as many parameters as you would like.

### Return types

With methods you can return some type of value. For example if we take the same function `add`:

```java
public int add (int num1, int num2){
    int sum = num1 + num2;
    return sum;
}
```

We clearly want the function to return an interger (`sum`), so we specify that before the method name `public int (<-- That is the return type) add(int num1, int num2)`. You can return any type you want as long as you specify it, but what if you don't want your method to return something. You can then specify `void` as the return type and Java will not complain.

### Visibility options

When creating methods we sometimes want our methods to be accessible in other classes. We can access our methods/data by providing visibility keywords.

* `public` makes something available to any other class
* `private` makes something available only in the class it is currently in

We want to make things private in order to ensure that we aren't referencing it somewhere we aren't supposed to. For example, we may prefer to use set/getter functions on private variables in order to access our variables directly that way we know we are explicitly trying to access something. Where as if our variables were public, we may accidentally reference it somewhere else and not realize it.

## Classes

Classes are the foundation to your code. All of your code must be put inside of a class in order for it to compile. The class name should be the same name as the java file. You can create a class like so:

```java
(visiblity) class className {
    (visiblity) className((parameter type) (parameter name)){
        // This is a constuctor and runs immediately when the class is instantiated!
        // The name of the "method" aka constructor must be the same name as the class!
        // Notice that we do not specify a return type because the constructor should not return anything.
    }
}
```

### this dot

`this.` is one of them most imporant parts about understanding how classes/objects work. `this.` always referes to the object in which it is referencing. For example, if I have a method add in the following class:

```java
public class Math{
    int num = 0;
    public void addToNum(int num){
        num = num + num;
    }

    addToNum(1); // I am calling the method addToNum here and passing in the value 1 as the parameter
}
```

The following method will produce an undesired result. The class value `num` will still be 0.

#### Scopes

This concept dives some what into what scopes are so we will briefly talk about them here. Think of Java as a lazy refrence finder. Java will always look for the first reference it can find within its scope. In a class, there are typically 3 scopes - A local scope -> A class scope -> and a global scope. Java always starts looking first in the local scope and moves its way throughout. So when we perform `num = num + num;` java only references the local scope which is defined by the `{}`. Therefore, we are only changing the parameter `num` and the class `num` will remain 0. In order to change the class num we must use `this.`:

```java
public class Math{
    int num = 0;
    public void addToNum(int num){
        this.num = num + num;
    }

    addToNum(1); // I am calling the method addToNum here and passing in the value 1 as the parameter
}
```

That looks better but theres still a problem. `num` is currently 0 but the result of calling this function sets it to 2, and no matter how many times we call `addToNum(1);` the class value of num will always be 2. This is why you need to be careful and understand exactly what it is you want to change. We are not changing the class value num in any way but rather setting it to what ever we pass x2. What we want is: `new num = current num + parameter num`. We can fix this by doing:

```java
public class Math{
    int num = 0;
    public void addToNum(int num){
        this.num = this.num + num;
    }

    addToNum(1); // I am calling the method addToNum here and passing in the value 1 as the parameter
}
```

And now our method now works as intended.
