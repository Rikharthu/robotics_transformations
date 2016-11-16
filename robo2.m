%% Richard
clc; clear all;
syms O1 l1 d1 a1 O2 l2 d2 a2 O3 l3 d3 a3;

% manipulatora parametri
% specifiskie parametri:
l1=0;
a1=-90;
l2=0;
a2=-90;
l3=0;
a3=0;
O3=0;
%d1=0;
% mainamie parametri:
%{
O1=0;
O2=0;
d2=0;
d3=0;
%}

% saites matricas
A1=simplify(get_matrix(O1,l1,d1,a1))
A2=simplify(get_matrix(O2,l2,d2,a2))
A3=simplify(get_matrix(O3,l3,d3,a3))

% aprekini
T1=simplify(A2*A3)
T2=simplify(A1*T1)

% manipulatora kopeja transformacija
TRH=T2

% rika koordinates
X=TRH(1,4)
Y=TRH(2,4)
Z=TRH(3,4)
    
%{
syms o f y px py pz
M=[
    cos(f)*cos(o), cos(f)*sin(o)*sin(y) - sin(f)*cos(y),cos(f)*sin(o)*cos(y)+sin(f)*sin(y), px;
    sin(f)*cos(o), sin(f)*sin(o)*sin(y)+cos(f)*cos(y),sin(f)*sin(o)*cos(y)-cos(f)*sin(y),py;
    -sin(o),cos(o)*sin(y),cos(o)*cos(y),pz;
    0,0,0,1;
    ]
solve(TRH==M)
%}

%{
Xz=TRH(3,1)
Xy=TRH(2,1)
Yz=TRH(3,2)
% RPY/Euler vertibas
O=-sin(Xz)^(-1)
%Y=-sin(Yz/cos(O))^-1 division by zeo
Y=atan2(0,-cos(O2))
F=sin(Xy/cos(O))^-1
%}

%inversa matrica
TRH_=simplify(inv(TRH))

