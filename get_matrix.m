%uztaisit matricu no parametriem
function A = get_matrix(O,l,d,a)
A=[
    cos(O),-sin(O)*cosd(a),sin(O)*sind(a),l*cos(O);
    sin(O),cos(O)*cosd(a),-cos(O)*sind(a),l*sin(O);
    0,sind(a),cosd(a),d;
    0,0,0,1;
    ];
end
