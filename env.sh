#to print all the env variables in an os.
PID=3008 #you can get the pid by running ps -ef | grep <process_name> | grep -v grep | pgrep <app_name>
cat /proc/$PID/environ | tr '\0' '\n' | head -n 3

echo $PID                        #to print the pid
echo "Process ENN Vars : ${PID}" #to print the pid

PROJECTS_PATH=/home/username/projects

export PROJECTS_PATH             #to export the variable to the os
export PATH=$PATH:$PROJECTS_PATH #to append the path to the existing path varibale of the os

echo $PROJECTS_PATH    #to print the variable
echo ${#PROJECTS_PATH} #to print the length of the variable
echo $SHELL            #to print the shell

#check is the user is root or not.
if [ $UID -ne 0 ]; then
	echo "Non root user. Please run as root."
	exit 1
else
	echo "Root user"
fi

#prepend function to be defined in .bashrc file
prepend() {
	[ -d "$2" ] && eval $1=\"$2':'\$$1\" && export $1 #has a problem if occuring : is the path variable is empty
}
