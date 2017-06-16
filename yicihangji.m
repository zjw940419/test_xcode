clear all;
close all;
clc;
load in1117_10_1.dat;%??????
l=length(in1117_10_1);%?????

data=in1117_10_1;%??????

count1=1;
count2=1;%???????
Group1(1,:)=data(1,:);
Group2(1,:)=data(2,:);%?????????????
%??NN?????? ??????(??PPT8.4.1???????)
for i=3:l
    R1=sqrt((data(i,1)-Group1(count1,1))^2+(data(i,2)-Group1(count1,2))^2+(data(i,3)-Group1(count1,3))^2);
    R2=sqrt((data(i,1)-Group2(count2,1))^2+(data(i,2)-Group2(count2,2))^2+(data(i,3)-Group2(count2,3))^2);
    if R1>R2
        count2=count2+1;
        Group2(count2,:)=data(i,:);
        
    else
        count1=count1+1;
        Group1(count1,:)=data(i,:);
    end
    
end
count11=0;
count12=0;
count13=0;
count14=0;
%???????????????
for i=1:count1
    if Group1(i,7)==0%0??
        count11=count11+1;
        G1Station1.time(1,count11)=Group1(i,9)/1000;
        G1Station1.clX(1,count11)=Group1(i,1);
        G1Station1.clY(1,count11)=Group1(i,2);
        G1Station1.clH(1,count11)=Group1(i,3);
        G1Station1.clD(1,count11)=Group1(i,4);
        G1Station1.clEpsilon(1,count11)=Group1(i,5)*pi/3000;
        G1Station1.clBeta(1,count11)=Group1(i,6)*pi/3000;
        G1Station1.group(1,count11)=Group1(i,8);
    elseif Group1(i,7)==1%1??
        count12=count12+1;
        G1Station2.time(1,count12)=Group1(i,9)/1000;
        G1Station2.clX(1,count12)=Group1(i,1);
        G1Station2.clY(1,count12)=Group1(i,2);  
        G1Station2.clH(1,count12)=Group1(i,3); 
        G1Station2.clD(1,count12)=Group1(i,4);
        G1Station2.clEpsilon(1,count12)=Group1(i,5)*pi/3000;
        G1Station2.clBeta(1,count12)=Group1(i,6)*pi/3000;
        G1Station2.group(1,count12)=Group1(i,8);
    elseif Group1(i,7)==2%2??
        count13=count13+1;
        G1Station3.time(1,count13)=Group1(i,9)/1000;
        G1Station3.clX(1,count13)=Group1(i,1);
        G1Station3.clY(1,count13)=Group1(i,2);  
        G1Station3.clH(1,count13)=Group1(i,3); 
        G1Station3.clD(1,count13)=Group1(i,4);
        G1Station3.clEpsilon(1,count13)=Group1(i,5)*pi/3000;
        G1Station3.clBeta(1,count13)=Group1(i,6)*pi/3000;
        G1Station3.group(1,count13)=Group1(i,8);
    else
        count14=count14+1;
        G1Station4.time(1,count14)=Group1(i,9)/1000;
        G1Station4.clX(1,count14)=Group1(i,1);
        G1Station4.clY(1,count14)=Group1(i,2);  
        G1Station4.clH(1,count14)=Group1(i,3); 
        G1Station4.clD(1,count14)=Group1(i,4);
        G1Station4.clEpsilon(1,count14)=Group1(i,5)*pi/3000;
        G1Station4.clBeta(1,count14)=Group1(i,6)*pi/3000;
        G1Station4.group(1,count14)=Group1(i,8);
    end
end

%?0?????????????
count111=0;
count112=0;
count113=0;
count114=0;
count115=0;
count116=0;
for i=1:count11
    if G1Station1.group(i)==1
        count111=count111+1;
        G1S1Group1.time(1,count111)=G1Station1.time(i);
        G1S1Group1.clX(1,count111)=G1Station1.clX(i);
        G1S1Group1.clY(1,count111)=G1Station1.clY(i);       
        G1S1Group1.clH(1,count111)=G1Station1.clH(i);
        G1S1Group1.clD(1,count111)=G1Station1.clD(i);
        G1S1Group1.clEpsilon(1,count111)=G1Station1.clEpsilon(i);
        G1S1Group1.clBeta(1,count111)=G1Station1.clBeta(i);
        
    elseif G1Station1.group(i)==2
        count112=count112+1;
        G1S1Group2.time(1,count112)=G1Station1.time(i);
        G1S1Group2.clX(1,count112)=G1Station1.clX(i);
        G1S1Group2.clY(1,count112)=G1Station1.clY(i);  
        G1S1Group2.clH(1,count112)=G1Station1.clH(i); 
        G1S1Group2.clD(1,count112)=G1Station1.clD(i);
        G1S1Group2.clEpsilon(1,count112)=G1Station1.clEpsilon(i);
        G1S1Group2.clBeta(1,count112)=G1Station1.clBeta(i);
        
    elseif G1Station1.group(i)==3
        count113=count113+1;
        G1S1Group3.time(1,count113)=G1Station1.time(i);
        G1S1Group3.clX(1,count113)=G1Station1.clX(i);
        G1S1Group3.clY(1,count113)=G1Station1.clY(i);  
        G1S1Group3.clH(1,count113)=G1Station1.clH(i);
        G1S1Group3.clD(1,count113)=G1Station1.clD(i);
        G1S1Group3.clEpsilon(1,count113)=G1Station1.clEpsilon(i);
        G1S1Group3.clBeta(1,count113)=G1Station1.clBeta(i);
        
    elseif G1Station1.group(i)==4
        count114=count114+1;
        G1S1Group4.time(1,count114)=G1Station1.time(i);
        G1S1Group4.clX(1,count114)=G1Station1.clX(i);
        G1S1Group4.clY(1,count114)=G1Station1.clY(i); 
        G1S1Group4.clH(1,count114)=G1Station1.clH(i);
        G1S1Group4.clD(1,count114)=G1Station1.clD(i);
        G1S1Group4.clEpsilon(1,count114)=G1Station1.clEpsilon(i);
        G1S1Group4.clBeta(1,count114)=G1Station1.clBeta(i);
        
    elseif G1Station1.group(i)==5
        count115=count115+1;
        G1S1Group5.time(1,count115)=G1Station1.time(i);
        G1S1Group5.clX(1,count115)=G1Station1.clX(i);
        G1S1Group5.clY(1,count115)=G1Station1.clY(i);
        G1S1Group5.clH(1,count115)=G1Station1.clH(i);
        G1S1Group5.clD(1,count115)=G1Station1.clD(i);
        G1S1Group5.clEpsilon(1,count115)=G1Station1.clEpsilon(i);
        G1S1Group5.clBeta(1,count115)=G1Station1.clBeta(i);
        
    else
        count116=count116+1;
        G1S1Group6.time(1,count116)=G1Station1.time(i);
        G1S1Group6.clX(1,count116)=G1Station1.clX(i);
        G1S1Group6.clY(1,count116)=G1Station1.clY(i);   
        G1S1Group6.clH(1,count116)=G1Station1.clH(i); 
        G1S1Group6.clD(1,count116)=G1Station1.clD(i);
        G1S1Group6.clEpsilon(1,count116)=G1Station1.clEpsilon(i);
        G1S1Group6.clBeta(1,count116)=G1Station1.clBeta(i);
        
    end
end

%?1?????????????
count121=0;
count122=0;
count123=0;
count124=0;
count125=0;
count126=0;
for i=1:count12
    if G1Station2.group(i)==1
        count121=count121+1;
        G1S2Group1.time(1,count121)=G1Station2.time(i);
        G1S2Group1.clX(1,count121)=G1Station2.clX(i);
        G1S2Group1.clY(1,count121)=G1Station2.clY(i); 
        G1S2Group1.clH(1,count121)=G1Station2.clH(i); 
        G1S2Group1.clD(1,count121)=G1Station2.clD(i);
        G1S2Group1.clEpsilon(1,count121)=G1Station2.clEpsilon(i);
        G1S2Group1.clBeta(1,count121)=G1Station2.clBeta(i);
        
    elseif G1Station2.group(i)==2
        count122=count122+1;
        G1S2Group2.time(1,count122)=G1Station2.time(i);
        G1S2Group2.clX(1,count122)=G1Station2.clX(i);
        G1S2Group2.clY(1,count122)=G1Station2.clY(i);    
        G1S2Group2.clH(1,count122)=G1Station2.clH(i);
        G1S2Group2.clD(1,count122)=G1Station2.clD(i);
        G1S2Group2.clEpsilon(1,count122)=G1Station2.clEpsilon(i);
        G1S2Group2.clBeta(1,count122)=G1Station2.clBeta(i);
        
    elseif G1Station2.group(i)==3
        count123=count123+1;
        G1S2Group3.time(1,count123)=G1Station2.time(i);
        G1S2Group3.clX(1,count123)=G1Station2.clX(i);
        G1S2Group3.clY(1,count123)=G1Station2.clY(i);  
        G1S2Group3.clH(1,count123)=G1Station2.clH(i); 
        G1S2Group3.clD(1,count123)=G1Station2.clD(i);
        G1S2Group3.clEpsilon(1,count123)=G1Station2.clEpsilon(i);
        G1S2Group3.clBeta(1,count123)=G1Station2.clBeta(i);
        
    elseif G1Station2.group(i)==4
        count124=count124+1;
        G1S2Group4.time(1,count124)=G1Station2.time(i);
        G1S2Group4.clX(1,count124)=G1Station2.clX(i);
        G1S2Group4.clY(1,count124)=G1Station2.clY(i);   
        G1S2Group4.clH(1,count124)=G1Station2.clH(i); 
        G1S2Group4.clD(1,count124)=G1Station2.clD(i);
        G1S2Group4.clEpsilon(1,count124)=G1Station2.clEpsilon(i);
        G1S2Group4.clBeta(1,count124)=G1Station2.clBeta(i);
        
    elseif G1Station2.group(i)==5
        count125=count125+1;
        G1S2Group5.time(1,count125)=G1Station2.time(i);
        G1S2Group5.clX(1,count125)=G1Station2.clX(i);
        G1S2Group5.clY(1,count125)=G1Station2.clY(i); 
        G1S2Group5.clH(1,count125)=G1Station2.clH(i); 
        G1S2Group5.clD(1,count125)=G1Station2.clD(i);
        G1S2Group5.clEpsilon(1,count125)=G1Station2.clEpsilon(i);
        G1S2Group5.clBeta(1,count125)=G1Station2.clBeta(i);
        
    else
        count126=count126+1;
        G1S2Group6.time(1,count126)=G1Station2.time(i);
        G1S2Group6.clX(1,count126)=G1Station2.clX(i);
        G1S2Group6.clY(1,count126)=G1Station2.clY(i);  
        G1S2Group6.clH(1,count126)=G1Station2.clH(i);  
        G1S2Group6.clD(1,count126)=G1Station2.clD(i);
        G1S2Group6.clEpsilon(1,count126)=G1Station2.clEpsilon(i);
        G1S2Group6.clBeta(1,count126)=G1Station2.clBeta(i);
        
    end
end

%?2??????????
count131=0;
count132=0;
count133=0;
count134=0;
count135=0;
count136=0;
for i=1:count13
    if G1Station3.group(i)==1
        count131=count131+1;
        G1S3Group1.time(1,count131)=G1Station3.time(i);
        G1S3Group1.clX(1,count131)=G1Station3.clX(i);
        G1S3Group1.clY(1,count131)=G1Station3.clY(i);
        G1S3Group1.clH(1,count131)=G1Station3.clH(i);
        G1S3Group1.clD(1,count131)=G1Station3.clD(i);
        G1S3Group1.clEpsilon(1,count131)=G1Station3.clEpsilon(i);
        G1S3Group1.clBeta(1,count131)=G1Station3.clBeta(i);
        
    elseif G1Station3.group(i)==2
        count132=count132+1;
        G1S3Group2.time(1,count132)=G1Station3.time(i);
        G1S3Group2.clX(1,count132)=G1Station3.clX(i);
        G1S3Group2.clY(1,count132)=G1Station3.clY(i); 
        G1S3Group2.clH(1,count132)=G1Station3.clH(i); 
        G1S3Group2.clD(1,count132)=G1Station3.clD(i);
        G1S3Group2.clEpsilon(1,count132)=G1Station3.clEpsilon(i);
        G1S3Group2.clBeta(1,count132)=G1Station3.clBeta(i);
        
    elseif G1Station3.group(i)==3
        count133=count133+1;
        G1S3Group3.time(1,count133)=G1Station3.time(i);
        G1S3Group3.clX(1,count133)=G1Station3.clX(i);
        G1S3Group3.clY(1,count133)=G1Station3.clY(i);  
        G1S3Group3.clH(1,count133)=G1Station3.clH(i); 
        G1S3Group3.clD(1,count133)=G1Station3.clD(i);
        G1S3Group3.clEpsilon(1,count133)=G1Station3.clEpsilon(i);
        G1S3Group3.clBeta(1,count133)=G1Station3.clBeta(i);
        
    elseif G1Station3.group(i)==4
        count134=count134+1;
        G1S3Group4.time(1,count134)=G1Station3.time(i);
        G1S3Group4.clX(1,count134)=G1Station3.clX(i);
        G1S3Group4.clY(1,count134)=G1Station3.clY(i); 
        G1S3Group4.clH(1,count134)=G1Station3.clH(i); 
        G1S3Group4.clD(1,count134)=G1Station3.clD(i);
        G1S3Group4.clEpsilon(1,count134)=G1Station3.clEpsilon(i);
        G1S3Group4.clBeta(1,count134)=G1Station3.clBeta(i);
        
    elseif G1Station3.group(i)==5
        count135=count135+1;
        G1S3Group5.time(1,count135)=G1Station3.time(i);
        G1S3Group5.clX(1,count135)=G1Station3.clX(i);
        G1S3Group5.clY(1,count135)=G1Station3.clY(i);
        G1S3Group5.clH(1,count135)=G1Station3.clH(i);
        G1S3Group5.clD(1,count135)=G1Station3.clD(i);
        G1S3Group5.clEpsilon(1,count135)=G1Station3.clEpsilon(i);
        G1S3Group5.clBeta(1,count135)=G1Station3.clBeta(i);
        
    else
        count136=count136+1;
        G1S3Group6.time(1,count136)=G1Station3.time(i);
        G1S3Group6.clX(1,count136)=G1Station3.clX(i);
        G1S3Group6.clY(1,count136)=G1Station3.clY(i);
        G1S3Group6.clH(1,count136)=G1Station3.clH(i);
        G1S3Group6.clD(1,count136)=G1Station3.clD(i);
        G1S3Group6.clEpsilon(1,count136)=G1Station3.clEpsilon(i);
        G1S3Group6.clBeta(1,count136)=G1Station3.clBeta(i);
        
    end
end

%?3??????????
count141=0;
count142=0;
count143=0;
count144=0;
count145=0;
count146=0;
for i=1:count14
    if G1Station4.group(i)==1
        count141=count141+1;
        G1S4Group1.time(1,count141)=G1Station4.time(i);
        G1S4Group1.clX(1,count141)=G1Station4.clX(i);
        G1S4Group1.clY(1,count141)=G1Station4.clY(i);
        G1S4Group1.clH(1,count141)=G1Station4.clH(i);
        G1S4Group1.clD(1,count141)=G1Station4.clD(i);
        G1S4Group1.clEpsilon(1,count141)=G1Station4.clEpsilon(i);
        G1S4Group1.clBeta(1,count141)=G1Station4.clBeta(i);
        
    elseif G1Station4.group(i)==2
        count142=count142+1;
        G1S4Group2.time(1,count142)=G1Station4.time(i);
        G1S4Group2.clX(1,count142)=G1Station4.clX(i);
        G1S4Group2.clY(1,count142)=G1Station4.clY(i); 
        G1S4Group2.clH(1,count142)=G1Station4.clH(i); 
        G1S4Group2.clD(1,count142)=G1Station4.clD(i);
        G1S4Group2.clEpsilon(1,count142)=G1Station4.clEpsilon(i);
        G1S4Group2.clBeta(1,count142)=G1Station4.clBeta(i);
        
    elseif G1Station4.group(i)==3
        count143=count143+1;
        G1S4Group3.time(1,count143)=G1Station4.time(i);
        G1S4Group3.clX(1,count143)=G1Station4.clX(i);
        G1S4Group3.clY(1,count143)=G1Station4.clY(i);  
        G1S4Group3.clH(1,count143)=G1Station4.clH(i); 
        G1S4Group3.clD(1,count143)=G1Station4.clD(i);
        G1S4Group3.clEpsilon(1,count143)=G1Station4.clEpsilon(i);
        G1S4Group3.clBeta(1,count143)=G1Station4.clBeta(i);
        
    elseif G1Station4.group(i)==4
        count144=count144+1;
        G1S4Group4.time(1,count144)=G1Station4.time(i);
        G1S4Group4.clX(1,count144)=G1Station4.clX(i);
        G1S4Group4.clY(1,count144)=G1Station4.clY(i); 
        G1S4Group4.clH(1,count144)=G1Station4.clH(i); 
        G1S4Group4.clD(1,count144)=G1Station4.clD(i);
        G1S4Group4.clEpsilon(1,count144)=G1Station4.clEpsilon(i);
        G1S4Group4.clBeta(1,count144)=G1Station4.clBeta(i);
        
    elseif  G1Station4.group(i)==5
        count145=count145+1;
        G1S4Group5.time(1,count145)=G1Station4.time(i);
        G1S4Group5.clX(1,count145)=G1Station4.clX(i);
        G1S4Group5.clY(1,count145)=G1Station4.clY(i); 
        G1S4Group5.clH(1,count145)=G1Station4.clH(i); 
        G1S4Group5.clD(1,count145)=G1Station4.clD(i);
        G1S4Group5.clEpsilon(1,count145)=G1Station4.clEpsilon(i);
        G1S4Group5.clBeta(1,count145)=G1Station4.clBeta(i);
        
    else
        count146=count146+1;
        G1S4Group6.time(1,count146)=G1Station4.time(i);
        G1S4Group6.clX(1,count146)=G1Station4.clX(i);
        G1S4Group6.clY(1,count146)=G1Station4.clY(i); 
        G1S4Group6.clH(1,count146)=G1Station4.clH(i); 
        G1S4Group6.clD(1,count146)=G1Station4.clD(i);
        G1S4Group6.clEpsilon(1,count146)=G1Station4.clEpsilon(i);
        G1S4Group6.clBeta(1,count146)=G1Station4.clBeta(i);
        
    end
end

count21=0;
count22=0;
count23=0;
count24=0;
%???????????????
for i=1:count2
    if Group2(i,7)==0
        count21=count21+1;
        G2Station1.time(1,count21)=Group2(i,9)/1000;
        G2Station1.clX(1,count21)=Group2(i,1);
        G2Station1.clY(1,count21)=Group2(i,2);
        G2Station1.clH(1,count21)=Group2(i,3);
        G2Station1.clD(1,count21)=Group2(i,4);
        G2Station1.clEpsilon(1,count21)=Group2(i,5)*pi/3000;
        G2Station1.clBeta(1,count21)=Group2(i,6)*pi/3000;
        G2Station1.group(1,count21)=Group2(i,8);
        
    elseif Group2(i,7)==1
        count22=count22+1;
        G2Station2.time(1,count22)=Group2(i,9)/1000;
        G2Station2.clX(1,count22)=Group2(i,1);
        G2Station2.clY(1,count22)=Group2(i,2);  
        G2Station2.clH(1,count22)=Group2(i,3); 
        G2Station2.clD(1,count22)=Group2(i,4);
        G2Station2.clEpsilon(1,count22)=Group2(i,5)*pi/3000;
        G2Station2.clBeta(1,count22)=Group2(i,6)*pi/3000;
        G2Station2.group(1,count22)=Group2(i,8);
        
    elseif Group2(i,7)==2
        count23=count23+1;
        G2Station3.time(1,count23)=Group2(i,9)/1000;
        G2Station3.clX(1,count23)=Group2(i,1);
        G2Station3.clY(1,count23)=Group2(i,2);  
        G2Station3.clH(1,count23)=Group2(i,3); 
        G2Station3.clD(1,count23)=Group2(i,4);
        G2Station3.clEpsilon(1,count23)=Group2(i,5)*pi/3000;
        G2Station3.clBeta(1,count23)=Group2(i,6)*pi/3000;
        G2Station3.group(1,count23)=Group2(i,8);
        
    else
        count24=count24+1;
        G2Station4.time(1,count24)=Group2(i,9)/1000;
        G2Station4.clX(1,count24)=Group2(i,1);
        G2Station4.clY(1,count24)=Group2(i,2);  
        G2Station4.clH(1,count24)=Group2(i,3); 
        G2Station4.clD(1,count24)=Group2(i,4);
        G2Station4.clEpsilon(1,count24)=Group2(i,5)*pi/3000;
        G2Station4.clBeta(1,count24)=Group2(i,6)*pi/3000;
        G2Station4.group(1,count24)=Group2(i,8);
        
    end
end

count211=0;
count212=0;
count213=0;
count214=0;
count215=0;
count216=0;
for i=1:count21
    if G2Station1.group(i)==1
        count211=count211+1;
        G2S1Group1.time(1,count211)=G2Station1.time(i);
        G2S1Group1.clX(1,count211)=G2Station1.clX(i);
        G2S1Group1.clY(1,count211)=G2Station1.clY(i);    
        G2S1Group1.clH(1,count211)=G2Station1.clH(i);
        G2S1Group1.clD(1,count211)=G2Station1.clD(i);
        G2S1Group1.clEpsilon(1,count211)=G2Station1.clEpsilon(i);
        G2S1Group1.clBeta(1,count211)=G2Station1.clBeta(i);
        
    elseif G2Station1.group(i)==2
        count212=count212+1;
        G2S1Group2.time(1,count212)=G2Station1.time(i);
        G2S1Group2.clX(1,count212)=G2Station1.clX(i);
        G2S1Group2.clY(1,count212)=G2Station1.clY(i); 
        G2S1Group2.clH(1,count212)=G2Station1.clH(i); 
        G2S1Group2.clD(1,count212)=G2Station1.clD(i);
        G2S1Group2.clEpsilon(1,count212)=G2Station1.clEpsilon(i);
        G2S1Group2.clBeta(1,count212)=G2Station1.clBeta(i);
        
    elseif G2Station1.group(i)==3
        count213=count213+1;
        G2S1Group3.time(1,count213)=G2Station1.time(i);
        G2S1Group3.clX(1,count213)=G2Station1.clX(i);
        G2S1Group3.clY(1,count213)=G2Station1.clY(i); 
        G2S1Group3.clH(1,count213)=G2Station1.clH(i);
        G2S1Group3.clD(1,count213)=G2Station1.clD(i);
        G2S1Group3.clEpsilon(1,count213)=G2Station1.clEpsilon(i);
        G2S1Group3.clBeta(1,count213)=G2Station1.clBeta(i);
        
    elseif G2Station1.group(i)==4
        count214=count214+1;
        G2S1Group4.time(1,count214)=G2Station1.time(i);
        G2S1Group4.clX(1,count214)=G2Station1.clX(i);
        G2S1Group4.clY(1,count214)=G2Station1.clY(i); 
        G2S1Group4.clH(1,count214)=G2Station1.clH(i); 
        G2S1Group4.clD(1,count214)=G2Station1.clD(i);
        G2S1Group4.clEpsilon(1,count214)=G2Station1.clEpsilon(i);
        G2S1Group4.clBeta(1,count214)=G2Station1.clBeta(i);
        
    elseif G2Station1.group(i)==5
        count215=count215+1;
        G2S1Group5.time(1,count215)=G2Station1.time(i);
        G2S1Group5.clX(1,count215)=G2Station1.clX(i);
        G2S1Group5.clY(1,count215)=G2Station1.clY(i); 
        G2S1Group5.clH(1,count215)=G2Station1.clH(i); 
        G2S1Group5.clD(1,count215)=G2Station1.clD(i);
        G2S1Group5.clEpsilon(1,count215)=G2Station1.clEpsilon(i);
        G2S1Group5.clBeta(1,count215)=G2Station1.clBeta(i);
        
    else
        count216=count216+1;
        G2S1Group6.time(1,count216)=G2Station1.time(i);
        G2S1Group6.clX(1,count216)=G2Station1.clX(i);
        G2S1Group6.clY(1,count216)=G2Station1.clY(i); 
        G2S1Group6.clH(1,count216)=G2Station1.clH(i);
        G2S1Group6.clD(1,count216)=G2Station1.clD(i);
        G2S1Group6.clEpsilon(1,count216)=G2Station1.clEpsilon(i);
        G2S1Group6.clBeta(1,count216)=G2Station1.clBeta(i);
        
    end
end

count221=0;
count222=0;
count223=0;
count224=0;
count225=0;
count226=0;
for i=1:count22
    if G2Station2.group(i)==1
        count221=count221+1;
        G2S2Group1.time(1,count221)=G2Station2.time(i);
        G2S2Group1.clX(1,count221)=G2Station2.clX(i);
        G2S2Group1.clY(1,count221)=G2Station2.clY(i); 
        G2S2Group1.clH(1,count221)=G2Station2.clH(i);
        G2S2Group1.clD(1,count221)=G2Station2.clD(i);
        G2S2Group1.clEpsilon(1,count221)=G2Station2.clEpsilon(i);
        G2S2Group1.clBeta(1,count221)=G2Station2.clBeta(i);
        
    elseif G2Station2.group(i)==2
        count222=count222+1;
        G2S2Group2.time(1,count222)=G2Station2.time(i);
        G2S2Group2.clX(1,count222)=G2Station2.clX(i);
        G2S2Group2.clY(1,count222)=G2Station2.clY(i);   
        G2S2Group2.clH(1,count222)=G2Station2.clH(i); 
        G2S2Group2.clD(1,count222)=G2Station2.clD(i);
        G2S2Group2.clEpsilon(1,count222)=G2Station2.clEpsilon(i);
        G2S2Group2.clBeta(1,count222)=G2Station2.clBeta(i);
        
    elseif G2Station2.group(i)==3
        count223=count223+1;
        G2S2Group3.time(1,count223)=G2Station2.time(i);
        G2S2Group3.clX(1,count223)=G2Station2.clX(i);
        G2S2Group3.clY(1,count223)=G2Station2.clY(i); 
        G2S2Group3.clH(1,count223)=G2Station2.clH(i); 
        G2S2Group3.clD(1,count223)=G2Station2.clD(i);
        G2S2Group3.clEpsilon(1,count223)=G2Station2.clEpsilon(i);
        G2S2Group3.clBeta(1,count223)=G2Station2.clBeta(i);
        
    elseif G2Station2.group(i)==4
        count224=count224+1;
        G2S2Group4.time(1,count224)=G2Station2.time(i);
        G2S2Group4.clX(1,count224)=G2Station2.clX(i);
        G2S2Group4.clY(1,count224)=G2Station2.clY(i); 
        G2S2Group4.clH(1,count224)=G2Station2.clH(i);
        G2S2Group4.clD(1,count224)=G2Station2.clD(i);
        G2S2Group4.clEpsilon(1,count224)=G2Station2.clEpsilon(i);
        G2S2Group4.clBeta(1,count224)=G2Station2.clBeta(i);
        
    elseif G2Station2.group(i)==5
        count225=count225+1;
        G2S2Group5.time(1,count225)=G2Station2.time(i);
        G2S2Group5.clX(1,count225)=G2Station2.clX(i);
        G2S2Group5.clY(1,count225)=G2Station2.clY(i); 
        G2S2Group5.clH(1,count225)=G2Station2.clH(i);
        G2S2Group5.clD(1,count225)=G2Station2.clD(i);
        G2S2Group5.clEpsilon(1,count225)=G2Station2.clEpsilon(i);
        G2S2Group5.clBeta(1,count225)=G2Station2.clBeta(i);
        
    else
        count226=count226+1;
        G2S2Group6.time(1,count226)=G2Station2.time(i);
        G2S2Group6.clX(1,count226)=G2Station2.clX(i);
        G2S2Group6.clY(1,count226)=G2Station2.clY(i);      
        G2S2Group6.clH(1,count226)=G2Station2.clH(i);  
        G2S2Group6.clD(1,count226)=G2Station2.clD(i);
        G2S2Group6.clEpsilon(1,count226)=G2Station2.clEpsilon(i);
        G2S2Group6.clBeta(1,count226)=G2Station2.clBeta(i);
        
    end
end


count231=0;
count232=0;
count233=0;
count234=0;
count235=0;
count236=0;
for i=1:count23
    if G2Station3.group(i)==1
        count231=count231+1;
        G2S3Group1.time(1,count231)=G2Station3.time(i);
        G2S3Group1.clX(1,count231)=G2Station3.clX(i);
        G2S3Group1.clY(1,count231)=G2Station3.clY(i);  
        G2S3Group1.clH(1,count231)=G2Station3.clH(i);
        G2S3Group1.clD(1,count231)=G2Station3.clD(i);
        G2S3Group1.clEpsilon(1,count231)=G2Station3.clEpsilon(i);
        G2S3Group1.clBeta(1,count231)=G2Station3.clBeta(i);
        
    elseif G2Station3.group(i)==2
        count232=count232+1;
        G2S3Group2.time(1,count232)=G2Station3.time(i);
        G2S3Group2.clX(1,count232)=G2Station3.clX(i);
        G2S3Group2.clY(1,count232)=G2Station3.clY(i); 
        G2S3Group2.clH(1,count232)=G2Station3.clH(i);
        G2S3Group2.clD(1,count232)=G2Station3.clD(i);
        G2S3Group2.clEpsilon(1,count232)=G2Station3.clEpsilon(i);
        G2S3Group2.clBeta(1,count232)=G2Station3.clBeta(i);
        
    elseif G2Station3.group(i)==3
        count233=count233+1;
        G2S3Group3.time(1,count233)=G2Station3.time(i);
        G2S3Group3.clX(1,count233)=G2Station3.clX(i);
        G2S3Group3.clY(1,count233)=G2Station3.clY(i);   
        G2S3Group3.clH(1,count232)=G2Station3.clH(i);
        G2S3Group3.clD(1,count233)=G2Station3.clD(i);
        G2S3Group3.clEpsilon(1,count233)=G2Station3.clEpsilon(i);
        G2S3Group3.clBeta(1,count233)=G2Station3.clBeta(i);
        
    elseif G2Station3.group(i)==4
        count234=count234+1;
        G2S3Group4.time(1,count234)=G2Station3.time(i);
        G2S3Group4.clX(1,count234)=G2Station3.clX(i);
        G2S3Group4.clY(1,count234)=G2Station3.clY(i); 
        G2S3Group4.clH(1,count234)=G2Station3.clH(i);
        G2S3Group4.clD(1,count234)=G2Station3.clD(i);
        G2S3Group4.clEpsilon(1,count234)=G2Station3.clEpsilon(i);
        G2S3Group4.clBeta(1,count234)=G2Station3.clBeta(i);
        
    elseif G2Station3.group(i)==5
        count235=count235+1;
        G2S3Group5.time(1,count235)=G2Station3.time(i);
        G2S3Group5.clX(1,count235)=G2Station3.clX(i);
        G2S3Group5.clY(1,count235)=G2Station3.clY(i);
        G2S3Group5.clH(1,count235)=G2Station3.clH(i);
        G2S3Group5.clD(1,count235)=G2Station3.clD(i);
        G2S3Group5.clEpsilon(1,count235)=G2Station3.clEpsilon(i);
        G2S3Group5.clBeta(1,count235)=G2Station3.clBeta(i);
        
    else
        count236=count236+1;
        G2S3Group6.time(1,count236)=G2Station3.time(i);
        G2S3Group6.clX(1,count236)=G2Station3.clX(i);
        G2S3Group6.clY(1,count236)=G2Station3.clY(i);  
        G2S3Group6.clH(1,count236)=G2Station3.clH(i);  
        G2S3Group6.clD(1,count236)=G2Station3.clD(i);
        G2S3Group6.clEpsilon(1,count236)=G2Station3.clEpsilon(i);
        G2S3Group6.clBeta(1,count236)=G2Station3.clBeta(i);
        
    end
end


count241=0;
count242=0;
count243=0;
count244=0;
count245=0;
count246=0;
for i=1:count24
    if G2Station4.group(i)==1
        count241=count241+1;
        G2S4Group1.time(1,count241)=G2Station4.time(i);
        G2S4Group1.clX(1,count241)=G2Station4.clX(i);
        G2S4Group1.clY(1,count241)=G2Station4.clY(i);  
        G2S4Group1.clH(1,count241)=G2Station4.clH(i);  
        G2S4Group1.clD(1,count241)=G2Station4.clD(i);
        G2S4Group1.clEpsilon(1,count241)=G2Station4.clEpsilon(i);
        G2S4Group1.clBeta(1,count241)=G2Station4.clBeta(i);
        
    elseif G2Station4.group(i)==2
        count242=count242+1;
        G2S4Group2.time(1,count242)=G2Station4.time(i);
        G2S4Group2.clX(1,count242)=G2Station4.clX(i);
        G2S4Group2.clY(1,count242)=G2Station4.clY(i); 
        G2S4Group2.clH(1,count242)=G2Station4.clH(i);
        G2S4Group2.clD(1,count242)=G2Station4.clD(i);
        G2S4Group2.clEpsilon(1,count242)=G2Station4.clEpsilon(i);
        G2S4Group2.clBeta(1,count242)=G2Station4.clBeta(i);
        
    elseif G2Station4.group(i)==3
        count243=count243+1;
        G2S4Group3.time(1,count243)=G2Station4.time(i);
        G2S4Group3.clX(1,count243)=G2Station4.clX(i);
        G2S4Group3.clY(1,count243)=G2Station4.clY(i);
        G2S4Group3.clH(1,count243)=G2Station4.clH(i);
        G2S4Group3.clD(1,count243)=G2Station4.clD(i);
        G2S4Group3.clEpsilon(1,count243)=G2Station4.clEpsilon(i);
        G2S4Group3.clBeta(1,count243)=G2Station4.clBeta(i);
        
    elseif G2Station4.group(i)==4
        count244=count244+1;
        G2S4Group4.time(1,count244)=G2Station4.time(i);
        G2S4Group4.clX(1,count244)=G2Station4.clX(i);
        G2S4Group4.clY(1,count244)=G2Station4.clY(i);
        G2S4Group4.clH(1,count244)=G2Station4.clH(i);
        G2S4Group4.clD(1,count244)=G2Station4.clD(i);
        G2S4Group4.clEpsilon(1,count244)=G2Station4.clEpsilon(i);
        G2S4Group4.clBeta(1,count244)=G2Station4.clBeta(i);
        
    elseif G2Station4.group(i)==5
        count245=count245+1;
        G2S4Group5.time(1,count245)=G2Station4.time(i);
        G2S4Group5.clX(1,count245)=G2Station4.clX(i);
        G2S4Group5.clY(1,count245)=G2Station4.clY(i);
        G2S4Group5.clH(1,count245)=G2Station4.clH(i);
        G2S4Group5.clD(1,count245)=G2Station4.clD(i);
        G2S4Group5.clEpsilon(1,count245)=G2Station4.clEpsilon(i);
        G2S4Group5.clBeta(1,count245)=G2Station4.clBeta(i);
        
    else
        count246=count246+1;
        G2S4Group6.time(1,count246)=G2Station4.time(i);
        G2S4Group6.clX(1,count246)=G2Station4.clX(i);
        G2S4Group6.clY(1,count246)=G2Station4.clY(i);    
        G2S4Group6.clH(1,count246)=G2Station4.clH(i); 
        G2S4Group6.clD(1,count246)=G2Station4.clD(i);
        G2S4Group6.clEpsilon(1,count246)=G2Station4.clEpsilon(i);
        G2S4Group6.clBeta(1,count246)=G2Station4.clBeta(i);
        
    end
end
%  figure(1)
%  plot( G1Station1.clX,G1Station1.clY,'r.', G2Station1.clX,G2Station1.clY,'r.',G1Station2.clX,G1Station2.clY,'b.',G2Station2.clX,G2Station2.clY,'b.'...
%     ,G1Station3.clX,G1Station3.clY,'g.',G2Station3.clX,G2Station3.clY,'g.' ,G1Station4.clX,G1Station4.clY,'m.',G2Station4.clX,G2Station4.clY,'m.')
%  hold on
%  
%  
%  figure(2)
%  plot(G1Station1.clX,G1Station1.clY,'r.',G2Station1.clX,G2Station1.clY,'r.')
%  hold on
%  
%  
%  figure(3)
%  plot(G1Station2.clX,G1Station2.clY,'b.',G2Station2.clX,G2Station2.clY,'b.')
%  hold on
% 
%  figure(4)
%  plot(G1Station3.clX,G1Station3.clY,'g.',G2Station3.clX,G2Station3.clY,'g.')
%  hold on
%  
%  figure(5)
%  plot(G1Station4.clX,G1Station4.clY,'m.',G2Station4.clX,G2Station4.clY,'m.')
%  hold on
%  














