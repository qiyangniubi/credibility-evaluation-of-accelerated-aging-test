r_l=[0.135537927704138,0.127050029836682,0.122493484026121,0.118182544431267,0.199904259041264,0.123698218556687];
r_u=[0.147825602109415,0.139342563976723,0.134633056350262,0.129952562361881,0.217807847124361,0.136037496214987];
[h,p]=lillietest(r_l);
[h,p]=lillietest(r_u);
[f1,x1,bw]=ksdensity(r_l);%[0.1985]
m=ksdensity(r_l,0.9,'function','icdf')
sum=0;
for i=2:100
    f(1,i)=sum;
    sum=sum+(x1(i)-x1(i-1))*f1(i);
end
plot(x1,f);hold on
[f2,x2] = ecdf(r_l);plot(x2,f2);
[f1,x1,bw]=ksdensity(r_u);%[0.128386600556229,0.216881008700595]
m=ksdensity(r_u,0.9,'function','icdf')
sum=0;
for i=2:100
    f(1,i)=sum;
    sum=sum+(x1(i)-x1(i-1))*f1(i);
end
plot(x1,f);hold on
[f2,x2] = ecdf(r_u);plot(x2,f2);