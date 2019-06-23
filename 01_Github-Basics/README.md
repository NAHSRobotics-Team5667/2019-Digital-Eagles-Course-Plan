# Github Basics

## Lesson setup

Before you begin the lesson:

* Make sure you have `git` installed
* Make sure you have created a dev folder and another subfolder for this assignment
* Make sure you have created a GitHub account and have an internet connection available.

## Creating repositiories

1. Login to your GitHub account and create a new repository. Name it whatever you like; however, DO NOT include a README, gitignore, or license file! After creating the repository, a screen with instructions will display that practically show you how to do what this section is about - Copy the repo link that looks something like this: https://github.com/YourUsername/YourRepositoryName.git
2. `git init` - Creates a new local repository in the current folder you are in. (Everything in this folder will be uploaded and visible to the public on GitHub). Open Visual Studio Code and open the lesson folder you created prior to starting the lesson. Start a new terminal by clicking on `Terminal` -> `New Terminal`. Once this terminal has opened, type `git init`. You have now created a local repository. You can verify this by typing `git status`.
3. `git remote add origin (GitHub repository url)` - In order to link our repository to our public repository on your GitHub account we're going to need to "establish an upload target". Type the command: `git remote add origin (GitHub repository url)` into your terminal and paste the repo link you copied when you create the repository online.

Congrats! You have now created a GitHub repository... but it's currently empty. Right click into the Visual Studio Project Tree and create a new file. Call this file `README.md`. A `.md` file, or MarkDown File, is a file that we can use to display information as well as style it in a simple fashion. Think of it as an easier version of `HTML`. In this file, type the following:

```md
# Hello World
```

We have now added this file to the repository that says "Hello World", but it is not displaying in our GitHub repository online!?

## Stage, Commit, and Push Code

* `git status` - Check the status of the local repository. Type this command and see what it says. "Changes not staged for commit" - What does this mean? Git is saying that it has noticed a change in the repo (we added a file) but it as not been staged yet.
* `git add .` - Stages the entire folder. In order to stage the file we can run the following command: `git add .`. This will stage the entire folder so be careful when running this command. You can run `git status` to see what is being staged. If you do not want certain files to be staged and soon after uploaded publicly you can create a `.gitignore` file, which will be covered later.
* `git commit -m "message"` - Commits the staged files. Now that we have staged the files we want to commit our changes to the repository. We can run the command `git commit -m "(your commit message)"`. Replace your commit message with something that describes the changes you made. For example, "created README file" or "initial commit" works fine in this situation. In the future, commit messages should be specific as to what you did. If you worked on the elevator subsystem and added 2 methods - specifically state that so any other programmers that look at what has changed can see your commit messages and see what you changed.
* `git push origin master` - Pushes the commited code to the GitHub Repository. We can now run the command `git push origin master` to "upload" the code to the online repository. You will be prompted for your GitHub username and password. When entering your password, you will not see characters being inserted. If you mess up, spam the backspace until you think you got it all xD. WARNING: If this is your first time using git, it will automatically assume your email and name for credentials when pushing. A prompt will display what email and name it has assumed. If it is incorrect, commands will be shown on how to update and reset the author for the commit. If you do decide to do this - Please jump to the VIM Basics below as you will have to use vim to update the information. Visual Studio Code might do this for you, but I am not sure.
* Refresh your online GitHub Repository and "Hello World" should display in a huge font!

Congrats! You have now pushed your first file to a public repository! You now know how to create local repositories, link them to public repositories, and push files/code to the repository, thus making them available to the public.

## Vim Basics

What is VIM? VIM is a text editor we can use in the terminal. It's like Notepad if you have a windows computer, but in the terminal.
When you are using VIM you will generally be in 2 modes. You will either be in the insert mode or the command mode. If you would like to type and change text you must be in Insert Mode.

* `esc "i"` - Enter Insert Mode. You can get into insert mode by typing the command. You will now be able to type text. Note: you must use the arrow keys to navigate the file. You cannot use the mouse.

Now that you have inserted/changed text, how do you save and exit? In order to save and exit, you need to be back in command mode. In order to do that you need to press the `escape` or `esc` key in order for VIM to "listen" ->

* `esc ":w"` - Saves the file.
* `esc ":wq"` - Saves and quits the file.
* `esc ":q!"` - Quits the file without saving anything.

NOTE: After pressing the escape key, type `:(the command)`. You should not have any quotation marks(").

## Working with Multiple Programmers

When working on the same repository with multiple programmers it is important to follow a couple of rules:

* `git pull origin master` - Pulls the most recent version of the public repository. When working with multiple programmers, it is most likely that you will be working on different devices. You should always want to have the most recent version of the code when working on your projects! Run the command to pull the repo BEFORE you work on the code and AFTER you are ready to stage files! This ensures that if anyone happens to push code while you're working on something you have the most recent version and don't break anything your peer might have added and vice versa.
* Constantly commit code! If anything ever breaks and we need to revert to an old version, we have multiple commits to revert back to. For example, if you write code for the elevator and drivetrain without committing until the end, and something breaks - we have now lost code for 2 different subsystems. If you commit after writing code for the elevator and then again after the drivetrain - we can revert to whatever version isn't broken without losing all of that hard work!
* Good commit messages! Giving good and detailed messages as to what you specifically worked on / changed is super helpful to other programmers. Your peers will be able to see what you changed and added. This also creates a system of accountability - if you break something, we'll know what was changed exactly.

## Merge Conflicts

* What are they & how to avoid them? You have tried to push old code to a newer version on the public repo. This is either because you forgot to pull or you just have terrible timing. The best way to avoid them is to pull as often as possible and ensure that you have the newest version of the repo. A merge conflict is GitHub's way of saying - You put something in this file that does not match with what I currently have - Which would you like to keep?
* Visual Studio Code has a nice way to handle merge conflicts if you ever happen to run into them. It is a visual solution to the problem, which is incredibly handy! It will visualy display what the repo is expecting and what you currently have and present both options. You can then visually see which option you would like to keep.

## Cloning Repositories

Cloning a repostiory allows you to "copy" the public repository locally. This will allow you to create your own changes and then eventually push them as well.

## Branches

* `git branch` - Get the branch you are currently in.
* `git checkout (branch name)` - Creates the branch if it has not yet been created. If the branch already exists, it will switch you into that branch. You can use the `-b` shortcut to automatically switch into the branch after creating it. `git checkout -b (branch name)` creates a branch and automatically switches you into it.
* `git branch -D (branch name)` - Deletes branch
* `git branch -m (old branch name) (new branch name)` - Renames a branch
* `git push origin (branch name)` - Pushes code to branch. Master being the main branch
* `git merge origin/(branch name)` - Merges two branches together
