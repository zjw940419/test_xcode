function  track=lb(track,m)
lbcR=100;
nB=0.5*pi/180;
nE=0.5*pi/180;
H=[1 0];
Q=0.5;


if m==1           
    
    track.lbX(:,1)=[track.clX(1),0]';
    track.lbY(:,1)=[track.clY(1),0]';         
    track.lbH(:,1)=[track.clH(1),0]'; 
    track.lbPX=[100 0;0 100];
    track.lbPY=[100 0;0 100];
    track.lbPH=[100 0;0 100];
    
    track.yuceX=track.clX(1);
    track.yuceY=track.clY(1);
    track.yuceH=track.clH(1);
    
elseif m==2
    track.deltaT = track.time(2)-track.time(1);
    track.fai = [1 track.deltaT;0 1]; 
    
    track.lbX(:,2)=[track.clX(2),(track.clX(2)-track.clX(1))/track.deltaT];
    track.lbY(:,2)=[track.clY(2),(track.clY(2)-track.clY(1))/track.deltaT];
    track.lbH(:,2)=[track.clH(2),(track.clH(2)-track.clH(1))/track.deltaT];
    
    track.lbRx=lbcR^2*(cos(track.clEpsilon(2))*cos(track.clBeta(2)))^2+nE^2*(track.clD(2)*sin(track.clEpsilon(2))*cos(track.clBeta(2)))^2+nB^2*(track.clD(2)*cos(track.clEpsilon(2))*sin(track.clBeta(2)))^2;
    track.lbPX=[track.lbRx 0;0 track.lbRx*2/track.deltaT^2];

    track.lbRy=lbcR^2*(cos(track.clEpsilon(2))*sin(track.clBeta(2)))^2+nE^2*(track.clD(2)*sin(track.clEpsilon(2))*sin(track.clBeta(2)))^2+nB^2*(track.clD(2)*cos(track.clEpsilon(2))*cos(track.clBeta(2)))^2;
    track.lbPY=[track.lbRy 0;0 track.lbRy*2/track.deltaT^2];

    track.lbRh=lbcR^2*(sin(track.clEpsilon(2)))^2+nE^2*(track.clD(2)*cos(track.clEpsilon(2)))^2;
    track.lbPH=[track.lbRh 0;0 track.lbRh*2/track.deltaT^2];

    track.yuceX=track.fai*track.lbX(:,1);
    track.yuceY=track.fai*track.lbY(:,1);
    track.yuceH=track.fai*track.lbH(:,1);
            
else
    track.deltaT = track.time(m)-track.time(m-1);
    
    track.fai = [1 track.deltaT;0 1];        
    track.gama = [track.deltaT^2/2;track.deltaT];
    
    track.lbRx=lbcR^2*(cos(track.clEpsilon(m))*cos(track.clBeta(m)))^2+nE^2*(track.clD(m)*sin(track.clEpsilon(m))*cos(track.clBeta(m)))^2+nB^2*(track.clD(m)*cos(track.clEpsilon(m))*sin(track.clBeta(m)))^2;
    track.yuceX=track.fai*track.lbX(:,m-1);
    track.yucePX=track.fai*track.lbPX*track.fai'+track.gama*Q^2*track.gama';
    track.K=track.yucePX*H'*inv(H*track.yucePX*H'+track.lbRx);
    track.lbX(:,m)=track.yuceX+track.K*(track.clX(m)-H*track.yuceX);
    track.lbPX=(eye(2)-track.K*H)*track.yucePX;
    
    track.lbRy=lbcR^2*(cos(track.clEpsilon(m))*sin(track.clBeta(m)))^2+nE^2*(track.clD(m)*sin(track.clEpsilon(m))*sin(track.clBeta(m)))^2+nB^2*(track.clD(m)*cos(track.clEpsilon(m))*cos(track.clBeta(m)))^2;
    track.yuceY=track.fai*track.lbY(:,m-1);
    track.yucePY=track.fai*track.lbPY*track.fai'+track.gama*Q^2*track.gama';
    track.K=track.yucePY*H'*inv(H*track.yucePY*H'+track.lbRy);
    track.lbY(:,m)=track.yuceY+track.K*(track.clY(m)-H*track.yuceY);
    track.lbPY=(eye(2)-track.K*H)*track.yucePY;
     
    track.lbRh=lbcR^2*(sin(track.clEpsilon(m)))^2+nE^2*(track.clD(m)*cos(track.clEpsilon(m)))^2;
    track.yuceH=track.fai*track.lbH(:,m-1);
    track.yucePH=track.fai*track.lbPH*track.fai'+track.gama*Q^2*track.gama';
    track.K=track.yucePH*H'*inv(H*track.yucePH*H'+track.lbRh);
    track.lbH(:,m)=track.yuceH+track.K*(track.clH(m)-H*track.yuceH);
    track.lbPH=(eye(2)-track.K*H)*track.yucePH;
end


