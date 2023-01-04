# Replace string in a project

The script is used to replace all matches from the actually directory to children

The scirpt is divided in 2 parts connected by a pipeline

1. ```find . -type f```
2. ```xargs sed -i 's/gitlab.falabella.com/gitlab.falabella.tech/g'```

Explanation:

1. ```find . -type f``` is used to find all files in the main directory, the flag '-type f' is used to run only files but no directories.
2. ```xargs sed -i 's/gitlab.falabella.com/gitlab.falabella.tech/g'``` takes the standard system output and executes the following command for each stdout result and execute ```sed -i 's/gitlab.falabella.com/gitlab.falabella.tech/g'``` this script replace gitlab.falabella.com to gitlab.falabella.tech, the last 'g' is for not only replace the first match in a row
