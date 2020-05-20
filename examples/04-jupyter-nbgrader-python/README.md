# 04-jupyter-nbgrader-python

There are 3 different ways you can interact with this demo:

1. [See a student-like experience via a temporary notebook (no login required)](https://mybinder.org/v2/gh/ttimbers/jupyter-demo/master?filepath=jupyter-nbgrader-python%2Frelease%2Fworksheet_01_python%2Fworksheet_01_python.ipynb)

2. [See a student-like experience via a notebook with persistant storage (Google authentication required)](https://cybera.syzygy.ca/jupyter/hub/user-redirect/git-pull?repo=https%3A%2F%2Fgithub.com%2Fttimbers%2Fjupyter-demo&branch=master&urlpath=tree%2Fjupyter-demo%2Fjupyter-nbgrader-python%2Frelease%2Fworksheet_01_python%2Fworksheet_01_python.ipynb)

3. [See an instructor-like experience via a local install of all the required software](#installation-instructions-for-all software-required-for-the-demo)

## Installation instructions for all software required for the demo

We provide install instructions for the 3 major operating systems:

1. [Mac OSX](#mac-osx)
2. [Windows](#windows)
3. [Ubuntu](#ubuntu)

### Mac OSX

#### Python

nbgrader is a Python program, thus you will need to install it even if you plan to run R in Jupyter. Luckily, [__Anaconda__](https://www.anaconda.com/download/#macos), a popular Python distribution comes with Jupyter as well! When you install Anaconda, you need __Python 3__ to run nbgrader, not __Python 2__, so please choose the Anaconda version that includes Python 3.7

Head to [https://www.anaconda.com/download/#macos](https://www.anaconda.com/download/#macos) and download the Anaconda version for Mac OS with **Python 3.7**. Follow the instructions on that page to run the installer.

#### nbgrader

Open the terminal and type the following: 

```
conda install -c conda-forge nbgrader
jupyter nbextension install --sys-prefix --py nbgrader --overwrite
jupyter nbextension enable --sys-prefix --py nbgrader
jupyter serverextension enable --sys-prefix --py nbgrader
```

### Windows

#### Python

nbgrader is a Python program, thus you will need to install it even if you plan to run R in Jupyter. Luckily, [__Anaconda__](https://www.anaconda.com/download/#macos), a popular Python distribution comes with Jupyter as well! When you install Anaconda, you need __Python 3__ to run nbgrader, not __Python 2__, so please choose the Anaconda version that includes Python 3.7

Head to <https://www.anaconda.com/download/#windows> and download the Anaconda version for Windows with **Python 3.7**. Follow the instructions on that page to run the installer.

#### nbgrader

Open CMD and type the following: 

```
conda install -c conda-forge nbgrader
jupyter nbextension install --sys-prefix --py nbgrader --overwrite
jupyter nbextension enable --sys-prefix --py nbgrader
jupyter serverextension enable --sys-prefix --py nbgrader
```

### Ubuntu

#### Python

nbgrader is a Python program, thus you will need to install it even if you plan to run R in Jupyter. Luckily, [__Anaconda__](https://www.anaconda.com/download/#macos), a popular Python distribution comes with Jupyter as well! When you install Anaconda, you need __Python 3__ to run nbgrader, not __Python 2__, so please choose the Anaconda version that includes Python 3.7

Head to https://www.anaconda.com/download/#linux and download the Anaconda version for Linux with **Python 3.7** (make sure the linux tab is selected). Once the download is finished, open Terminal and execute the following commands:
```
bash path/to/the/file
```

For example,
```
bash Downloads/Anaconda3-2019.07-Linux-x86_64.sh
```
The instructions for the installation will then appear: (1) press Enter; (2) once the licence agreement shows, you can keep pressing enter to go through the whole document, or press Q to quit; (3) Type `yes` to accept the licence agreement; (4) you can accept the default installation location (just press Enter once again); (5) Type `yes` once again to accept the installer to run `conda init`.

#### nbgrader

Open the terminal and type the following: 

```
conda install -c conda-forge nbgrader
jupyter nbextension install --sys-prefix --py nbgrader --overwrite
jupyter nbextension enable --sys-prefix --py nbgrader
jupyter serverextension enable --sys-prefix --py nbgrader
```