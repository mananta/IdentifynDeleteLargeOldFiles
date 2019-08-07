This is a bash script designed to identify the 10 maximum sized files in a given directory (recursively) and to delete those among the largest 10 which were created before the year 2019.

The directory name has to be provided as an argument to the driver command of the script. An example is ./script.sh ~/Desktop.

For safety purpose the main command responsible for the deletion of the files has been commented out in the script (line 14). If needed it has to be uncommented.