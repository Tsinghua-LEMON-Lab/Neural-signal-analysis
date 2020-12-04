function [Con_t_r]=X2Y(Xl,Target)
global ah f N_S N_f;
[X,gain,offset]=x_trans(Xl);
[Hp_Tt,Hn_Tt]=Hgroup(Target,N_f,N_S);
H1=Hp_Tt-Hn_Tt;
x_l=[zeros(1,N_S-1),X,zeros(1,N_S-1)]; 
x_d=x_discrete(x_l);
Xlp=x_d(N_S:length(Xl)+N_S-1);
range=N_S:length(Xlp);
for i=1:N_f
    Con_t_temp(i,:)=conv(Xlp,H1(i,:),'full');
    Con_t(i,:)=Con_t_temp(i,range);
end
Con_t_r=y_trans(Con_t,ah,gain,offset,f);
end