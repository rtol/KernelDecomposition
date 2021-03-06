# KernelDecomposition
Matlab routines for decomposing a kernel density into its components.

There are two functions, KernelDecompostion.m and DecompositionTest.m, that construct and decompose any kernel and test whether the decomposition is statistically meaningful. The .R files should do the same thing but are untested. Example.mat has data in the right format.

There are also a bunch of scripts necessary to reproduce the [paper](https://ideas.repec.org/p/sus/susewp/0720.html) that details the methods. These should be run in the order of ReadEstimates.m, Preprocessing.m, ConstructPDF.m, ConstructPDFgrowth.m, Decompose.m. The data are in the Excel spreadsheet.
