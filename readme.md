# Batch file rename for MAC OSX

### How To

1. Create a csv file named `filerename.csv`
1. The first column is the part of the name to replace (old name)
1. The second column is the new part of the name (new name)
1. Create a third column and make it anything.  Copy and paste that to all rows with data.
1. Make sure to remove any whitespace from the column data, the script needs the data to be exact.
1. Add all files to the folder that contains the .csv file and the rename.sh script.
1. To rename all files, run `sh rename.sh` in the Terminal.
1. Errors will be saved to `output.log`.

#### Copyright 2018 Stephen Hartman

