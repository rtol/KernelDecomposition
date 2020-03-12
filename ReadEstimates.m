%% ReadEstimates - Reads estimates of social cost of carbon and study characteristics
%
% First version: Richard Tol, 1 November 2011
% This version: Richard Tol, 1 March 2020

display('Read data');

vFileToOpen = 'socialcostcarbon.xlsx';
%data
SCC = xlsread(vFileToOpen, 'Data', 'L4:L2789');
Growth = xlsread(vFileToOpen, 'Growth', 'G9:G2794');
%study characteristics
Year = xlsread(vFileToOpen, 'Data', 'E4:E2789');
Censor = xlsread(vFileToOpen, 'Data', 'I4:I2789');
AuthorWeight = xlsread(vFileToOpen, 'Data', 'K4:K2789');
TotalWeight= xlsread(vFileToOpen, 'Data', 'J4:J2789');
Peer = xlsread(vFileToOpen, 'Data', 'Q4:Q2789');
PRTP = xlsread(vFileToOpen, 'Data', 'AF4:AF2789');
CDR = xlsread(vFileToOpen, 'Data', 'AE4:AE2789');
EquityWeight = xlsread(vFileToOpen, 'Data', 'AG4:AG2789');
Expectation = xlsread(vFileToOpen, 'Data', 'AH4:AH2789');
Hope = xlsread(vFileToOpen, 'Data', 'AI4:AI2789');
Nordhaus = xlsread(vFileToOpen, 'Data', 'AJ4:AJ2789');
Tol = xlsread(vFileToOpen, 'Data', 'AK4:AK2789');
Ploeg = xlsread(vFileToOpen, 'Data', 'AL4:AL2789');
Pigou = xlsread(vFileToOpen, 'Data', 'AN4:AN2789');
Neg = xlsread(vFileToOpen, 'Data', 'X4:X2789');

clear v*