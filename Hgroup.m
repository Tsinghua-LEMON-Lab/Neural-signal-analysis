function [Hp_T,Hn_T]=Hgroup(H,N_f,N_S)
for i=1:N_f
    Hp_T(i,:)=H((1:N_S)+(i-1)*2*N_S);
    Hn_T(i,:)=H((N_S+1:2*N_S)+(i-1)*2*N_S);
end
end