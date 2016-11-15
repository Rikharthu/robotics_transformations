%% Richard
clc; clear all;
syms O1 l1 d1 a1 O2 l2 d2 a2 O3 l3 d3 a3;

% manipulatora parametri
% do not touch
l1=0;
a1=-90;
l2=0;
a2=-90;
l3=0;
a3=0;
O3=0;
% configure
%{
O1=0;
d1=0;
O2=0;
d2=0;
d3=0;
%}

A1=simplify(trans_matrix(O1,l1,d1,a1))
A2=simplify(trans_matrix(O2,l2,d2,a2))
A3=simplify(trans_matrix(O3,l3,d3,a3))

T1=simplify(A2*A3)
T2=simplify(A1*T1)