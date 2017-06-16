function  fusion=fusion(fusion,k,track,m)

% fusion.time(k)=track.time(m);
% 
% fusion.X(:,k)=track.lbX(:,m);
% 
% fusion.Y(:,k)=track.lbY(:,m);
% 
% fusion.H(:,k)=track.lbH(:,m);
H = [1 0];
Q = 0.5;
fusion.time(k,:)=track.time(m);
            
fusion.deltaT = track.time(m) - fusion.time(k-1);
fusion.fai=[1 fusion.deltaT;0 1];
fusion.gama=[fusion.deltaT^2/2;fusion.deltaT];
                
fusion.yucePX=fusion.fai*fusion.lbPX*fusion.fai'+fusion.gama*Q^2*fusion.gama';
fusion.yuceX=fusion.fai*fusion.X(:,k-1);
fusion.lbPX=inv(inv(fusion.yucePX)+inv(track.lbPX));
fusion.X(:,k)=fusion.lbPX*(inv(fusion.yucePX)*fusion.yuceX+inv(track.lbPX)*track.lbX(:,m));
                
fusion.yucePY=fusion.fai*fusion.lbPY*fusion.fai'+fusion.gama*Q^2*fusion.gama';
fusion.yuceY=fusion.fai*fusion.Y(:,k-1);
fusion.lbPY=inv(inv(fusion.yucePY)+inv(track.lbPY));
fusion.Y(:,k)=fusion.lbPY*(inv(fusion.yucePY)*fusion.yuceY+inv(track.lbPY)*track.lbY(:,m));
                
fusion.yucePH=fusion.fai*fusion.lbPH*fusion.fai'+fusion.gama*Q^2*fusion.gama';
fusion.yuceH=fusion.fai*fusion.H(:,k-1);
fusion.lbPH=inv(inv(fusion.yucePH)+inv(track.lbPH));
fusion.H(:,k)=fusion.lbPH*(inv(fusion.yucePH)*fusion.yuceH+inv(track.lbPH)*track.lbH(:,m));

                


