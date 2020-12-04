function y_t=y_trans(y,ah,ax,bx,f)
global N_f;
a=1./(ah*ax);
Sh=sum(f,2);
assert(size(Sh,1)==N_f,'Sum is wrong');
b=-bx*Sh/ax;
for i=1:N_f
    y_t(i,:)=a(i)*y(i,:)+b(i);
end
end