# bash-scripts
Repository for storing bash scripts


universal-update:  This script is a general purpose script and it updates the packages depending upon the distribution of the Linux system.
logfile-compress: Compresses the log files in a certain directory. 

backup.sh:  A general script that backups a specfied source diectory to destination directory.
            How to use the script: ./backup.sh <source_dir_path> <target_dir_path>

install-jenkins: This script installs jenkins on an ubuntu server.

install-docker: This script checks the package manager and then installs docker on the server accordingly.
                You will need replace the "user_name" in the "sudo usermod -a -G docker user_name" command,
                this command adds the users into the docker group after the installation to give them permissions.