function [area0,area1,area2,r_sup,r_inf,bel,pl,m_Bj]=area_r()
x_mean=[x_ mean(x_)];
a=sort(x_mean);  %ADT data sorting
[bel,pl]=function_P_Box(x_);
m_Bj=BPA(x_);
bel=[bel,1];
pl=[pl,1];

k=1;
for i=1:9
    yy_1(k)=bel(i);
    yy_1(k+1)=bel(i+1);
    xx_1(k)=a(i);
    xx_1(k+1)=a(i);
    k=k+2;
end
l=1;
for i=1:9
    yy_2(l)=pl(i);
    yy_2(l+1)=pl(i+1);
    xx_1(l)=a(i);
    xx_1(l+1)=a(i);
    l=l+2;
end

f1=plot(x1,y1);
hold on;
f2=plot(xx_1,yy_1);
hold on
f3=plot(xx_1,yy_2,'--');
delta=0.001;
for xx=u-3*sigma:delta:u+3*sigma
        if xx<=a(1)
            y_sup=pl(1);
        elseif a(1)<=xx && xx<a(2)
            y_sup=pl(2);
        elseif a(2)<=xx && xx<a(3)
            y_sup=bel(3);
        elseif a(3)<=xx && xx<a(4)
            y_sup=bel(4);
        elseif a(4)<=xx && xx<a(5)
            y_sup=bel(5);
        elseif a(5)<=xx && xx<a(6)
            y_sup=bel(6);
        elseif a(6)<=xx && xx<a(7)
            y_sup=bel(7);
        elseif a(7)<=xx && xx<a(8)
            y_sup=bel(8);
        elseif a(8)<=xx && xx<=a(9)
            y_sup=bel(9);
        elseif xx>a(9)
            y_sup=bel(9);
        end

    y1_h=abs(normcdf(xx,u,sigma)-y_sup);
          if xx<a(2)
            y_inf=bel(2);
        elseif a(2)<=xx && xx<a(3)
            y_inf=bel(3);
        elseif a(3)<=xx && xx<a(4)
            y_inf=bel(4);
        elseif a(5)<=xx && xx<a(6)
            y_inf=bel(6);
        elseif a(6)<=xx && xx<a(7)
            y_inf=bel(7);
        elseif a(7)<=xx && xx<a(8)
            y_inf=bel(8);
        elseif a(8)<=xx && xx<=a(9)
            y_inf=bel(9);
        elseif xx>a(9)
            y_inf=bel(10);
        end

    y2_h=abs(normcdf(xx,u,sigma)-y_inf);
    area0=area0+normcdf(xx,u,sigma)*delta;
end
area0;area1;area2;r_1=area1/area0;r_2=area2/area0;
r_sup=max(r_1,r_2);
r_inf=min(r_1,r_2);
