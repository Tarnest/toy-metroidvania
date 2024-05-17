# How to Contribute to this Project
## Programmers
This is pretty much going to be conventions to follow throughout the development of this project.

#### Git Setup
Make sure you have the latest versions of [git](https://git-scm.com/) and [Godot](https://godotengine.org/) installed.

Use `git clone "repository"` into the folder of your choice using either the terminal or Git Bash (for fancy colors!). There is also the option of using GitHub GUI, but I've found the terminal/Git Bash to be much smoother.

Finally, import the project through the Godot Editor by opening the `project.godot` file. 

#### Git Usage
I highly recommend using this [cheatsheet](https://education.github.com/git-cheat-sheet-education.pdf). It has pretty much everything you will need.

Generally, whenever you come back to the project after a bit of time, you will want to do a `git pull`. What this will do is update the project with recently pushed changes made by other programmers.

When you are finished with making changes to something, you will want to **commit** your changes. This is the way to do this:
1. `git add (insert files)`
or
`git add .` (This adds **all** files changed. Generally you will use this)
2. `git commit -m "Insert Message"` (This commits while also giving you space to put a commit message)
3. `git push` (This will push the current commits you've made to the GitHub repository, available for other people to pull)

Other useful commands you will surely be using:
- `git branch` (this will show all existing branches) 
- `git checkout (insert branch name)` (this will transport you to a different branch)
- `git checkout -B (insert branch name)` (this will simultaneously create and transport you to a different branch)

**PLEASE WHENEVER YOU SWITCH BRANCHES OR `git pull`, EXIT THE GODOT EDITOR OR ELSE THERE WILL BE LOOSE FILES.**

There also will come a time where you will have to merge files into the main branch. When this happens and you don't know what to do, ask someone who does, and they can walk you through the process.

#### Godot Programming Conventions
For this project, everything will be statically typed to make things easier to debug. This means that all types are defined and cannot be switched randomly. This will help avoid runtime errors and hopefully catch these before.

**Folders** and **Nodes in the Editor** and **Classes** will be using **PascalCase**.
**File names** and **Functions** and **Variable names** will be using **snake_case**.

Please refer to [this style guide](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_styleguide.html) from the Godot documentation on syntax conventions.

#### GitHub Workflow
Arguably the most important part about this guide. If you would like a very in depth guide (not terribly long but very informative), definitely [watch this series](https://youtube.com/playlist?list=PLCBLMvLIundB2axawTUWHySTeAD-bCfyg&feature=shared). Otherwise, ask me about any complications or questions that come to your mind.

If this needs to be updated later, I will update it, but for now I will just assume you gone through the video series.

## Artists
As an artist, generally you don't want to interact with the code. Therefore, what we are using in this project are inherited scenes through Godot. This allows us to have the artists edit part of the nodes in Godot (such as adding sprites) without affecting anything the programmer is doing, and without confusion in seeing all other irrelevant nodes.

#### First Time Setup
Make sure you have the latest versions of [git](https://git-scm.com/) and [Godot](https://godotengine.org/) installed.

If you haven't already, do `git clone "repository"` in the terminal or Git Bash (with fancy colors!). Make sure you are in the folder you want the project in when entering the command. You have the option of using the GitHub GUI as well if you don't want to bother using the terminal every time, but I've found the terminal to be a lot smoother.

Open the project through the Godot Editor by first clicking the **import** button and then clicking on the **project.godot** file.

#### Adding Assets to Godot
Now that the project is open on your computer, let's go through exactly how you will add assets.

First of all, **when you are dragging assets into the Editor, make sure you organize it into the correct folder**. The best way to know if you are putting it in the correct folder is finding one with a similar name as the current "thing" you are working on.

**Keep in mind the node you will be using will have an "art" suffix**. For example, let's say you are adding in a sprite for the Player. There will be a `player.tscn` and also `player_art.tscn` file. **Make sure to double click** `player_art.tscn`.

The general rule of thumb with importing assets is to put them into textures. If it's more complicated (like animations), ask one of the programmers and they will show you. 