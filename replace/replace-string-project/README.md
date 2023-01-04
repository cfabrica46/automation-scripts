# Match in Project

The script is used to find all matches for a string in all child files of where the script is executed

The scirpt is divided in 2 parts connected by a pipeline

1. ```find . -type f```
2. ```xargs grep "main" ```

Explanation:

1. ```find . -type f``` is used to find all files in the main directory, the flag '-type f' is used to run only files but no directories.
2. ```xargs grep "main"``` takes the standard system output and executes the following command for each stdout result
