function [bel,pl]=function_P_Box(x_1)
    m_Bj=BPA(x_1);
    bel(1)=0;
    n=size(m_Bj,2);
    for i=1:n-1
        if bel(i+1)>1
            bel(i+1)=1;
        end
    end
    for i=2:n
        pl(i)=pl(i-1)+m_Bj(i);
        if pl(i)>1
            pl(i)=1;
        end
    end
    
    bel=[0,bel];
    pl=[0,pl];
         
end
