rOutWalls=100;
rBastion = 10;
rTower = 10;
hBastion = 10;
hTower = 10;
hGates = 10;
wGates = 20;
dGates = 20;

cylinder(1,rOutWalls,rOutWalls,$fn=6);

//bastions/towers
for(angle = [0:60:120]){
	translate([cos(angle)*rOutWalls, sin(angle)*rOutWalls, 0])
		rotate([0,0,angle])
			scale([2,1,1])
				cylinder(hBastion,rBastion,rBastion,$fn=4);
	translate([cos(angle+180)*rOutWalls, sin(angle+180)*rOutWalls, 0])
		cylinder(hTower,rTower,rTower,$fn=rTower*4);
}//bastions/towers positions

//gates
translate([-wGates/2,cos(30)*rOutWalls])
	rotate([0,0,0])
		cube([wGates,dGates,hGates]);

translate([(-cos(150)*rOutWalls-wGates),(cos(150)*rOutWalls+wGates),0])
	rotate([0,0,-30])
		cube([wGates,dGates,hGates]);