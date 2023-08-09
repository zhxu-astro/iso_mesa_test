#!/bin/bash

# Base directory and sub directory
base_dir="/home/zx/Documents/Zh_Research/iso_test_mesa"
base_sub_dir="1p60mass_0p9rot"

# Mass values from 0.7 to 3 in steps of 0.2
mass_values=($(seq 0.7 0.15 3.0))
rot_ratio=("0.0" "0.1" "0.2" "0.3" "0.4" "0.5")

# Ask if user wants to confirm every operation
read -p "Do you want to confirm every operation? [y/n]: " confirm_every
confirm_every=$(echo "$confirm_every" | tr '[:upper:]' '[:lower:]')

# An array to store the new directories
new_directories=()

# Loop through each mass and mixing value
for mass in "${mass_values[@]}"
do
    # Convert decimal point to 'p'
    mass_formatted=$(echo $mass | tr '.' 'p')

    for rot_value in "${rot_ratio[@]}"
    do
        # Convert decimal point to 'p'
        rot_formatted=$(echo $rot_value | tr '.' 'p')
    
        new_dir="${base_dir}/${mass_formatted}mass_${rot_formatted}rot"
        
        # Check if directory already exists
        if [ -d "$new_dir" ]; then
            echo "Directory $new_dir already exists."
            if [ "$confirm_every" == "y" ]; then
                read -p "Do you want to overwrite it? [y/n]: " overwrite
                overwrite=$(echo "$overwrite" | tr '[:upper:]' '[:lower:]')
            else
                overwrite="y"
            fi
            if [ "$overwrite" == "n" ]; then
                continue
            fi
        fi

        # Copy directory
        cp -r "${base_dir}/${base_sub_dir}" "${new_dir}"

        # Print the line before modification
        echo "Before modification:"
        grep 'initial_mass =' "${new_dir}/inlist_project"

        # Update the file
        sed -i "s/initial_mass = 1.60d0/initial_mass = ${mass}d0/g" "${new_dir}/inlist_project"
        sed -i "s/min_D_mix = 9d2/min_D_mix = ${rot_value}d3/g" "${new_dir}/inlist_project"
        sed -i "s/new_omega_div_omega_crit = 0.9d0/new_omega_div_omega_crit = ${rot_value}d0/g" "${new_dir}/inlist_project"

        # Print the line after modification
        echo "After modification:"
        grep 'initial_mass =' "${new_dir}/inlist_project"
        echo "Old mass: 1.6, New mass: ${mass}"

        if [ "$confirm_every" == "y" ]; then
            read -p "Are you sure you want to proceed with these changes? [y/n]: " response
        else
            response="y"
        fi
        if [ "$response" == "y" ]; then
            # Store the new directory
            new_directories+=("${new_dir}")
        else
            echo "Operation aborted by the user"
        fi
    done
done

