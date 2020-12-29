function l=logisticki1(Ka,t)
V0=Ka(3);
N=length(t);
l=t;
for i=1:N
    l(i)=V0*Ka(1)/(V0+(Ka(1)-V0)*exp(-Ka(2)*t(i)));
end
end