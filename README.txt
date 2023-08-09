ISO_TEST_MESA Readme

Welcome to the test_iso directory! Here we house a collection of directories and files relevant to our MESA (Modules for Experiments in Stellar Astrophysics) simulations. This project provides a means to transform MESA history files into a uniform basis for interpolation, and then construct new stellar evolution tracks and isochrones from that basis.

The project's underlying theory is described in this ApJS paper. We encourage you to read the paper before using these programs. If you utilize these programs in your research, please remember to cite the paper!

The structure of this directory is as follows:

Old runs:

    AddMixing: This directory contains results from MESA simulations where an additional 1D1 mixing has been incorporated.

    AddMixing_1d2: This is similar to the AddMixing directory but with a 1D2 mixing level.

    Basic: A collection of basic MESA simulation files. However, note that these are not used in the current project scope.

    Test: This is where the actively used MESA simulation files reside. These are simple models to test ISO.

    Mass+1.2 and Mass+2.0: These directories hold copies of previous MESA simulation results. Please create a new directory with an appropriate name if you want to use these files.

    README.txt: This file provides further instructions in both English and Chinese.

You can locate the iso project in the parent directory (../iso), or you can call it directly using the $ISO_DIR variable.
测试_ISO 自述文件

欢迎来到 test_iso 目录！这里我们储存了与我们的MESA（Modules for Experiments in Stellar Astrophysics）模拟相关的目录和文件。这个项目提供了一种将MESA历史文件转换为一种用于插值的统一基础的方法，并从该基础构建新的恒星演化轨迹和等时线。

该项目的基础理论在这篇ApJS论文中有所描述。我们建议你在使用这些程序之前阅读这篇论文。如果你在研究中使用了这些程序，请记得引用这篇论文！

这个目录的结构如下：

    AddMixing: 该目录包含了增加了额外1D1混合的MESA模拟结果。

    AddMixing_1d2: 与AddMixing目录类似，但混合等级为1D2。

    Basic: 包含一些基本的MESA模拟文件。但请注意，这些在当前项目范围内并未使用。

    Test: 这里是正在使用的MESA模拟文件。这些都是用于测试ISO的简单模型。

    Mass+1.2 和 Mass+2.0: 这些目录包含了之前的MESA模拟结果的副本。如果你想要使用这些文件，请新建一个具有适当名称的目录。

    README.txt: 该文件用中文和英文提供了进一步的说明。

你可以在父目录（../iso）中找到 iso 项目，或者你可以直接使用 $ISO_DIR 变量来调用它。
