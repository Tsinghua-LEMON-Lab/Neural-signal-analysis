%% Filter
clc,clear,close
load Target.mat;
load ah.mat;
load f.mat;
load IEEG.mat;
global N_S N_f vmax vmin ah f;
ah=ah;f=f;vmax=0.3; vmin=0.1;
N=length(Target)/2;
N_f=length(ah);
N_S=N/N_f;
Con_t_r=cell(1,1800);
for i=1:1800
    [Con_t_r{i}]=X2Y(IEEG(i,:),Target);
%     if mod(i,100)==0
%         fprintf('i=%d\n',i);
%     end
end
%% Plot
close all;
k=1;
Xl = IEEG(k,:);
Y = Con_t_r{k};
figure
set(gcf,'color','white');
subplot(5,1,1)
x=Xl(61:540);
plot(x,'color',[1 0 0],'linewidth',2);
set(gca,'fontsize',18);
ylabel('Voltage (¦ÌV)','fontsize',18)
xlim([-20,500]);
for j = 1:4
    subplot(5,1,1+j)
    y=Y(j,:);
    plot(y,'color',[0 0 1],'linewidth',2);
    ylabel('Voltage (¦ÌV)','fontsize',18);
    set(gca,'fontsize',18);
    xlim([-20,500]);
end
set(gcf,'position',[100 100 800 900]);
xlabel('Time step','fontsize',18);