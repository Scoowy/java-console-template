# Java console template

Template for future projects in Java using only the terminal.

I have created this template in order to make small projects and only using the terminal (`Windows PowerShell`).

Espero que sea de tu utilidad.

## Folder structure

In the root of the project there is the `src` folder and a `.cmd` file, within `src` there are two packages for example, the package that contains the `main` class and another.

In the `.cmd` file there is a script that generates the files and folders that are required to proceed with the compilation of the Java project, the compiled project will be located in the build folder.

Below I present the current structure of the project:

```bash
root-folder
│   .gitignore
│   compiler.cmd
|
└───src
    │
    ├───consoletest
    │       ConsoleTest.java
    │
    └───utils
            Operations.java
```

Once the `compiler.cmd` script is executed, it will have a folder structure similar to the following:

```bash
root-folder
│   .gitignore
│   compiler.cmd
│   sources.txt
│
├───build
│   │   runner.cmd
│   │
│   ├───consoletest
│   │       ConsoleTest.class
│   │
│   └───utils
│           Operations.class
│
└───src
    │
    ├───consoletest
    │       ConsoleTest.java
    │
    └───utils
            Operations.java
```

Inside the `build` folder you can see a script called `runner.cmd`, which allows you to run the project directly.

It should be noted that this only works if `compiler.cmd` is correctly passed the `main` class and the package that contains it as a line parameter.

## Run the build

The template provides a script called `compiler.cmd`, this script needs a parameter, which refers to the address of the `main` class that starts the project.

_Note: The path to the `main` class must be written as a package path in Java._

Execution example of the `command.cmd` script:

```bash
.\compiler.cmd consoletest.ConsoleTest
```
