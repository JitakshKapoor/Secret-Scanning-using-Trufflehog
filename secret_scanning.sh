#!/bin/bash

#repos is the variable which is taking input name of the repo.
#example: If the repo is https://github.com/JitakshKapoor/xyz then only enter the "xyz" in the variable.
repos=("repo1" "repo2" "repo3")

# dir variable is taking input for the directory where you want to save your results
dir="/path/to/directory"

# For Loop will take each repo from the repos variable and the trufflehog command on them, saving the results.
for repo in "${repos[@]}"
do
    echo "Scanning $repo"
    /directory/trufflehog git https://{github username}:{github token}@github.com/JitakshKapoor/$repo.git > $dir/$repo.json # For scanning private repos
    /directory/trufflehog git https://github.com/JitakshKapoor/$repo.git > $dir/$repo.json # For scanning public repos
done






