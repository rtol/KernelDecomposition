%% ReadEstimates - Reads estimates of social cost of carbon and study characteristics
%
% First version: Richard Tol, 1 November 2011
% This version: Richard Tol, 27 March 2021

display('Read data');

vFileToOpen = 'socialcostcarbon.xlsx';
%data
SCC = xlsread(vFileToOpen, 'Data', 'L5:L5356');
Growth = xlsread(vFileToOpen, 'Growth', 'H9:H5360');
%study characteristics[G
GWeight = xlsread(vFileToOpen, 'Growth', 'E9:E5360');
Year = xlsread(vFileToOpen, 'Data', 'D5:D5356');
Censor = xlsread(vFileToOpen, 'Data', 'H5:H5356');
PaperWeight = xlsread(vFileToOpen, 'Data', 'K5:K5356');
AuthorWeight = xlsread(vFileToOpen, 'Data', 'J5:J5356');
TotalWeight= xlsread(vFileToOpen, 'Data', 'I5:I5356');
Peer = xlsread(vFileToOpen, 'Data', 'Q5:Q5356');
PRTP = xlsread(vFileToOpen, 'Data', 'AE5:AE5356');
CDR = xlsread(vFileToOpen, 'Data', 'AD5:AD5356');
EquityWeight = xlsread(vFileToOpen, 'Data', 'AF5:AF5356');
Expectation = xlsread(vFileToOpen, 'Data', 'AG5:AG5356');
Hope = xlsread(vFileToOpen, 'Data', 'AH5:AH5356');
Nordhaus = xlsread(vFileToOpen, 'Data', 'AI5:AI5356');
Tol = xlsread(vFileToOpen, 'Data', 'AJ5:AJ5356');
Ploeg = xlsread(vFileToOpen, 'Data', 'AK5:AK5356');
Pigou = xlsread(vFileToOpen, 'Data', 'AM5:AM5356');
Neg = xlsread(vFileToOpen, 'Data', 'W5:W5356');

clear v*