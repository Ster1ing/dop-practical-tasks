There is a directory called somefolder that contains various subdirectories and files. Write script that changes permissions so that:

    for each subdirectory, except for the sharedfolder folder, only the owner (and root) of a file can remove the file within that subdirectory
    the subdirectory with name sharedfolder files that you create in that subdirectory are owned by the group owning the subdirectory
