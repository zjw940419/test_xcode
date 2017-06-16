yicihangji;

%????1????????
fcount111=0;
fcount121=0;
fcount132=0;
fcount133=0;
fcount134=0;
fcount135=0;
fcount141=0;
fcount143=0;
fcount145=0;

for i=1:count1
    if (Group1(i,7)==0)&&(Group1(i,8)==1)
        fcount111=fcount111+1;
        G1S1Group1=lb(G1S1Group1,fcount111);
        if i==1
            G1fusion.X(:,i)=G1S1Group1.lbX(:,1);
            G1fusion.Y(:,i)=G1S1Group1.lbY(:,1);
            G1fusion.H(:,i)=G1S1Group1.lbH(:,1);
            G1fusion.lbPX=G1S1Group1.lbPX;
            G1fusion.lbPY=G1S1Group1.lbPY;
            G1fusion.lbPH=G1S1Group1.lbPH;
            G1fusion.time(i)=G1S1Group1.time(1);
        else
            G1fusion=fusion(G1fusion,i,G1S1Group1,fcount111);
        end
    elseif (Group1(i,7)==1)&&(Group1(i,8)==1)
        fcount121=fcount121+1;
        G1S2Group1=lb(G1S2Group1,fcount121);
        G1fusion=fusion(G1fusion,i,G1S2Group1,fcount121);
    elseif (Group1(i,7)==2)&&(Group1(i,8)==2)
        fcount132=fcount132+1;
        G1S3Group2=lb(G1S3Group2,fcount132);
        G1fusion=fusion(G1fusion,i,G1S3Group2,fcount132);
    elseif (Group1(i,7)==2)&&(Group1(i,8)==3)
        fcount133=fcount133+1;
        G1S3Group3=lb(G1S3Group3,fcount133);
        G1fusion=fusion(G1fusion,i,G1S3Group3,fcount133);
    elseif (Group1(i,7)==2)&&(Group1(i,8)==4)
        fcount134=fcount134+1;
        G1S3Group4=lb(G1S3Group4,fcount134);
        G1fusion=fusion(G1fusion,i,G1S3Group4,fcount134);
    elseif (Group1(i,7)==2)&&(Group1(i,8)==5)
        fcount135=fcount135+1;
        G1S3Group5=lb(G1S3Group5,fcount135);
        G1fusion=fusion(G1fusion,i,G1S3Group5,fcount135);
    elseif (Group1(i,7)==3)&&(Group1(i,8)==1)
        fcount141=fcount141+1;
        G1S4Group1=lb(G1S4Group1,fcount141);
        G1fusion=fusion(G1fusion,i,G1S4Group1,fcount141);
    elseif (Group1(i,7)==3)&&(Group1(i,8)==3)
        fcount143=fcount143+1;
        G1S4Group3=lb(G1S4Group3,fcount143);
        G1fusion=fusion(G1fusion,i,G1S4Group3,fcount143);
    elseif (Group1(i,7)==3)&&(Group1(i,8)==5)
        fcount145=fcount145+1;
        G1S4Group5=lb(G1S4Group5,fcount145);
        G1fusion=fusion(G1fusion,i,G1S4Group5,fcount145);
    end
end

%????2????????
fcount212=0;
fcount213=0;
fcount222=0;
fcount231=0;
fcount242=0;
fcount244=0;
fcount246=0;

for i=1:count2
    if (Group2(i,7)==0)&&(Group2(i,8)==2)
        fcount212=fcount212+1;
        G2S1Group2=lb(G2S1Group2,fcount212);
        if i==1
            G2fusion.X(:,i)=G2S1Group2.lbX(:,1);
            G2fusion.Y(:,i)=G2S1Group2.lbY(:,1);
            G2fusion.H(:,i)=G2S1Group2.lbH(:,1);
            G2fusion.lbPX=G2S1Group2.lbPX;
            G2fusion.lbPY=G2S1Group2.lbPY;
            G2fusion.lbPH=G2S1Group2.lbPH;
            G2fusion.time(i)=G2S1Group2.time(1);
        else
            G2fusion=fusion(G2fusion,i,G2S1Group2,fcount212);
        end
    elseif (Group2(i,7)==0)&&(Group2(i,8)==3)
        fcount213=fcount213+1;
        G2S1Group3=lb(G2S1Group3,fcount213);
        G2fusion=fusion(G2fusion,i,G2S1Group3,fcount213);
    elseif (Group2(i,7)==1)&&(Group2(i,8)==2)
        fcount222=fcount222+1;
        G2S2Group2=lb(G2S2Group2,fcount222);
        G2fusion=fusion(G2fusion,i,G2S2Group2,fcount222);
    elseif (Group2(i,7)==2)&&(Group2(i,8)==1)
        fcount231=fcount231+1;
        G2S3Group1=lb(G2S3Group1,fcount231);
        G2fusion=fusion(G2fusion,i,G2S3Group1,fcount231);
    elseif (Group2(i,7)==3)&&(Group2(i,8)==2)
        fcount242=fcount242+1;
        G2S4Group2=lb(G2S4Group2,fcount242);
        G2fusion=fusion(G2fusion,i,G2S4Group2,fcount242);
    elseif (Group2(i,7)==3)&&(Group2(i,8)==4)
        fcount244=fcount244+1;
        G2S4Group4=lb(G2S4Group4,fcount244);
        G2fusion=fusion(G2fusion,i,G2S4Group4,fcount244);
    elseif (Group2(i,7)==3)&&(Group2(i,8)==6)
        fcount246=fcount246+1;
        G2S4Group6=lb(G2S4Group6,fcount246);
        G2fusion=fusion(G2fusion,i,G2S4Group6,fcount246);
    end
end

figure(1)
plot(G1S1Group1.clX,G1S1Group1.clY,'r.')
hold on;


plot(G1S2Group1.clX,G1S2Group1.clY,'m.')
hold on;

plot(G1S3Group2.clX,G1S3Group2.clY,'y.',G1S3Group3.clX,G1S3Group3.clY,'y.',G1S3Group4.clX,G1S3Group4.clY,'y.',G1S3Group5.clX,G1S3Group5.clY,'y.')
hold on;

plot(G1S4Group1.clX,G1S4Group1.clY,'b.',G1S4Group3.clX,G1S4Group3.clY,'b.',G1S4Group5.clX,G1S4Group5.clY,'b.')
hold on;
% plot(G1fusion.X(1,:),G1fusion.Y(1,:),'g.-')
figure(2)
plot(G2S1Group2.clX,G2S1Group2.clY,'r.',G2S1Group3.clX,G2S1Group3.clY,'r.')
hold on;

plot(G2S2Group2.clX,G2S2Group2.clY,'m.')
hold on;

plot(G2S3Group1.clX,G2S3Group1.clY,'y.')
hold on;

plot(G2S4Group2.clX,G2S4Group2.clY,'r.',G2S4Group4.clX,G2S4Group4.clY,'r.',G2S4Group6.clX,G2S4Group6.clY,'r.')
hold on;
plot(G2fusion.X(1,:),G2fusion.Y(1,:),'g.-')

figure(3)
% plot(G1fusion.X(1,:),G1fusion.Y(1,:),'g.-',G2fusion.X(1,:),G2fusion.Y(1,:),'g.-')
% hold on;

plot(G1S1Group1.clX,G1S1Group1.clY,'r.')
hold on;


plot(G1S2Group1.clX,G1S2Group1.clY,'m.')
hold on;

plot(G1S3Group2.clX,G1S3Group2.clY,'y.',G1S3Group3.clX,G1S3Group3.clY,'y.',G1S3Group4.clX,G1S3Group4.clY,'y.',G1S3Group5.clX,G1S3Group5.clY,'y.')
hold on;

plot(G1S4Group1.clX,G1S4Group1.clY,'b.',G1S4Group3.clX,G1S4Group3.clY,'b.',G1S4Group5.clX,G1S4Group5.clY,'b.')
hold on;


plot(G2S1Group2.clX,G2S1Group2.clY,'r.',G2S1Group3.clX,G2S1Group3.clY,'r.')
hold on;

plot(G2S2Group2.clX,G2S2Group2.clY,'m.')
hold on;

plot(G2S3Group1.clX,G2S3Group1.clY,'y.')
hold on;

plot(G2S4Group2.clX,G2S4Group2.clY,'r.',G2S4Group4.clX,G2S4Group4.clY,'r.',G2S4Group6.clX,G2S4Group6.clY,'r.')
hold on;

plot(G1fusion.X(1,:),G1fusion.Y(1,:),'g.-',G2fusion.X(1,:),G2fusion.Y(1,:),'g.-')
hold on;
