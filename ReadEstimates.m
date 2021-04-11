%% ReadEstimates - Reads estimates of social cost of carbon and study characteristics
%
% First version: Richard Tol, 1 November 2011
% This version: Richard Tol, 11 April 2021

display('Read data');

vFileToOpen = 'socialcostcarbon.xlsx';
%data
SCC = xlsread(vFileToOpen, 'Data', 'L9:L5780');
Growth = xlsread(vFileToOpen, 'Growth', 'G9:G5780');
%study characteristics
GWeight = xlsread(vFileToOpen, 'Growth', 'D9:D5780');
Year = xlsread(vFileToOpen, 'Data', 'D9:D5780');
Censor = xlsread(vFileToOpen, 'Data', 'H9:H5780');
PaperWeight = xlsread(vFileToOpen, 'Data', 'K9:K5780');
AuthorWeight = xlsread(vFileToOpen, 'Data', 'J9:J5780');
TotalWeight= xlsread(vFileToOpen, 'Data', 'I9:I5780');
Peer = xlsread(vFileToOpen, 'Data', 'Q9:Q5780');
PRTP = xlsread(vFileToOpen, 'Data', 'AE9:AE5780');
CDR = xlsread(vFileToOpen, 'Data', 'AD9:AD5780');
EquityWeight = xlsread(vFileToOpen, 'Data', 'AF9:AF5780');
Expectation = xlsread(vFileToOpen, 'Data', 'AG9:AG5780');
Hope = xlsread(vFileToOpen, 'Data', 'AH9:AH5780');
Nordhaus = xlsread(vFileToOpen, 'Data', 'AI9:AI5780');
Tol = xlsread(vFileToOpen, 'Data', 'AJ9:AJ5780');
Ploeg = xlsread(vFileToOpen, 'Data', 'AK9:AK5780');
Pigou = xlsread(vFileToOpen, 'Data', 'AM9:AM5780');
Neg = xlsread(vFileToOpen, 'Data', 'W9:W5780');

clear v*