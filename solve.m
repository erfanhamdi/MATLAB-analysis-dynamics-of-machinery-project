% Theta
    tguess=ones(6,1);
    ThetaAng=fsolve(@theta,tguess);
%  Omega
    wguess=ones(6,1).*0.1;
    Omega=fsolve(@omega,wguess);
% Alpha
    aguess=ones(6,1).*0.1;
    Alpha=fsolve(@alpha,aguess);

% Table
Link=[1;2;3;4;5;6;7];
Theta=[270;ThetaAng]
AngularVel=[2*pi;Omega];
AngularAcc=[0;Alpha];
CGVel=[0.78540*115/2;Omega.*[16;0;61;19.5;7.5;19.5]];
CGAcc=[sqrt(57.5*0.78540^2+0);sqrt((abs(Omega).^2).*[16;0;61;19.5;7.5;19.5]+[16;0;61;19.5;7.5;19.5].*abs(Alpha))];
Table=table(Link,Theta,AngularVel,AngularAcc,CGVel,CGAcc)

