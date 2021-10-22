%% Construct PDF
%
% First version: Richard Tol, 29 March 2021
% This version: Richard Tol, 29 March 2021

%% Sensitivity analysis on kernel functions
NFilterSave = NFilter;
NFilter = 1;
nosplit = true;
distpos = 'normal'
distneg = 'normal'

JohnsonSU = true;
Silverman = true;
ConstructPDF;
JointPDFJSUS = JointPDF;

Silverman = false;
ConstructPDF;
JointPDFJSU = JointPDF;

%%
Silverman = true;
JohnsonSU = false;
ConstructPDF;
JointPDFSilverman = JointPDF;

Silverman = false;
ConstructPDF;
JointPDFGauss = JointPDF;

nosplit = false;
ConstructPDF;
JointPDFGaussGauss = JointPDF;

distneg = 'gumbel';
ConstructPDF;
JointPDFGumbelGauss = JointPDF;

distpos = 'weibull';
ConstructPDF;
JointPDFGumbelWeibull = JointPDF;

%%
figure
plot(SCCgrid(301:2101),JointPDFSilverman(301:2101,1),SCCgrid(301:2101),JointPDFGauss(301:2101,1),SCCgrid(301:2101),JointPDFGaussGauss(301:2101,1),SCCgrid(301:2101),JointPDFGumbelGauss(301:2101,1),SCCgrid(301:2101),JointPDFGumbelWeibull(301:2101,1))
legend('Normal, Silverman', 'Normal', 'Normal, Normal','Gumbel, Normal', 'Gumbel, Weibull');
xlabel('dollar per tonne of carbon')
ylabel('Probability density')

%% Sensitivity analysis on weights
TotalWeightSave = TotalWeight;

TotalWeight = ones(NEstimates,1);
ConstructPDF;
JointPDFUncensored = JointPDF;

SCCsave = SCC;
SCC = SCCW;
ConstructPDF;
JointPDFWinsorized = JointPDF;
SCC = SCCsave;

TotalWeight = Censor.*ones(NEstimates,1);
ConstructPDF;
JointPDFNone = JointPDF;

TotalWeight = Censor.*PaperWeight;
ConstructPDF;
JointPDFPaper = JointPDF;

TotalWeight = Censor.*AuthorWeight;
ConstructPDF;
JointPDFAuthor = JointPDF;

TotalWeight = TotalWeightSave;
ConstructPDF;
JointPDFQuality = JointPDF;

%%
figure
plot(SCCgrid(301:2101),JointPDFUncensored(301:2101,1),SCCgrid(301:2101),JointPDFWinsorized(301:2101,1),SCCgrid(301:2101),JointPDFNone(301:2101,1),SCCgrid(301:2101),JointPDFPaper(301:2101,1),SCCgrid(301:2101),JointPDFAuthor(301:2101,1),SCCgrid(301:2101),JointPDFQuality(301:2101,1))
legend('Uncensored','Winsorized','No weights','Paper weights', 'Author weights', 'Quality weights');
xlabel('dollar per tonne of carbon')
ylabel('Probability density')

%% restore default
TotalWeight = TotalWeightSave;
ConstructPDF;
JointPDFTotal = JointPDF;

%%
%restore defaults
distpos = 'weibull'; %normal gamma lognormal gumbel weibull=default
distneg = 'gumbel'; %normal gumbel=default
Silverman = false;
nosplit = false;
NFilter = NFilterSave;
ConstructPDF