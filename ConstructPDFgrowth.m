%% Construct PDF
%
% First version: Richard Tol, 2 November 2011
% This version: Richard Tol, 17 February 2020

display('Construct joint PDF');

dist = 'normal';
Silverman = false;

grgrid(1)= -0.02;
Ngg = 1000; 
for i=1:Ngg-1,
     grgrid(i+1)=grgrid(i)+0.0001;
end

vkernel = zeros(Ngg,1);

ObsGrowth = Growth(~isnan(Growth));
ObsWeight = TotalWeight(~isnan(Growth));
NE = length(ObsGrowth);
Gilter = Filter(~isnan(Growth),1:8); %only separate by discount rate
NGilter = size(Gilter,2);

for j=1:NGilter,
SampleAveGr = sum(ObsGrowth(Gilter(:,j)).*ObsWeight(Gilter(:,j)))/sum(ObsWeight(Gilter(:,j)));
vAveSq = sum(ObsGrowth(Gilter(:,j)).*ObsGrowth(Gilter(:,j)).*ObsWeight(Gilter(:,j)))/sum(ObsWeight(Gilter(:,j)));
SampleSDgr = sqrt(vAveSq-SampleAveGr*SampleAveGr);
        
vkernel = zeros(Ngg,NE);

vkernel(isnan(vkernel)) = 0;
   
scale = sum(vkernel);
for i=1:NE,
    if scale(i)>0
       vkernel(:,i) = vkernel(:,i)/scale(i);
    end
end

allkernelgr = vkernel; %save for decomposition
veight = Gilter(:,j).*ObsWeight;
PDFgrowth(:,j) = vkernel*veight;
PDFgrowth(:,j) = PDFgrowth/sum(PDFgrowth);
endfor i=1:NE,
     switch dist
            case 'normal'
                mu = ObsGrowth(i);
                if Silverman
                   sig = 1.06*SampleSDgr/NE^0.2;
                else
                    sig = SampleSDgr;
                end
                vkernel(:,i) = exp(-0.5*(grgrid-mu).^2/sig/sig)/sig/sqrt(2*pi);
           otherwise 
                  vkernel = zeros(NE,1);
     end
end


plot(grgrid,PDFgrowth(:,1))

CDFgrowth = PDFgrowth;
for i=2:Ngg,
    CDFgrowth(i,:) = CDFgrowth(i-1,:)+PDFgrowth(i,:);
end

clear v*