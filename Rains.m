function [Q] = Rains( vx,vy )
%Q of v
Data;
v=sqrt(vx.^2+vy.^2);
temp1=(vx*Vx+vy*Vy)./sqrt(vx.^2+vy.^2);
temp2=sqrt(abs(Vx^2+Vy^2-temp1.^2));
temp1=abs(temp1-sqrt(vx.^2+vy.^2));
Q1=S1*m*temp1./Vz./v;
Q2=S2*m*temp2./Vz./v;
Q3=S3*m./v;
Q=Q1+Q2+Q3;
Vx,Vy,Vz
end

