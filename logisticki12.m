function r=logisticki12(Ka,t,y)
V0=Ka(3);
N=length(t);
l=t;
r=0;
for i=1:N
    l(i)=V0*Ka(1)/(V0+(Ka(1)-V0)*exp(-Ka(2)*t(i)));
    r=r+((l(i)-y(i))^2);
end
end