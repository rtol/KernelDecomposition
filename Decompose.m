CDF = JointCDF(:,1);
TotW = sum(TotalWeight);

%% Filter 2-8 are discount rates
for i=1:7,
    w(i) = sum(Filter(:,i+1).*TotalWeight);
end

for i=1:7,
    dcprtp(:,i) = JointPDF(:,i+1)*w(i)/sum(w);
end

area(SCCgrid(301:2101), dcprtp(301:2101,:));
legend('3.0', '2.0', '1.5','1.0', '0.1', '0.0', 'other');
xlabel('dollar per tonne of carbon')
ylabel('Probability density')

Q(1,:) = sum(dcprtp(CDF<=0.2,:));
Q(2,:) = sum(dcprtp(CDF<=0.4 & CDF > 0.2,:));
Q(3,:) = sum(dcprtp(CDF<=0.6 & CDF > 0.4,:));
Q(4,:) = sum(dcprtp(CDF<=0.8 & CDF > 0.6,:));
Q(5,:) = sum(dcprtp(CDF > 0.8,:));

w = w/sum(w);

columnLabels = {'3.0', '2.0', '1.5','1.0', '0.1', '0.0', 'other'};
rowLabels = {'Q1', 'Q2', 'Q3', 'Q4', 'Q5','Null'};
matrix2latex([Q; 0.2*w], 'discount.tex', 'rowLabels', rowLabels, 'columnLabels', columnLabels, 'alignment', 'c', 'format', '%-6.4f', 'size', 'normal');

for i=1:5,
    P(i,:) = ((Q(i,:) - 0.2*w).^2)./(0.2*w);
end

chiprtp = sum(sum(P))*TotW/5;
pprtp = 1-chi2cdf(chiprtp,(size(Q,1)-1)*(size(Q,2)-1));

clear w Q P

%% Filter 13-17 are authors
for i=1:5,
    w(i) = sum(Filter(:,i+12).*TotalWeight);
end

for i=1:5,
    dcauthor(:,i) = JointPDF(:,i+12)*w(i)/sum(w);
end
area(SCCgrid(301:2101), dcauthor(301:2101,:))
legend('Hope','Ploeg','Nordhaus','Tol','Other')
xlabel('dollar per tonne of carbon')
ylabel('Probability density')

Q(1,:) = sum(dcauthor(CDF<=0.2,:));
Q(2,:) = sum(dcauthor(CDF<=0.4 & CDF > 0.2,:));
Q(3,:) = sum(dcauthor(CDF<=0.6 & CDF > 0.4,:));
Q(4,:) = sum(dcauthor(CDF<=0.8 & CDF > 0.6,:));
Q(5,:) = sum(dcauthor(CDF > 0.8,:));

w = w/sum(w);

columnLabels = {'Hope','Nordhaus','Ploeg','Tol','Other'};
rowLabels = {'Q1', 'Q2', 'Q3', 'Q4', 'Q5','Null'};
matrix2latex([Q; 0.2*w], 'author.tex', 'rowLabels', rowLabels, 'columnLabels', columnLabels, 'alignment', 'c', 'format', '%-6.4f', 'size', 'normal');

for i=1:5,
    P(i,:) = ((Q(i,:) - 0.2*w).^2)./(0.2*w);
end

chiauthor = sum(sum(P))*TotW/5;
pauthor = 1-chi2cdf(chiauthor,(size(Q,1)-1)*(size(Q,2)-1));

clear w Q P
%% Filter 18-22 are periods
for i=1:5,
    w(i) = sum(Filter(:,i+17).*TotalWeight);
end

for i=1:5,
    dcperiod(:,i) = JointPDF(:,i+17)*w(i)/sum(w);
end

area(SCCgrid(301:2101), dcperiod(301:2101,:));
legend('1982-1995','1996-2001','2002-2006','2007-2013', '2014-2020');
xlabel('dollar per tonne of carbon')
ylabel('Probability density')

Q(1,:) = sum(dcperiod(CDF<=0.2,:));
Q(2,:) = sum(dcperiod(CDF<=0.4 & CDF > 0.2,:));
Q(3,:) = sum(dcperiod(CDF<=0.6 & CDF > 0.4,:));
Q(4,:) = sum(dcperiod(CDF<=0.8 & CDF > 0.6,:));
Q(5,:) = sum(dcperiod(CDF > 0.8,:));

w = w/sum(w);

columnLabels = {'1982-1995','1996-2001','2002-2006','2007-2013', '2014-2020'};
rowLabels = {'Q1', 'Q2', 'Q3', 'Q4', 'Q5','Null'};
matrix2latex([Q; 0.2*w], 'period.tex', 'rowLabels', rowLabels, 'columnLabels', columnLabels, 'alignment', 'c', 'format', '%-6.4f', 'size', 'normal');

for i=1:5,
    P(i,:) = ((Q(i,:) - 0.2*w).^2)./(0.2*w);
end

chiperiod = sum(sum(P))*TotW/5;
pperiod = 1-chi2cdf(chiperiod,(size(Q,1)-1)*(size(Q,2)-1));

clear w Q P


%%
for i=1:7,
    w(i) = sum(Gilter(:,i+1).*ObsWeight);
end

for i=1:7,
    dcprtpgr(:,i) = PDFgrowth(:,i+1)*w(i)/sum(w);
end

area(grgrid, dcprtpgr);
legend('3.0', '2.0', '1.5','1.0', '0.1', '0.0', 'other');
xlabel('per year')
ylabel('Probability density')

Q(1,:) = sum(dcprtpgr(CDFgrowth(:,1)<=0.2,:));
Q(2,:) = sum(dcprtpgr(CDFgrowth(:,1)<=0.4 & CDFgrowth(:,1) > 0.2,:));
Q(3,:) = sum(dcprtpgr(CDFgrowth(:,1)<=0.6 & CDFgrowth(:,1) > 0.4,:));
Q(4,:) = sum(dcprtpgr(CDFgrowth(:,1)<=0.8 & CDFgrowth(:,1) > 0.6,:));
Q(5,:) = sum(dcprtpgr(CDFgrowth(:,1) > 0.8,:));

w = w/sum(w);

columnLabels = {'3.0', '2.0', '1.5','1.0', '0.1', '0.0', 'other'};
rowLabels = {'Q1', 'Q2', 'Q3', 'Q4', 'Q5','Null'};
matrix2latex([Q; 0.2*w], 'growth.tex', 'rowLabels', rowLabels, 'columnLabels', columnLabels, 'alignment', 'c', 'format', '%-6.4f', 'size', 'normal');

for i=1:5,
    P(i,:) = ((Q(i,:) - 0.2*w).^2)./(0.2*w);
end

chigr = sum(sum(P))*sum(ObsWeight)/5;
pgr = 1-chi2cdf(chigr,(size(Q,1)-1)*(size(Q,2)-1));

clear v* w Q P