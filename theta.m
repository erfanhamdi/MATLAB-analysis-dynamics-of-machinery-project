function tt = theta ( thet )

    r1_1=403.6;r1_2=150;r1_3=320.6;r1_4=130;
    r2_1=1207;r2_2=70;r2_3=1220;r2_4=230;
    r3_1=150;r3_3=150;r3_4=230;

    theta1_1=48.01;theta1_2=270;

    tt=zeros(6,1);
    tt(1)=r1_2*sind(theta1_2)+r1_3*sind(thet(1))+r1_4*sind(thet(2))-r1_1*sind(228.01);
    tt(2)=r1_2*cosd(theta1_2)+r1_3*cosd(thet(1))+r1_4*cosd(thet(2))-r1_1*cosd(228.01);
    tt(3)=r2_2*sind(thet(2))+r2_3*sind(thet(3))+r2_4*sind(thet(4))-r2_1*sind(276.18);
    tt(4)=r2_2*cosd(thet(2))+r2_3*cosd(thet(3))+r2_4*cosd(thet(4))-r2_1*cosd(276.18);
    tt(5)=r2_4*sind(thet(4))+r3_3*sind(thet(5))+r3_4*sind(thet(6))-r3_1*sind(90);
    tt(6)=r2_4*cosd(thet(4))+r3_3*cosd(thet(5))+r3_4*cosd(thet(6))-r3_1*cosd(90);

end