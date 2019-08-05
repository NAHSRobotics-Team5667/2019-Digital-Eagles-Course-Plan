# Standard Practices

## Formatting

In order to maintain similar formatting throughout we will be writing our code with the following configurations:

### Spacing

Spacing will be done in tabs (4 spaces) meaning your code should look like this:

```java
public void spacingExample(){
••••// Notice the 4 spaces indentation/tab here
••••int num = 0;
}
```

## Variable Naming and Conventions

Variables should be named with the following keywords:

* `m` for private instances
* `k` for constants

For example:

```java
// Not actual code - just an example -
public class DriveTrain {

    public final double k_MOTOR_SPEED = 1;
    private Motor m_Motor = new Motor();

    public void drive(){
        m_Motor.set(k_MOTOR_SPEED);
    }
}
```

## Method Naming

All methods should be named using camel casing, for example:

```java
public void methodName(){

}
```

It should not be named like so:

```java
public void MethodName(){

}
```

The only things that are allowed to start with capital letters are `Class` names and `Constants`.

## Subsystem & Commands Naming

You always want to define the object you are creating when naming classes. If you are creating a `Subsystem`, make it obvious that the class is a `Subsystem` by adding "Subsystem" at the end of the class name. Same thing with `Commands`.

For example, the DriveTrain Subsystem should be named `DriveTrainSubsystem` and its command should be named `DriveTrainCommand`. By naming our classes like so, we can not only explicitly distinguish between `Subsystems`, `Commands`, and java classes. Most importantly, however, is the fact that if an error arises, we can tell whether it came from the `Command` or `Subsystem` code of the mechanism.

## Documentation

Because we are writing our code primarily in Java, it is good practice to document all code using Java Docs. Visual Studio Code has a nice feature in which it can create Java Doc templates and it can be activated by typing `/**`. The remainder of the comment will be auto-completed and you will be prompted with a "Java Docs" tab that you can press `tab` on. This will generate the Java Docs template as long as the method/class has either parameters or a return type. Other wise you will get an empty multi-line comment. This is what Java docs look like:

```java
// This code is to be taken as an example

/**
 * A Mecanum Drive Subsystem for the robot
 */
public class DriveTrainSubsystem {

    private MecanumDrive drive;

    /**
     * A Mecanum Drive train subsystem for the robot
     *
     * @param frontLeftMotor  - The front Left motor
     * @param rearLeftMotor   - The back left motor
     * @param frontRightMotor - The front right motor
     * @param rearRightMotor  - The back right motor
     */
    public MecanumDriveSubsystem(PWMTalonSRX frontLeftMotor, PWMTalonSRX rearLeftMotor, PWMTalonSRX frontRightMotor, PWMTalonSRX rearRightMotor) {
        this.drive = new MecanumDrive(frontLeftMotor, rearLeftMotor, frontRightMotor, rearRightMotor);
    }

    /**
     * Get the Mecanum Drive Instance
     *
     * @return Returns the MecanumDrive Instance
     */
    public MecanumDrive getDriveInstance(){
        return this.drive;
    }

    /**
     * Compares the speed of the MecanumDrive and a speed provided
     *
     * @param speed - Speed between -1.0 and 1.0
     *
     * @return Returns the MecanumDrive Instance
     */
    public boolean compareSpeed(double speed){
        return this.drive.getSpeed() == speed;
    }
}
```

As you can see, the Java Docs start by providing a description of the method/class. This can be seen when hovering over methods/classes in VSCode. These "tool tips" are not only useful when writing your code, but they also help others understand what the method expects and what it returns.

## Best tool for the job (time based actions vs feedback loops (closed loops vs open loops) )
