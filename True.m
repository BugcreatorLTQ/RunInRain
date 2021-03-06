clear;
clc;
%Real situation
vx=-20:0.1:20;
vy=-20:0.1:20;
[vx,vy]=meshgrid(vx,vy);
Q=Rains(vx,vy);
Q(find(Q>20))=20;
mesh(vx,vy,Q);
Min=min(min(Q));
index=find(Q==Min);
[in_y,in_x]=ind2sub(size(Q),index);
in_x=in_x/10-20;
in_y=in_y/10-20;
in_x,in_y