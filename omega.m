function [y] = omega( w )
%UNTITLED2 Summary of this function goes here
% omega is the name of a function y(w)
%   Detailed explanation goes here

    r1_1=403.6;r1_2=150;r1_3=320.6;r1_4=130;
    r2_1=1207;r2_2=70;r2_3=1220;r2_4=230;
    r3_3=150;r3_4=230;

    theta1_1=48.01;theta1_2=270;theta1_3=185.39;theta1_4=292.28;
    theta2_1=96.18;theta2_2=225.74;theta2_3=289.58;theta2_4=180;
    theta3_3=270;theta3_4=180;

    w12=2*pi;
    a12=0;

    y=zeros(6,1);
    y(1)=-r1_2*w12*sind(theta1_2)-r1_3*w(1)*sind(theta1_3)-r1_4*w(2)*sind(theta1_4);
    y(2)=r1_2*w12*cosd(theta1_2)+r1_3*w(1)*cosd(theta1_3)+r1_4*w(2)*cosd(theta1_4);
    y(3)=-r2_2*w(2)*sind(theta2_2)-r2_3*w(3)*sind(theta2_3)-r2_4*w(4)*sind(theta2_4);
    y(4)=r2_2*w(2)*cosd(theta2_2)+r2_3*w(3)*cosd(theta2_3)+r2_4*w(4)*cosd(theta2_4);
    y(5)=-r2_4*w(4)*sind(theta2_4)-r3_3*w(5)*sind(theta3_3)-r3_4*w(6)*sind(theta3_4);
    y(6)=r2_4*w(4)*cosd(theta2_4)+r3_3*w(5)*cosd(theta3_3)+r3_4*w(6)*cosd(theta3_4);
end

