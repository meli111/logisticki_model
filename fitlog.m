function [xM,resnormm,exitflagm,ind] = fitlog(data)
pkg load optim %samo za Octave

d=importdata(data);
t=d(:,1);
y=d(:,2);
N=length(t);

load('poclog.mat');
M=length(frazlikelog);

options1 = optimset('TolFun',1e-6,'TolX',1e-6,'MaxIter',1e5,'MaxFunEvals',1e5);


lb = [0,-10000000000,0];%K,a,V0
ub = [];


xM=[0,0,0];
resnormm=0;
exitflagm=0;
ind=0;

for i=1:M
Ka=[Klog(i),alog(i),V0log(i)];

[x1,resnorm1,exitflag1] = fminsearch(@(Ka) logisticki12(Ka,t,y),Ka,options1);

if resnorm1<resnormm || i==1
xM=x1;
resnormm=resnorm1;
exitflagm=exitflag1;
ind=i;
end
end

 l=logisticki1(xM,t);
 
 figure(1)
 hold on
 plot(t,y,'ro')
 plot(t,l,'bx')
 title(strcat('logisticki model : ', data));
 xlabel('vreme');
 ylabel('populacija');
 hold off

end