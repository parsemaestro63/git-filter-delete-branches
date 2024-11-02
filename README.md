# Introduction
This is a simple command to locally delete a project's Git branches, with a special exclusion made to _master_ as well as further user specified branches as passed through the command's options.

## System Requirements
This command was developed, and tested on _macOS 14.6.1 (23G93)_, and _should_ be compatible with most version of Mac.
The command was not tested on Linux, nor is it compatible with Windows systems.

The only other software requirement is to have any version of _Git_ installed.

# Usage
Since the utility is contained within a single file, feel free to simply download _delete-branches.sh_ vs cloning the repository. 

## Commands
Once _delete-branches.sh_ is available on your system, run the following commands:
```shell
# Provide executable permissions to the script.
chmod a+x ./delete-branches.sh
# Load the delete-branches.sh script onto your system's local path.
mv delete-branches.sh /usr/local/bin/delete-branches
# Go to a project location on your system for which you wish to delete stale branches.
cd {your project location}
# Make sure that the current branch is pointed to master
git checkout master
# Run the binary, passing through branches to exclude via the -e option.
delete-branches -e {branch-to-exclude} -e {another-branch-to-exclude}
```

# Credits
Credit for the command used for branch deletion with exclusions goes to https://www.theserverside.com/blog/Coffee-Talk-Java-News-Stories-and-Opinions/delete-all-branches-except-master-main-local-remote.
