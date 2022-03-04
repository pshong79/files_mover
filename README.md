# Description:
This app moves files from one directory into another. 

The app requires the user to enter in the `source` and `destination` directory paths and then outputs the list of files in each directory and the files that will be moved from the `source` into the `destination` directory.

This is the first iteration of this application so there are several negative cases that are not safeguarded against such as:
* invalid directory name or path
* invalid file name

## To Run:
To run this application, in console, use the command:
```
$ ruby file_mover.rb
```
