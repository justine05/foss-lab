echo "The logged user is:" `env logname`
echo "The current shell is:" $SHELL
echo "The home directory is: " $HOME
echo "The OS type is: " `uname -o`
echo "The current path setting is: " $PATH
echo "The current working directory is: " $PWD
echo "The number of users logged in are: " `users | wc -l`
