clear;
clc;
%ldeal situation
%The only difference is speed
vx=-50:0.1:50;
vy=-50:0.1:50;
[vx,vy]=meshgrid(vx,vy);
Q=Rains(vx,vy);
Q(find(Q>20))=20;
mesh(vx,vy,Q);
Min=min(min(Q));
index=find(Q==Min);
[in_x,in_y]=ind2sub(size(Q),index);
in_x=in_y/10-50;
in_y=in_y/10-50;
in_x,in_y