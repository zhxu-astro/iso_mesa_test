#!/bin/bash

# Base directory
base_dir="/home/zx/Documents/Zh_Research/iso_test_mesa"

# Array to store directories
directories=()

# Read the directories in the base directory
for dir in ${base_dir}/*
do
    # Only add directories that match the pattern "*mass_0p6rot"
    if [[ -d "$dir" && $(basename "$dir") =~ .+mass_0p[0-9]rot   ]]; then
        directories+=("$dir")
    fi
done

# Read the directories in the base directory
# for dir in ${base_dir}/*
#do
#    # Only add directories that match the pattern "*mass_0p7rot"
#    if [[ -d "$dir" && $(basename "$dir") =~ .+mass_0p7rot   ]]; then
#        directories+=("$dir")
#    fi
#done

# Read the directories in the base directory
#for dir in ${base_dir}/*
#do
#    # Only add directories that match the pattern "*mass_0p8rot"
#    if [[ -d "$dir" && $(basename "$dir") =~ .+mass_0p8rot   ]]; then
#        directories+=("$dir")
#    fi
#done


# Echo the list of directories
echo "Directories to be processed:"
for dir in "${directories[@]}"
do
    echo "${dir}"
done

# Loop through the directories and execute the commands
for dir in "${directories[@]}"
do
    echo "About to execute commands in directory: ${dir}"
    cd "${dir}"
    ./clean
    ./mk
    ./rn
    cd ../
done

echo "########################################################################"
echo "########################################################################"
echo "########################################################################"
echo "########################################################################"
echo "########################################################################"
