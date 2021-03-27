%% Preprocessing data
%
% First version: Richard Tol, 1 November 2011
% This version: Richard Tol, 27 March 2021

display('Preprocess data');

%
NEstimates = length(SCC);

% age
Oldest = min(Year);
Newest = max(Year);

%weight
TotalWeight = Censor.*TotalWeight;

%filter                                                                                      
Filter = [(Year>206) (PRTP == 3.0) (PRTP == 2.0) (PRTP == 1.5) (PRTP == 1.0) (PRTP == 0.1) (PRTP == 0.0) (PRTP ~= 3.0 & PRTP ~= 2.0 & PRTP ~= 1.5 & PRTP ~= 1.0 & PRTP ~= 0.1 & PRTP ~= 0.0) (Pigou==1 & PRTP==3.0) (Pigou==0 & PRTP==3.0) (Pigou==1 & PRTP==1.0) (Pigou==0 & PRTP==1.0) (Hope==1) (Ploeg==1) (Nordhaus==1) (Tol==1) (Hope==0 & Ploeg==0 & Nordhaus==0 & Tol==0) (Year<=1995) (Year>1995 & Year<=2001) (Year>2001 & Year<=2006) (Year>2006 & Year <=2013) (Year>2013)];
NFilter = length(Filter(1,:));
Titles = {'All studies','3.0% PRTP','2.0% PRTP','1.5% PRTP','1.0% PRTP','0.1% PRTP','0.0% PRTP','Other discount rate','Pigou3','SCC3','Pigou1','SCC1','Hope','Ploeg','Nordhaus','Tol','Other','1982-1995','1996-2001','2002-2006','2007-2013','2014-2020'};

clear v*