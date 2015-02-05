### Read Me for Getting and Cleaning Data course

There are two important files in this repository.

run_analysis.R is the R Script to read in the raw files (as provided), and to create the final clean data file.
It is assumed that the files are in the main working directory (where the file will be written).
It is also assumed that the library "data.table" is available.

CodeBook.md contains the variable descriptions, and the summary of what analysis was performed to create the final file.

The final file is meandata.txt
It can be read into R with (assuming it is in the working directory):
data <- read.table("meandata.txt", sep="\t", header = TRUE)
