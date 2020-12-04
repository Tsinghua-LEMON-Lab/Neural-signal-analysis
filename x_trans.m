function [X,gain,offset]=x_trans(x)
global vmax vmin;
gain=(vmax-vmin)/(max(x)-min(x));
offset=vmax-gain*max(x);
X=gain*x+offset;
end