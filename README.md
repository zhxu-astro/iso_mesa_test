ISO_TEST_MESA Readme
========

Welcome to the **iso_test_mesa** directory! This directory contains MESA (Modules for Experiments in Stellar Astrophysics) simulation results, various tools, and associated files. The project focuses on analyzing the stellar evolutionary paths under various conditions.

Foundational Theory: Details regarding the foundational theory of this project are presented in an ApJS paper. Please acquaint yourself with the paper before using the tools. When leveraging these tools for your research, please cite our paper.
Directory Structure:

*    1p60mass_0p9roooo: Contains data and related files for simulations with 1.60 mass and 0.9 roooo conditions.
*    Aug1 - Aug4: Directories containing simulation data for various mass and rotation combinations.
**        For instance, under Aug1, there are directories like 0p85mass_0p9rot, representing simulations with 0.85 mass and 0.9 rotation.
*    GIFs: Houses GIF visualizations of simulations, with names indicating the conditions, e.g., 0p70mass_0p5rot.gif.
*    Jul20 - Jul28: Older simulation data, with each directory possibly having further nested structure based on conditions.
*    creat_dir_mass_only.sh & create_directories.sh: Shell scripts for directory management and other tasks.
*    run_models_new.sh & run_models.sh: Shell scripts to initiate MESA simulation runs.
*    test_delet.sh: Shell script for testing deletion operations.
*    HR_plot.ipynb: Jupyter notebook for creating HR plots.
*    'old runs': Directory containing archived older runs.
*    README.txt: Additional guidelines available in both English and Mandarin.


creat_dir_mass_only.sh:
------­-----

This shell script seems to be intended to work with directories in a research context related to astrophysics or stellar simulations, given the names and structure.

Functions:

*    It initializes the base directory and sub-directory where operations will occur.
*    It defines a list of mass values ranging from 0.85 to 3 in increments of 0.15.
*    It appears to be missing a portion of the script which might involve creating directories or taking other actions based on the given mass values.

create_directories.sh:
------­-----

This script is similar to the previous one, but with additional functionality.

Functions:

*    It initializes the base directory and sub-directory.
*    It defines a list of mass values ranging from 0.7 to 3.0 in increments of 0.15.
*    It also initializes an array called rot_ratio, which appears to contain rotation ratios ranging from 0.0 to 0.5 in increments of 0.1.
*    The actual operation to create directories or take further actions is not provided in the shared script.

run_models_new.sh:
------­-----

This script appears to be for processing or running models on directories found within a base directory.

Functions:

    Initializes the base directory.
    Initializes an empty array called directories.
    Reads directories in the base directory, storing them in the directories array.
    The subsequent actions on these directories aren't shown in the shared script, but it can be inferred that some kind of processing or model-running operation would occur next.


run_models.sh:
------­-----

This script is very similar to run_models_new.sh, indicating it might be an earlier version of the same script.

Functions:

    Same as run_models_new.sh – initializes base directory and reads its subdirectories into an array.
    The rest of the script is not provided.

test_delet.sh:
------­-----

This script seems to be for managing or possibly deleting specific directories.

Functions:

    Initializes an array with specific directory names. These directory names appear to combine mass and rotation values.
    Loops over the directory names in the array.
    Checks if each directory exists and if it's an actual directory (the actual code for this check is not shown).
    The subsequent actions are not provided, but given the name test_delet.sh, it's likely the script was meant to delete or test something related to the deletion of these directories.

Overall, these scripts seem to be related to managing and processing directories containing data or models related to astrophysics research. The actual operational parts (e.g., directory creation, model running, deletion) of most scripts are not provided, so these are just general overviews.
