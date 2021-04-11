%% ReadEstimates - Reads estimates of social cost of carbon and study characteristics
%
% First version: Richard Tol, 1 November 2011
% This version: Richard Tol, 11 April 2021

display('Read data');

vFileToOpen = 'socialcostcarbon.xlsx';
%data
SCC = xlsread(vFileToOpen, 'Data', 'L9:L5799');
Growth = xlsread(vFileToOpen, 'Growth', 'G9:G5799');
%study characteristics
GWeight = xlsread(vFileToOpen, 'Growth', 'D9:D5799');
Year = xlsread(vFileToOpen, 'Data', 'D9:D5799');
Censor = xlsread(vFileToOpen, 'Data', 'H9:H5799');
PaperWeight = xlsread(vFileToOpen, 'Data', 'K9:K5799');
AuthorWeight = xlsread(vFileToOpen, 'Data', 'J9:J5799');
TotalWeight= xlsread(vFileToOpen, 'Data', 'I9:I5799');
Peer = xlsread(vFileToOpen, 'Data', 'Q9:Q5799');
PRTP = xlsread(vFileToOpen, 'Data', 'AE9:AE5799');
CDR = xlsread(vFileToOpen, 'Data', 'AD9:AD5799');
EquityWeight = xlsread(vFileToOpen, 'Data', 'AF9:AF5799');
Expectation = xlsread(vFileToOpen, 'Data', 'AG9:AG5799');
Hope = xlsread(vFileToOpen, 'Data', 'AH9:AH5799');
Nordhaus = xlsread(vFileToOpen, 'Data', 'AI9:AI5799');
Tol = xlsread(vFileToOpen, 'Data', 'AJ9:AJ5799');
Ploeg = xlsread(vFileToOpen, 'Data', 'AK9:AK5799');
Pigou = xlsread(vFileToOpen, 'Data', 'AM9:AM5799');
Neg = xlsread(vFileToOpen, 'Data', 'W9:W5799');

clear v*