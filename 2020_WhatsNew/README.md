# What's New

## Command Based Programming

* Command Based Templates
* Subsystem Periodic
* Commands no longer import Robot
* Convenience wrappers such as "isFinished" not overriden automatically
* More access to Command Scheduler
* Robot OI renamed to RobotContainer
* ALL SUBSYSTEMS DECLARED IN ROBOT CONTAINER
* ALL COMMANDS DECLARED IN ROBOT CONTAINER
* Subsystems should be private
* Constants set in Constants Class with an independent class for each Subsystem
* Inline commands supported using lambdas and method refrences
* Conditional Command (commandOnTrue, commandOnFalse, methodReference/Boolean)
* New Commands to support Inline commands
* Decorator commands for better manipulation (alongWith, andThen, beforeStarting)

## PID

* PIDController passed into PIDSubsystem superclass constructor to set PID Gains
* output = FeedForward in PID Subsystem

## Motion Profiling

* Trapezoid Profiling
* IDEK whats happening
* Combine trapezoid Profiling with PID output
