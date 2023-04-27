function m_Bj=BPA(x_1)
for i=1:numel(A)-1   
    L1=(1/sqrt(2))*(((A(:,i)-mean(x_1))^2);
    L2=[L2,L1];
end
for i=1
    L3=L2(i,:)/sum(L2);
end
theta_j=1-L3;
m_Bj=theta_j/sum(theta_j);
end

