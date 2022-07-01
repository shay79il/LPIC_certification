#!/bin/bash


# Archive all files in the working directory
tar -cf fileName.tar *

# List all the content of a tar file
tar -tf <tar file>

# Append files to a tar file
tar -tr <tar file> <files to be appended>
# For example append all files which start
# with "file" chars to fileName.tar
tar -tr fileName.tar file*

# Extract SPECIFIC file from an archive
tar -xf tarFile.tar fileName

# Extract SPECIFIC files using wildcards from an archive
tar -xf tarFile.tar --wildcards 'fileName_?'

# Extract ALL files from an archive
tar -xf tarFile.tar

##############################################################

# Create zip archive file
tar -czf archive.tar.gz file_*

# Create OTHER zip archive file
tar -cjf archive.tar.gz2 file_*

# Create BETTER zip archive file
zip -r archive.zip file_*






