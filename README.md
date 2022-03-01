# Odum Julia course

This repository contains all of the code for the [Odum Institute](https://odum.unc.edu) Julia course. For the course, it is typically deployed on [JupyterHub](https://jupyter.org/hub). Instructions to use it locally are below.

## Local usage

1. Download [Julia](https://julialang.org).
2. Download this code repository and extract it, either [as a ZIP](https://github.com/mattwigway/odum-julia/archive/refs/heads/main.zip) or via Git if you're familiar with it.
3. Open a command prompt. On Mac, open the Terminal application. On Windows, open CMD, PowerShell or WSL. Use the `cd` command to navigate to the directory where you extracted the zip, e.g. `cd ~/Downloads/odum-julia` or `cd C:\Users\username\Downloads\odum-julia`, replacing with the correct paths and putting double quotes around the path if it contains special characters. [This guide should get you started if you're not familiar with the command line](https://developer.mozilla.org/en-US/docs/Learn/Tools_and_testing/Understanding_client-side_tools/Command_line)
4. Make sure you're in the right directory. Type `ls` and confirm that you see the `1 Reading Data into Julia.ipynb` file.
5. Start Julia by typing `julia` and pressing enter.
6. Enter the package management mode by pressing `]`. You should see a line ending in `pkg>`
7. Activate the environment for the odum-julia course by typing `activate .` and pressing enter
8. Install the needed packages by typing `instantiate` and pressing enter
9. Press Backspace (Delete on Macs) to exit the package manager. You should see a prompt `julia>`
10. Load the IJulia package which interfaces with Jupyter Notebook by typing `using IJulia` and pressing enter.
11. Open the Jupyter notebook by typing `notebook()`. It may prompt you to install Jupyter; say yes. _If you have Jupyter Notebook installed another way, e.g. through anaconda, and want to use that notebook installation, see the [alternate installation instructions for IJulia](https://julialang.github.io/IJulia.jl/stable/manual/installation/)_.
12. [Download the sensor data](https://files.indicatrix.org/bay_area_freeways.csv) and place it in the `data` directory wherever you extracted the code repository. This data comes from [Caltrans PeMS](https://pems.dot.ca.gov/).

To re-open the notebooks later, repeat steps 3-7 and 9-11.
