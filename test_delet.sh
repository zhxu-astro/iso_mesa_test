#!/bin/bash

# Array of directories
directories=(2p95mass_0p5rot 2p80mass_0p5rot 2p65mass_0p5rot 2p50mass_0p5rot 2p35mass_0p5rot 2p20mass_0p5rot 2p05mass_0p5rot 1p90mass_0p5rot 1p75mass_0p5rot 1p45mass_0p5rot 1p30mass_0p5rot 1p15mass_0p5rot 1p00mass_0p5rot 1p60mass_0p5rot)

# Loop over the directories
for dir in "${directories[@]}"; do
  # If the directory exists and is a directory
  if [[ -d "$dir" ]]; then
    # Check if LOGS and png1 subdirectories don't exist
    if [[ ! -d "$dir/LOGS" ]]; then
      echo "$dir/LOGS has been deleted."
    else
      echo "$dir/LOGS still exists!"
    fi

    if [[ ! -d "$dir/png1" ]]; then
      echo "$dir/png1 has been deleted."
    else
      echo "$dir/png1 still exists!"
    fi
    
    # Check if the file "inlist_project" exists and is a file
    if [[ -f "$dir/inlist_project" ]]; then
      # Check if "min_D_mix = 5d2" is in the file
      if grep -q "min_D_mix = 5d2" "$dir/inlist_project"; then
        echo "$dir/inlist_project contains the correct value."
      else
        echo "$dir/inlist_project does not contain the correct value!"
      fi
    else
      echo "$dir/inlist_project does not exist!"
    fi
  else
    echo "$dir does not exist!"
  fi
done
