# Setting Up Your Environment

## Windows

1. Visit the [WPILib GitHub](https://github.com/wpilibsuite/allwpilib/releases) page and download the appropriate installer.
2. Run the installer
3. Download and install Visual Studio Code using the installer
4. Download [Git](https://git-scm.com/) if you dont have it. Use default settings & ensure desktop shortcut is created
5. Check the end of this page for the final instruction.

## Mac

1. Download [Visual Studio Code](https://code.visualstudio.com/)
2. Visit the [WPILib GitHub](https://github.com/wpilibsuite/allwpilib/releases) page, download most recent release to your `Downloads` folder, and extract the folder.
3. Rename the newly extracted folder to `frc2019`
4. Open a terminal and type `mv ~/Downloads/frc2019 ~`
5. Open Visual Studio Code and open the extensions tab (cube-like icon on left side). Then click on the 3 dots next to the search bar and select `Install from VSIX...`. Navigate to the frc2019 folder (In your home folder) and select the extensions folder. Select an extension to install. Do this for each extension in the folder.
6. Open the terminal (spotlight search: cmd+space - Search for terminal) and type git --version. If a git version pops up you're done! Check the end of this page for final instructions. Otherwise, an installer should pop up. Proceed with the installer (it may take a while...)

## Linux

1. Download [Visual Studio Code](https://code.visualstudio.com/)
2. Visit the [WPILib GitHub](https://github.com/wpilibsuite/allwpilib/releases) page, download the most recent release to your `Downloads` folder, and extract the folder.
3. Rename the newly extracted folder to `frc2019`
4. Open a terminal and type `mv ~/Downloads/frc2019 ~`
5. Open Visual Studio Code and open the extensions tab (cube-like icon on left side). Then click on the 3 dots next to the search bar and select `Install from VSIX...`. Navigate to the frc2019 folder (In your home folder) and select the extensions folder. Select an extension to install. Do this for each extension in the folder.
6. Install `git` using your distribution's package manager if you don't have it already (run `git --version` in the terminal to check).

## All Operating Systems Final Installation

* Open Visual Studio Code
     1. Ensure the WPILib extension and the Java Extension Pack are both installed.
     2. Open the command palette by clicking on `View` -> `Command Palette` and type `WPILib: Set VS Code Java Home to FRC Java Home` and press enter.
     3. Open `File` -> `Preferences` -> `Settings` and make sure the following is set correctly by searching for it in the search bar:
        * `Tab Size` = `4`
        * `Format on paste` checked
        * `Format on save` checked
