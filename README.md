# KernelDecomposition
Matlab routines for decomposing a kernel density into its components.

There are two functions, KernelDecompostion.m and DecompositionTest.m, that construct and decompose any kernel and test whether the decomposition is statistically meaningful. The .R files should do the same thing but are untested. Example.mat has data in the right format.

There are also a bunch of scripts necessary to reproduce the [paper](https://ideas.repec.org/p/sus/susewp/0720.html) that details the methods. These should be run in the order of ReadEstimates.m, Preprocessing.m, ConstructPDF.m, ConstructPDFgrowth.m, Decompose.m. Or run KernelWrapper.m. 

There is an [application](https://ideas.repec.org/p/sus/susewp/0821.html) to the social cost of carbon. The data are in the Excel spreadsheet. The Stata .dta and .do file run some additional tests.

Results are written to LaTeX using https://uk.mathworks.com/matlabcentral/fileexchange/4894-matrix2latex

The bootstrap will run but its graph will not without https://uk.mathworks.com/matlabcentral/fileexchange/13188-shade-area-between-two-curves

The Kolmogorov-Smirnov test requires https://uk.mathworks.com/matlabcentral/fileexchange/4369-kolmogorov-distribution-functions
