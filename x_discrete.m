function [x_d]=x_discrete(x)
global vmin;
step=0.005;
x_d=zeros(size(x));
id_xvoltage=zeros(size(x));
for i=1:length(x)
    if x(i)==0
        x_d(i)=0;
        id_xvoltage(i)=0;
    else
        id_xvoltage(i)=round((x(i)-vmin)/step)+1;
        x_d(i)=vmin+(id_xvoltage(i)-1)*step;
    end
end
end