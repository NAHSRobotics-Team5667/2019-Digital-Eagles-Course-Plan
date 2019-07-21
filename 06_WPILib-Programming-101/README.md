# WPI Library Programming 101

All of the information provided was taken from and can be found [here](https://first.wpi.edu/FRC/roborio/release/docs/java/index.html).

## Field Connections

![FMS Setup](FMS-Setup.jpg)

## Package edu.wpi.first.wpilibj.drive

## Drive Trains

* `DifferentialDrive` - A class for driving differential drive/skid-steer drive platforms such as the Kit of Parts drive base, "tank drive", or West Coast Drive.
* `KilloughDrive` - A class for driving Killough drive platforms.
* `MecanumDrive` - A class for driving Mecanum drive platforms. ([example](https://github.com/NAHSRobotics-Team5667/FRC_2019/blob/master/src/main/java/frc/robot/subsystems/drivetrain/MecanumDriveSubsystem.java))
* `Vector2d` - This is a 2D vector struct that supports basic vector operations.

## Package edu.wpi.first.wpilibj

### Motors

* `DMC60` - Digilent DMC 60 Speed Controller.
* `Jaguar` - Texas Instruments / Vex Robotics Jaguar Speed Controller as a PWM device.
* `PWMTalonSRX` - Cross the Road Electronics (CTRE) Talon SRX Speed Controller with PWM control.
* `PWMVictorSPX` - Cross the Road Electronics (CTRE) Victor SPX Speed Controller with PWM control.
* `SD540` - Mindsensors SD540 Speed Controller.
* `Spark` - REV Robotics SPARK Speed Controller.
* `Talon` - Cross the Road Electronics (CTRE) Talon and Talon SR Speed Controller.
* `Victor` - VEX Robotics Victor 888 Speed Controller The Vex Robotics Victor 884 Speed Controller can also be used with this class but may need to be calibrated per the Victor 884 user manual.
* `VictorSP` - VEX Robotics Victor SP Speed Controller.

### Pneumatics

* `Compressor` - Class for operating a compressor connected to a PCM (Pneumatic Control Module).
* `DoubleSolenoid` - DoubleSolenoid class for running 2 channels of high voltage Digital Output on the PCM.
  * `DoubleSolenoid.Value` Possible values for a DoubleSolenoid.
* `Solenoid` - Solenoid class for running high voltage Digital Output on the PCM.

### Encoders

* `Encoder` - Class to read quadrature encoders.

### Ultrasonic sensors

* `Ultrasonic` - Ultrasonic rangefinder class.

### Limit switches

* `DigitalInput` - Class to read a digital input.

## Network Tables

### Package edu.wpi.first.networktables

* `NetworkTable` A network table that knows its subtable path.
* `NetworkTableEntry` - NetworkTables Entry.
* `NetworkTableInstance` - NetworkTables Instance.

## Shuffleboard and SmartDashboard

### Package edu.wpi.first.wpilibj.shuffleboard

* `Shuffleboard` - The Shuffleboard class provides a mechanism with which data can be added and laid out in the Shuffleboard dashboard application from a robot program.

### Package edu.wpi.first.wpilibj.smartdashboard

* `SmartDashboard` - The SmartDashboard class is the bridge between robot programs and the SmartDashboard on the laptop.
