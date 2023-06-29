
## PATHs ##
root_path := ./../
own_path := ./

src_path := $(root_path)src/
output_path :=  $(own_path)output/

## COMPILER FLAGS ##
nvcc := nvcc
output_filename := output.out
flags := -rdc=true -g -o $(output_filename)
compilation_files := $(output_path)*.cu

## OTHERS ##

remove_temporary_files := $(output_path)*.cu $(output_path)*.cuh

all:

	# Copy main file
	cp $(own_path)*.cu $(output_path)

	# Copy src files into root path
	cp $(src_path)*.cu $(src_path)*.cuh $(output_path)

	# Nvcc compilation
	$(nvcc) $(flags) $(compilation_files)

	# Remove all temporary files
	rm $(remove_temporary_files)

	# Copy output.out to output directory
	mv $(own_path)$(output_filename) $(output_path)
