function z = alpha ( a )
r1_1=403.6;r1_2=150;r1_3=320.6;r1_4=130;
r2_1=1207;r2_2=70;r2_3=1220;r2_4=230;
r3_3=150;r3_4=230;
theta1_1=48.01;theta1_2=270;theta1_3=185.39;theta1_4=292.28;
theta2_1=96.18;theta2_2=225.74;theta2_3=289.58;theta2_4=180;
theta3_3=270;theta3_4=180;

OM12=2*pi;
a12=0;
womega=evalin('base','Omega');

z=zeros(6,1);
z(1)=(OM12^2*cosd(theta1_2)+a12*sind(theta1_2))*r1_2+(womega(1)^2*cosd(theta1_3)+a(1)*sind(theta1_3))*r1_3+(womega(2)^2*cosd(theta1_4)+a(2)*sind(theta1_4))*r1_4;
z(2)=(OM12^2*sind(theta1_2)-a12*cosd(theta1_2))*r1_2+(womega(1)^2*sind(theta1_3)-a(1)*cosd(theta1_3))*r1_3+(womega(2)^2*sind(theta1_4)-a(2)*cosd(theta1_4))*r1_4;
z(3)=(womega(2)^2*cosd(theta2_2)+a(2)*sind(theta2_2))*r2_2+(womega(3)^2*cosd(theta2_3)+a(3)*sind(theta2_3))*r2_3+(womega(4)^2*cosd(theta2_4)+a(4)*sind(theta2_4))*r2_4;
z(4)=(womega(2)^2*sind(theta2_2)-a(2)*cosd(theta2_2))*r2_2+(womega(3)^2*sind(theta2_3)-a(3)*cosd(theta2_3))*r2_3+(womega(4)^2*sind(theta2_4)-a(4)*cosd(theta2_4))*r2_4;
z(5)=(womega(4)^2*cosd(theta2_4)+a(4)*sind(theta2_4))*r2_4+(womega(5)^2*cosd(theta3_3)+a(5)*sind(theta3_3))*r3_3+(womega(6)^2*cosd(theta3_4)+a(6)*sind(theta3_4))*r3_4;
z(6)=(womega(4)^2*sind(theta2_4)-a(4)*cosd(theta2_4))*r2_4+(womega(5)^2*sind(theta3_3)-a(5)*cosd(theta3_3))*r3_3+(womega(6)^2*sind(theta3_4)-a(6)*cosd(theta3_4))*r3_4;

end
