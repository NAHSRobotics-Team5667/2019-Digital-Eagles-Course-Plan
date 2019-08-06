# Vision Basics

## USB Cameras

We can use USB Cameras to provide the driver with vision functionality. The easiest way to automatically start capturing some sort of camera feed is by using the CameraServer class.

```java
CameraServer.getInstance().startAutomaticCapture();
```

The `startAutomaticCapture()` method can take an `int` parameter, which would be the port on the RIO (Starting from 0).

The method itself returns a UsbCamera object, which means we can manipulate the camera feed if we would like. For example, if we would like to manually set the FPS for the camera we would do the following:

```java
UsbCamera camera = CameraServer.getInstance().startAutomaticCapture();
camera.setFPS(18);
```

Notice, if we do not pass a parameter for the `startAutomaticCapture()` method, it will find the first Camera feed available. If there are none, the program will produce warnings that state that it could not connect to any feed, but will not terminate the robot code.

It is very important that we manually set the camera resolution and frames per second to the appropriate values so that we are not consuming to much bandwidth on the field.

## OpenCV

If for some reason we would like to do some image processing on the image, we can use OpenCV on the Camera. The WPI Library comes with the OpenCV library, which allows us to access the library without having to install any extra dependencies. This means that we can perform computer vision code on the RIO. This isn't ideal however because any image processing will be heavy on the RIO and decrease overall performance. An example of what Image Processing might look like can be found [here](https://github.com/NAHSRobotics-Team5667/Vision-ImageProcessing/blob/master/README.md)(Image Processing for Vision Tracking)

## Modifying and manipulating the camera feed

We are able to pull each frame from the camera and manipulate it in some shape if we would like. For example, we could draw a cross at the center of the feed so that the driver has some sort of aiming mechanism. We can also perform thresholding functionality so that everything on the feed is blacked out except the reflective tape on the field. This will allow us to perform auto-alignment code.

## LimeLight functionality

In simple terms, a LimeLight is a camera hooked up to a PI that performs an extensive amount of vision code. We start by connecting the LimeLight to the radio. From there we can access the LimeLight local server that it runs where we can change configurations, tune the LimeLight, and see the actual LimeLight Feed. All of the tracking values that the LimeLight gets are uploaded as `NetworkTableEntry` in a `NetworkTable` called `limelight`.
The LimeLight feed is also accessible on the SmartDashboard/Shuffleboard as it is streamed an can be easily selected for driver view.
