# Command Based Programming 101

## Project/Robot Structure

### Robot.java

The `Robot.java` file is where your robot initialization should be. You should initialize all Subsystems in this class.

### RobotMap.java

This class is meant to be `public` ans `static`. You want to place all of your ports and global variables/constants in this class. For example (camera ports or slide encoder levels). As the name implies, the class is the map to the robot.

### OI.java

This is the "Operator Interface" class. You should initialize the controller and any set button commands in this class. Make sure to allow a getter for the controller to be able to access controller variables in other Subsystems/Commands.

## Subsystems

A Subsystem generally describes a mechanism on the robot. For example, the Drivetrain would be a Subsystem. In the Subsystem you are not making any calls to functionality! You are simply describing the mechanisms behavior and its functionality. For example, the DriveTrain Subsystem should not make a call to `drive()` on its own. It should only describe what the Robot should do when the function `drive` is called. All Subsystems should be named MechanismNameSubsystem.java and extends from the Subsystem class. The Subsystem class has a `initDefaultCommand` method that can be overridden. In this method you should specify the default command the Subsystem uses if applicable. You should NEVER instantiate hardware in Subsystems. Always pass hardware through the constructor! This is to allow for unit testing.

### PID Subsystem vs Custom PID Subsystem

The WPI Library has provided a PID Subsystem class for classes that incorporate PID Subsystems. Unfortunately, the class is overcomplicated and incredibly inefficient and hardly used by FRC Teams. Instead, we will be using either PID classes constructed by other teams or our own PID Class.

## Commands

Commands are classes that make calls on hardware. You should not describe any Robot functionality in this class. Instead you should be calling the behavior you created in a Subsystem. In order to call robot functionality, you should be referencing all of the Subsystems from the Robot class you instantiated or through the use of singletons.
DO NOT instantiate the subsystems in the command! All Commands extend from the Command class and generally should have 5 Overridden commands:

* initialize - Runs before `execute` is called for the first time.
* execute - Runs every time the `Scheduler` sees it's scheduled to run (Game Loop).
* isFinished - Returns boolean value on whether or not the command needs to continue running.
* end - Runs once after isFinished returns true or the TimeOut has been reached in TimedCommands.
* interrupted - Runs if another command requires the same subsystem.

### Command Groups

This is Command Scheduler that allows you to manipulate multiple commands at once. If you have a sequential process you can add commands to the scheduler in a sequential manner meaning: run this command, when it's done run this one, etc. You can also add commands in a parallel fashion allowing commands to run at the same time. A command group must require all of the commands that all of the commands use.

### Instant Commands

An Instant command runs immediately after the robot has been initialized. This can be used to have any `reset` functionality the robot may need. Typically over complicates things and not used often.

### Timed Commands

A `Timed Command` requires a double when instantiating, which represents the amount of time the command "will be alive for". Other than that, the functionality is identical to that of a regular command.

## Static References vs Singletons

Static references to `Subsystems` are typically instantiated in the `Robot.java` class. There is also the possiblity of creating "Singletons" which store their instance statically:

```java
public class Singleton {

    private static Singleton m_Instance;

    /**
     * Singleton example
    */
    public Singleton(){
    }

    /**
     * Get the Singleton instance
     *
     * @return the Singleton instance
    */
    public static Singleton getInstance(){
        if(m_Instance == null){
            m_Instance = new Singleton();
        }

        return m_Instance;
    }
}
```

Singletons are never declared anywhere, and instead accessed through their `getInstance()` methods, which instantiate the class if not yet instantiated. I do not know why some teams prefer to do this or if there are any functional benefits to doing this. I simply use it as a stylistic choice. If I feel that a subsystem is more of a "tool" rather than an actual mechanism, I will create a singleton for it. For example, our [LimeLight Subsystem](https://github.com/NAHSRobotics-Team5667/FRC_2019/blob/master/src/main/java/frc/robot/subsystems/vision/LimeLightSubsystem.java) code is written as a singleton.
