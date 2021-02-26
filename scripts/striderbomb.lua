include "constants.lua"

local Core = piece('Core');
local CoreFront = piece('CoreFront');
local CoreRear = piece('CoreRear');
local DoorLeft = piece('DoorLeft');
local DoorRight = piece('DoorRight');
local Hull = piece('Hull');
local Support1 = piece('Support1');
local Support2 = piece('Support2');
local Support3 = piece('Support3');
local TrackLeft = piece('TrackLeft');
local TrackRight = piece('TrackRight');
local TreadL1 = piece('TreadL1');
local TreadL10 = piece('TreadL10');
local TreadL11 = piece('TreadL11');
local TreadL12 = piece('TreadL12');
local TreadL13 = piece('TreadL13');
local TreadL14 = piece('TreadL14');
local TreadL15 = piece('TreadL15');
local TreadL16 = piece('TreadL16');
local TreadL17 = piece('TreadL17');
local TreadL18 = piece('TreadL18');
local TreadL19 = piece('TreadL19');
local TreadL2 = piece('TreadL2');
local TreadL20 = piece('TreadL20');
local TreadL21 = piece('TreadL21');
local TreadL3 = piece('TreadL3');
local TreadL4 = piece('TreadL4');
local TreadL5 = piece('TreadL5');
local TreadL6 = piece('TreadL6');
local TreadL7 = piece('TreadL7');
local TreadL8 = piece('TreadL8');
local TreadL9 = piece('TreadL9');
local TreadR1 = piece('TreadR1');
local TreadR10 = piece('TreadR10');
local TreadR11 = piece('TreadR11');
local TreadR12 = piece('TreadR12');
local TreadR13 = piece('TreadR13');
local TreadR14 = piece('TreadR14');
local TreadR15 = piece('TreadR15');
local TreadR16 = piece('TreadR16');
local TreadR17 = piece('TreadR17');
local TreadR18 = piece('TreadR18');
local TreadR19 = piece('TreadR19');
local TreadR2 = piece('TreadR2');
local TreadR20 = piece('TreadR20');
local TreadR21 = piece('TreadR21');
local TreadR3 = piece('TreadR3');
local TreadR4 = piece('TreadR4');
local TreadR5 = piece('TreadR5');
local TreadR6 = piece('TreadR6');
local TreadR7 = piece('TreadR7');
local TreadR8 = piece('TreadR8');
local TreadR9 = piece('TreadR9');
local WheelLF1 = piece('WheelLF1');
local WheelLF2 = piece('WheelLF2');
local WheelLF3 = piece('WheelLF3');
local WheelLF4 = piece('WheelLF4');
local WheelLR1 = piece('WheelLR1');
local WheelLR2 = piece('WheelLR2');
local WheelRF1 = piece('WheelRF1');
local WheelRF2 = piece('WheelRF2');
local WheelRF3 = piece('WheelRF3');
local WheelRF4 = piece('WheelRF4');
local WheelRR1 = piece('WheelRR1');
local WheelRR2 = piece('WheelRR2');

local scriptEnv = {	Core = Core,
	CoreFront = CoreFront,
	CoreRear = CoreRear,
	DoorLeft = DoorLeft,
	DoorRight = DoorRight,
	Hull = Hull,
	Support1 = Support1,
	Support2 = Support2,
	Support3 = Support3,
	TrackLeft = TrackLeft,
	TrackRight = TrackRight,
	TreadL1 = TreadL1,
	TreadL10 = TreadL10,
	TreadL11 = TreadL11,
	TreadL12 = TreadL12,
	TreadL13 = TreadL13,
	TreadL14 = TreadL14,
	TreadL15 = TreadL15,
	TreadL16 = TreadL16,
	TreadL17 = TreadL17,
	TreadL18 = TreadL18,
	TreadL19 = TreadL19,
	TreadL2 = TreadL2,
	TreadL20 = TreadL20,
	TreadL21 = TreadL21,
	TreadL3 = TreadL3,
	TreadL4 = TreadL4,
	TreadL5 = TreadL5,
	TreadL6 = TreadL6,
	TreadL7 = TreadL7,
	TreadL8 = TreadL8,
	TreadL9 = TreadL9,
	TreadR1 = TreadR1,
	TreadR10 = TreadR10,
	TreadR11 = TreadR11,
	TreadR12 = TreadR12,
	TreadR13 = TreadR13,
	TreadR14 = TreadR14,
	TreadR15 = TreadR15,
	TreadR16 = TreadR16,
	TreadR17 = TreadR17,
	TreadR18 = TreadR18,
	TreadR19 = TreadR19,
	TreadR2 = TreadR2,
	TreadR20 = TreadR20,
	TreadR21 = TreadR21,
	TreadR3 = TreadR3,
	TreadR4 = TreadR4,
	TreadR5 = TreadR5,
	TreadR6 = TreadR6,
	TreadR7 = TreadR7,
	TreadR8 = TreadR8,
	TreadR9 = TreadR9,
	WheelLF1 = WheelLF1,
	WheelLF2 = WheelLF2,
	WheelLF3 = WheelLF3,
	WheelLF4 = WheelLF4,
	WheelLR1 = WheelLR1,
	WheelLR2 = WheelLR2,
	WheelRF1 = WheelRF1,
	WheelRF2 = WheelRF2,
	WheelRF3 = WheelRF3,
	WheelRF4 = WheelRF4,
	WheelRR1 = WheelRR1,
	WheelRR2 = WheelRR2,
	x_axis = x_axis,
	y_axis = y_axis,
	z_axis = z_axis,
}

local SIG_MOVE=2

local Animations = {};
-- you can include externally saved animations like this:
-- Animations['importedAnimation'] = VFS.Include("Scripts/animations/animationscript.lua", scriptEnv)

Animations['TreadRightForwards'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='move',['p']=TrackLeft, ['a']=x_axis, ['t']=23.350529, ['s']=0.000000},
			{['c']='move',['p']=TrackLeft, ['a']=y_axis, ['t']=0.257616, ['s']=0.000000},
			{['c']='move',['p']=TrackLeft, ['a']=z_axis, ['t']=9.671964, ['s']=0.000000},
			{['c']='turn',['p']=TrackLeft, ['a']=x_axis, ['t']=-1.570796, ['s']=0.000000},
			{['c']='turn',['p']=TrackLeft, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=TrackLeft, ['a']=z_axis, ['t']=1.570796, ['s']=0.000000},
			{['c']='move',['p']=TreadL1, ['a']=x_axis, ['t']=28.736017, ['s']=0.002478},
			{['c']='move',['p']=TreadL1, ['a']=y_axis, ['t']=-28.553150, ['s']=24.525724},
			{['c']='move',['p']=TreadL1, ['a']=z_axis, ['t']=20.263277, ['s']=2.290501},
			{['c']='turn',['p']=TreadL1, ['a']=x_axis, ['t']=-1.374688, ['s']=0.588324},
			{['c']='turn',['p']=TreadL1, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=TreadL1, ['a']=z_axis, ['t']=1.570792, ['s']=0.000012},
			{['c']='move',['p']=TreadL10, ['a']=x_axis, ['t']=28.756023, ['s']=0.060013},
			{['c']='move',['p']=TreadL10, ['a']=y_axis, ['t']=39.156914, ['s']=14.335339},
			{['c']='move',['p']=TreadL10, ['a']=z_axis, ['t']=9.373637, ['s']=16.091526},
			{['c']='turn',['p']=TreadL10, ['a']=x_axis, ['t']=0.230819, ['s']=2.638659},
			{['c']='turn',['p']=TreadL10, ['a']=y_axis, ['t']=3.141593, ['s']=0.000000},
			{['c']='turn',['p']=TreadL10, ['a']=z_axis, ['t']=-1.570796, ['s']=0.000000},
			{['c']='move',['p']=TreadL11, ['a']=x_axis, ['t']=28.736019, ['s']=0.000000},
			{['c']='move',['p']=TreadL11, ['a']=y_axis, ['t']=34.378468, ['s']=25.229078},
			{['c']='move',['p']=TreadL11, ['a']=z_axis, ['t']=4.009795, ['s']=6.677993},
			{['c']='turn',['p']=TreadL11, ['a']=x_axis, ['t']=1.110372, ['s']=1.363924},
			{['c']='turn',['p']=TreadL11, ['a']=y_axis, ['t']=3.141593, ['s']=9.424794},
			{['c']='turn',['p']=TreadL11, ['a']=z_axis, ['t']=-1.570796, ['s']=9.424755},
			{['c']='move',['p']=TreadL12, ['a']=x_axis, ['t']=28.736019, ['s']=0.000000},
			{['c']='move',['p']=TreadL12, ['a']=y_axis, ['t']=25.968775, ['s']=25.605217},
			{['c']='move',['p']=TreadL12, ['a']=z_axis, ['t']=1.783798, ['s']=0.000000},
			{['c']='turn',['p']=TreadL12, ['a']=x_axis, ['t']=1.565013, ['s']=0.000000},
			{['c']='turn',['p']=TreadL12, ['a']=y_axis, ['t']=6.283191, ['s']=0.000000},
			{['c']='turn',['p']=TreadL12, ['a']=z_axis, ['t']=1.570789, ['s']=0.000000},
			{['c']='move',['p']=TreadL13, ['a']=x_axis, ['t']=28.736019, ['s']=0.000000},
			{['c']='move',['p']=TreadL13, ['a']=y_axis, ['t']=17.433702, ['s']=24.685498},
			{['c']='move',['p']=TreadL13, ['a']=z_axis, ['t']=1.783798, ['s']=0.000000},
			{['c']='turn',['p']=TreadL13, ['a']=x_axis, ['t']=1.565013, ['s']=0.000000},
			{['c']='turn',['p']=TreadL13, ['a']=y_axis, ['t']=6.283191, ['s']=0.000000},
			{['c']='turn',['p']=TreadL13, ['a']=z_axis, ['t']=1.570789, ['s']=0.000000},
			{['c']='move',['p']=TreadL14, ['a']=x_axis, ['t']=28.736019, ['s']=0.000000},
			{['c']='move',['p']=TreadL14, ['a']=y_axis, ['t']=9.205203, ['s']=25.660806},
			{['c']='move',['p']=TreadL14, ['a']=z_axis, ['t']=1.783798, ['s']=0.000000},
			{['c']='turn',['p']=TreadL14, ['a']=x_axis, ['t']=1.565013, ['s']=0.000000},
			{['c']='turn',['p']=TreadL14, ['a']=y_axis, ['t']=6.283191, ['s']=0.000000},
			{['c']='turn',['p']=TreadL14, ['a']=z_axis, ['t']=1.570789, ['s']=0.000000},
			{['c']='move',['p']=TreadL15, ['a']=x_axis, ['t']=28.736019, ['s']=0.000000},
			{['c']='move',['p']=TreadL15, ['a']=y_axis, ['t']=0.651601, ['s']=25.660798},
			{['c']='move',['p']=TreadL15, ['a']=z_axis, ['t']=1.783798, ['s']=0.000000},
			{['c']='turn',['p']=TreadL15, ['a']=x_axis, ['t']=1.565013, ['s']=0.000000},
			{['c']='turn',['p']=TreadL15, ['a']=y_axis, ['t']=6.283191, ['s']=0.000000},
			{['c']='turn',['p']=TreadL15, ['a']=z_axis, ['t']=1.570789, ['s']=0.000000},
			{['c']='move',['p']=TreadL16, ['a']=x_axis, ['t']=28.736019, ['s']=0.000000},
			{['c']='move',['p']=TreadL16, ['a']=y_axis, ['t']=-7.901998, ['s']=25.660802},
			{['c']='move',['p']=TreadL16, ['a']=z_axis, ['t']=1.783798, ['s']=0.000000},
			{['c']='turn',['p']=TreadL16, ['a']=x_axis, ['t']=1.565013, ['s']=0.000000},
			{['c']='turn',['p']=TreadL16, ['a']=y_axis, ['t']=6.283191, ['s']=0.000000},
			{['c']='turn',['p']=TreadL16, ['a']=z_axis, ['t']=1.570789, ['s']=0.000000},
			{['c']='move',['p']=TreadL17, ['a']=x_axis, ['t']=28.736019, ['s']=0.000000},
			{['c']='move',['p']=TreadL17, ['a']=y_axis, ['t']=-16.455599, ['s']=25.660795},
			{['c']='move',['p']=TreadL17, ['a']=z_axis, ['t']=1.783798, ['s']=0.000000},
			{['c']='turn',['p']=TreadL17, ['a']=x_axis, ['t']=1.565013, ['s']=0.000000},
			{['c']='turn',['p']=TreadL17, ['a']=y_axis, ['t']=6.283191, ['s']=0.000000},
			{['c']='turn',['p']=TreadL17, ['a']=z_axis, ['t']=1.570789, ['s']=0.000000},
			{['c']='move',['p']=TreadL18, ['a']=x_axis, ['t']=28.736019, ['s']=0.000000},
			{['c']='move',['p']=TreadL18, ['a']=y_axis, ['t']=-25.009197, ['s']=24.176067},
			{['c']='move',['p']=TreadL18, ['a']=z_axis, ['t']=1.783798, ['s']=4.786828},
			{['c']='turn',['p']=TreadL18, ['a']=x_axis, ['t']=1.565013, ['s']=1.139961},
			{['c']='turn',['p']=TreadL18, ['a']=y_axis, ['t']=6.283191, ['s']=0.000016},
			{['c']='turn',['p']=TreadL18, ['a']=z_axis, ['t']=1.570789, ['s']=0.000024},
			{['c']='move',['p']=TreadL19, ['a']=x_axis, ['t']=28.736019, ['s']=0.000000},
			{['c']='move',['p']=TreadL19, ['a']=y_axis, ['t']=-33.067886, ['s']=13.737751},
			{['c']='move',['p']=TreadL19, ['a']=z_axis, ['t']=3.379407, ['s']=14.986642},
			{['c']='turn',['p']=TreadL19, ['a']=x_axis, ['t']=1.185026, ['s']=2.844864},
			{['c']='turn',['p']=TreadL19, ['a']=y_axis, ['t']=6.283185, ['s']=0.000000},
			{['c']='turn',['p']=TreadL19, ['a']=z_axis, ['t']=1.570797, ['s']=0.000001},
			{['c']='move',['p']=TreadL2, ['a']=x_axis, ['t']=28.736843, ['s']=0.000000},
			{['c']='move',['p']=TreadL2, ['a']=y_axis, ['t']=-20.377909, ['s']=24.282489},
			{['c']='move',['p']=TreadL2, ['a']=z_axis, ['t']=21.026777, ['s']=0.000000},
			{['c']='turn',['p']=TreadL2, ['a']=x_axis, ['t']=-1.570796, ['s']=0.000000},
			{['c']='turn',['p']=TreadL2, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=TreadL2, ['a']=z_axis, ['t']=1.570796, ['s']=0.000000},
			{['c']='move',['p']=TreadL20, ['a']=x_axis, ['t']=28.736019, ['s']=0.000006},
			{['c']='move',['p']=TreadL20, ['a']=y_axis, ['t']=-37.647137, ['s']=5.945206},
			{['c']='move',['p']=TreadL20, ['a']=z_axis, ['t']=8.374954, ['s']=22.862915},
			{['c']='turn',['p']=TreadL20, ['a']=x_axis, ['t']=0.236738, ['s']=2.945375},
			{['c']='turn',['p']=TreadL20, ['a']=y_axis, ['t']=6.283185, ['s']=0.000001},
			{['c']='turn',['p']=TreadL20, ['a']=z_axis, ['t']=1.570796, ['s']=0.000000},
			{['c']='move',['p']=TreadL21, ['a']=x_axis, ['t']=28.736017, ['s']=0.000000},
			{['c']='move',['p']=TreadL21, ['a']=y_axis, ['t']=-35.665401, ['s']=21.336754},
			{['c']='move',['p']=TreadL21, ['a']=z_axis, ['t']=15.995926, ['s']=12.802053},
			{['c']='turn',['p']=TreadL21, ['a']=x_axis, ['t']=-0.745053, ['s']=1.888905},
			{['c']='turn',['p']=TreadL21, ['a']=y_axis, ['t']=6.283186, ['s']=0.000014},
			{['c']='turn',['p']=TreadL21, ['a']=z_axis, ['t']=1.570796, ['s']=0.000012},
			{['c']='move',['p']=TreadL3, ['a']=x_axis, ['t']=28.736843, ['s']=0.000000},
			{['c']='move',['p']=TreadL3, ['a']=y_axis, ['t']=-12.283746, ['s']=25.774777},
			{['c']='move',['p']=TreadL3, ['a']=z_axis, ['t']=21.026777, ['s']=0.000000},
			{['c']='turn',['p']=TreadL3, ['a']=x_axis, ['t']=-1.570796, ['s']=0.000000},
			{['c']='turn',['p']=TreadL3, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=TreadL3, ['a']=z_axis, ['t']=1.570796, ['s']=0.000000},
			{['c']='move',['p']=TreadL4, ['a']=x_axis, ['t']=28.736843, ['s']=0.000000},
			{['c']='move',['p']=TreadL4, ['a']=y_axis, ['t']=-3.692153, ['s']=25.511104},
			{['c']='move',['p']=TreadL4, ['a']=z_axis, ['t']=21.026777, ['s']=0.000000},
			{['c']='turn',['p']=TreadL4, ['a']=x_axis, ['t']=-1.570796, ['s']=0.000000},
			{['c']='turn',['p']=TreadL4, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=TreadL4, ['a']=z_axis, ['t']=1.570796, ['s']=0.000000},
			{['c']='move',['p']=TreadL5, ['a']=x_axis, ['t']=28.736843, ['s']=0.057535},
			{['c']='move',['p']=TreadL5, ['a']=y_axis, ['t']=4.811548, ['s']=24.378086},
			{['c']='move',['p']=TreadL5, ['a']=z_axis, ['t']=21.026777, ['s']=0.000000},
			{['c']='turn',['p']=TreadL5, ['a']=x_axis, ['t']=-1.570796, ['s']=0.000000},
			{['c']='turn',['p']=TreadL5, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=TreadL5, ['a']=z_axis, ['t']=1.570796, ['s']=0.000000},
			{['c']='move',['p']=TreadL6, ['a']=x_axis, ['t']=28.756021, ['s']=0.000000},
			{['c']='move',['p']=TreadL6, ['a']=y_axis, ['t']=12.937576, ['s']=25.350655},
			{['c']='move',['p']=TreadL6, ['a']=z_axis, ['t']=21.026777, ['s']=0.000000},
			{['c']='turn',['p']=TreadL6, ['a']=x_axis, ['t']=-1.570796, ['s']=0.000000},
			{['c']='turn',['p']=TreadL6, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=TreadL6, ['a']=z_axis, ['t']=1.570796, ['s']=0.000000},
			{['c']='move',['p']=TreadL7, ['a']=x_axis, ['t']=28.756021, ['s']=0.000000},
			{['c']='move',['p']=TreadL7, ['a']=y_axis, ['t']=21.387794, ['s']=26.332163},
			{['c']='move',['p']=TreadL7, ['a']=z_axis, ['t']=21.026777, ['s']=3.299126},
			{['c']='turn',['p']=TreadL7, ['a']=x_axis, ['t']=-1.570796, ['s']=0.861908},
			{['c']='turn',['p']=TreadL7, ['a']=y_axis, ['t']=0.000000, ['s']=9.424778},
			{['c']='turn',['p']=TreadL7, ['a']=z_axis, ['t']=1.570796, ['s']=9.424780},
			{['c']='move',['p']=TreadL8, ['a']=x_axis, ['t']=28.756021, ['s']=0.000000},
			{['c']='move',['p']=TreadL8, ['a']=y_axis, ['t']=30.165182, ['s']=19.551252},
			{['c']='move',['p']=TreadL8, ['a']=z_axis, ['t']=19.927069, ['s']=11.100540},
			{['c']='turn',['p']=TreadL8, ['a']=x_axis, ['t']=-1.283494, ['s']=2.102077},
			{['c']='turn',['p']=TreadL8, ['a']=y_axis, ['t']=3.141593, ['s']=0.000001},
			{['c']='turn',['p']=TreadL8, ['a']=z_axis, ['t']=-1.570797, ['s']=0.000002},
			{['c']='move',['p']=TreadL9, ['a']=x_axis, ['t']=28.756021, ['s']=0.000006},
			{['c']='move',['p']=TreadL9, ['a']=y_axis, ['t']=36.682266, ['s']=7.423943},
			{['c']='move',['p']=TreadL9, ['a']=z_axis, ['t']=16.226889, ['s']=20.559754},
			{['c']='turn',['p']=TreadL9, ['a']=x_axis, ['t']=-0.582801, ['s']=2.440860},
			{['c']='turn',['p']=TreadL9, ['a']=y_axis, ['t']=3.141593, ['s']=0.000000},
			{['c']='turn',['p']=TreadL9, ['a']=z_axis, ['t']=-1.570796, ['s']=0.000000},
			{['c']='move',['p']=WheelLF1, ['a']=x_axis, ['t']=34.204231, ['s']=0.000000},
			{['c']='move',['p']=WheelLF1, ['a']=y_axis, ['t']=-31.952370, ['s']=0.000000},
			{['c']='move',['p']=WheelLF1, ['a']=z_axis, ['t']=10.683311, ['s']=0.000000},
			{['c']='turn',['p']=WheelLF1, ['a']=x_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=WheelLF1, ['a']=y_axis, ['t']=1.570796, ['s']=0.000000},
			{['c']='turn',['p']=WheelLF1, ['a']=z_axis, ['t']=1.570796, ['s']=0.000000},
			{['c']='move',['p']=WheelLF2, ['a']=x_axis, ['t']=34.204231, ['s']=0.000000},
			{['c']='move',['p']=WheelLF2, ['a']=y_axis, ['t']=-26.986734, ['s']=0.000000},
			{['c']='move',['p']=WheelLF2, ['a']=z_axis, ['t']=16.098864, ['s']=0.000000},
			{['c']='turn',['p']=WheelLF2, ['a']=x_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=WheelLF2, ['a']=y_axis, ['t']=1.570796, ['s']=0.000000},
			{['c']='turn',['p']=WheelLF2, ['a']=z_axis, ['t']=1.570796, ['s']=0.000000},
			{['c']='move',['p']=WheelLF3, ['a']=x_axis, ['t']=34.204231, ['s']=0.000000},
			{['c']='move',['p']=WheelLF3, ['a']=y_axis, ['t']=-24.903667, ['s']=0.000000},
			{['c']='move',['p']=WheelLF3, ['a']=z_axis, ['t']=6.433957, ['s']=0.000000},
			{['c']='turn',['p']=WheelLF3, ['a']=x_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=WheelLF3, ['a']=y_axis, ['t']=1.570796, ['s']=0.000000},
			{['c']='turn',['p']=WheelLF3, ['a']=z_axis, ['t']=1.570796, ['s']=0.000000},
			{['c']='move',['p']=WheelLF4, ['a']=x_axis, ['t']=34.204231, ['s']=0.000000},
			{['c']='move',['p']=WheelLF4, ['a']=y_axis, ['t']=-19.038897, ['s']=0.000000},
			{['c']='move',['p']=WheelLF4, ['a']=z_axis, ['t']=5.074163, ['s']=0.000000},
			{['c']='turn',['p']=WheelLF4, ['a']=x_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=WheelLF4, ['a']=y_axis, ['t']=1.570796, ['s']=0.000000},
			{['c']='turn',['p']=WheelLF4, ['a']=z_axis, ['t']=1.570796, ['s']=0.000000},
			{['c']='move',['p']=WheelLR1, ['a']=x_axis, ['t']=34.204231, ['s']=0.000000},
			{['c']='move',['p']=WheelLR1, ['a']=y_axis, ['t']=24.781927, ['s']=0.000000},
			{['c']='move',['p']=WheelLR1, ['a']=z_axis, ['t']=6.076634, ['s']=0.000000},
			{['c']='turn',['p']=WheelLR1, ['a']=x_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=WheelLR1, ['a']=y_axis, ['t']=1.570796, ['s']=0.000000},
			{['c']='turn',['p']=WheelLR1, ['a']=z_axis, ['t']=1.570796, ['s']=0.000000},
			{['c']='move',['p']=WheelLR2, ['a']=x_axis, ['t']=34.204231, ['s']=0.000000},
			{['c']='move',['p']=WheelLR2, ['a']=y_axis, ['t']=32.899933, ['s']=0.000000},
			{['c']='move',['p']=WheelLR2, ['a']=z_axis, ['t']=10.683311, ['s']=0.000000},
			{['c']='turn',['p']=WheelLR2, ['a']=x_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=WheelLR2, ['a']=y_axis, ['t']=1.570796, ['s']=0.000000},
			{['c']='turn',['p']=WheelLR2, ['a']=z_axis, ['t']=1.570796, ['s']=0.000000},
		}
	},
	{
		['time'] = 10,
		['commands'] = {
		}
	},
}

-- table to store last piece *target* for interpolations such as SnapAnimation.
-- script-scoped to not create temp tables because those are supposedly bad 
local lastCommand = {}

-- store map of pieces for iterating later
local pieceMap = {};

-- gah
local axes = {x_axis, y_axis,z_axis};


function constructSkeleton(unit, piece, offset)
    if (offset == nil) then
        offset = {0,0,0};
    end

    local bones = {};
    local info = Spring.GetUnitPieceInfo(unit,piece);

    for i=1,3 do
        info.offset[i] = offset[i]+info.offset[i];
    end 

    bones[piece] = info.offset;
    local children = info.children;

    if (children) then
        for i, childName in pairs(children) do
            local childId = pieceMap[childName];
            local childBones = constructSkeleton(unit, childId, info.offset);
            for cid, cinfo in pairs(childBones) do
                bones[cid] = cinfo;
            end
        end
    end        
    return bones;
end

            
local animCmd = {['turn']=Turn,['move']=Move};
local animState = {};

-- start running commands in the animation's script
-- animname: name of the animation data table
-- stretch: scale the animation duration, e.g. 2 = two times slower/longer
-- progress: 0..1, start playback at this position in animation, will cause anim's start time to be in the past
-- nonzero progress will interpolate speeds from previous keyframes as necessary, but will not snap there
function PlayAnimation(animname, stretch, progress)
	if not stretch then stretch = 1 end
	if not progress then progress = 0 end

	local firstKeyframe = 1;

	if progress > 0 then 
		firstKeyframe = _FastForward(animname, progress, true)
		_InterpolateLastCommand(progress*animState[animname].duration, stretch)
	end

	local remaining = 1-progress;
	local effectiveDuration = animState[animname].duration * stretch * remaining;
	local offsetFrames = animState[animname].duration * stretch * progress;

	animState[animname].due = effectiveDuration + Spring.GetGameFrame();
	animState[animname].started = Spring.GetGameFrame() - offsetFrames;
	animState[animname].playing = true;
	animState[animname].scale = stretch;
	animState[animname].frozen = false;

	for i = firstKeyframe, #Animations[animname] do
		local commands = Animations[animname][i].commands;
		for j = 1,#commands do
			local cmd = commands[j];
			animCmd[cmd.c](cmd.p,cmd.a,cmd.t,cmd.s/stretch);
		end
		if(i < #Animations[animname]) then
			local t = Animations[animname][i+1]['time'] - Animations[animname][i]['time'];
			Sleep(t*33*stretch); -- sleep works on milliseconds
		end
	end
	animState[animname].playing = false;
end

-- snap animation to its currently expected interpolated pose, if it's playing
-- does not kill it if it's not killed otherwise - that's your job
-- returns whether freeze succesful 
function FreezeAnimation(animname)
	if(animState[animname].playing) then
		animState[animname].frozen = true;

		local progress = 0;
		local animframe = 1;

		Spring.Echo("Freezing animation "..animname..'at frame '..Spring.GetGameFrame());
		Spring.Echo("scale: "..animState[animname].scale)
		Spring.Echo("started: "..animState[animname].started)
		Spring.Echo("duration: "..animState[animname].duration)
		Spring.Echo("due: "..animState[animname].due)
		if animState[animname].scale > 0 then
			animframe = (animState[animname].due - Spring.GetGameFrame()) / animState[animname].scale
			progress = animframe / animState[animname].duration;
			Spring.Echo("frame: "..animframe)
			Spring.Echo("progress: "..progress)

		end


		_FastForward(animname, progress, true);
		_InterpolateLastCommand(animframe, 0)
		return true;
	end
	return false
end

-- resume animation playback if it was previously frozen
-- returns false if unfreeze succesful  
function UnfreezeAnimation(animname)
	if(animState[animname].frozen) then
		animState[animname].frozen = false;
		local progress = 0;
		local animframe = 1;
		
		if animState[animname].scale > 0 then
			progress = animframe / animState[animname].duration;
		end
		PlayAnimation(animname, progress, animState[animname].scale);
		return true;
	else 
		return false;
	end
end

-- Resumes an animation if frozen, plays it otherwise
function ResumeOrPlayAnimation(animname)
	if(animState[animname].frozen) then
		UnfreezeAnimation(animname)
	else
		PlayAnimation(animname)
	end
end


-- internal - reset the last command book-keeping table
function _ResetLastCommand()
	for i = 1,#axes do
        for k,v in pairs(pieceMap) do
            for cmdname, cmd in pairs(animCmd) do
                lastCommand[v][axes[i]][cmdname].target = 0; 
                lastCommand[v][axes[i]][cmdname].start = 0;
                lastCommand[v][axes[i]][cmdname].speed = 0;
                lastCommand[v][axes[i]][cmdname].duration = 0;
            end
        end
	end
end

-- internal - immediately snap to the given progress point (0..1) in an animation
-- animname: which animation to do 
-- progress: which point (0..1) to skip to 
-- skip: do not actually issue any commands if set - only contaminate the lastCommand table
-- returns index of next keyframe after given progress point
function _FastForward(animname, progress, skip)
	local anim = Animations[animname];
	local t = animState[animname].duration * progress;
	local firstAfter = 1;
    _ResetLastCommand();
	for i = 1, #anim do
		firstAfter = i;
        -- fast forward through all keyframes before t, inclusive
        local commands = anim[i].commands;
        if anim[i].time <= t then
            for j = 1,#commands do
                local cmd = commands[j];
                local duration = 0

                if(cmd.s > 0) then
                    local lastT = lastCommand[cmd.p][cmd.a][cmd.c].target;
                    duration = (cmd.t-lastT)/cmd.s;
                end

				local endTime = anim[i].time+duration
				local lastTarget = lastCommand[cmd.p][cmd.a][cmd.c].target;

				lastCommand[cmd.p][cmd.a][cmd.c].origin=lastTarget;
				lastCommand[cmd.p][cmd.a][cmd.c].target=cmd.t
                lastCommand[cmd.p][cmd.a][cmd.c].start=anim[i].time 
                lastCommand[cmd.p][cmd.a][cmd.c].speed=cmd.s
                lastCommand[cmd.p][cmd.a][cmd.c].duration=duration

                -- if cmd terminates before t, execute it immediately and forget
                if(endTime > t) then
					if not skip then 
						animCmd[cmd.c](cmd.p,cmd.a,cmd.t,0) 
					end
                    lastCommand[cmd.p][cmd.a][cmd.c].dirty=false
                else
                    lastCommand[cmd.p][cmd.a][cmd.c].dirty=true
                end
            end
		else
            break;
        end
    end
    -- interpolate last issued commands between their start time and t
	if not skip then _InterpolateLastCommand(t,0) end
	return firstAfter;
end

-- internal - interpolate last command from lastCommand table to position "t", scaling it with "s" (s=0 is instant)
function _InterpolateLastCommand(t, s)
	if not s then s = 1 end
	s=0;
	for piece, data in pairs(lastCommand) do
        for i=1,#axes do
			for cmdname, cmd in pairs(lastCommand[piece][axes[i]]) do
				if cmd.start == nil or t == nil then
					Spring.Echo('cmd.start = '..tostring(cmd.start))
					Spring.Echo('t = '..tostring(t))end
				if cmd.start <= t and cmd.dirty then
					local factor = t-cmd.start / cmd.duration
					local target = factor * (cmd.target - cmd.source)
                    animCmd[cmdname](piece,axes[i],target,s*cmd.speed);
				end
			end
		end
	end
end

function script.Create()
	pieceMap = Spring.GetUnitPieceMap(unitID);
    local offsets = constructSkeleton(unitID,pieceMap.Scene, {0,0,0});
    for k,v in pairs(pieceMap) do
		lastCommand[v] = {}
		for i = 1,#axes do
            lastCommand[v][axes[i]] = {}
            for cmdname, cmd in pairs(animCmd) do
                lastCommand[v][axes[i]][cmdname] = {
                    target=0,
                    start=0,
                    speed=0,
					duration=0,
					origin=0,
					dirty=false,
					source=0.
                }
            end
        end
    end
        
    for a,anim in pairs(Animations) do
		local lastKeyFrame = 1;
		Spring.Echo("Loading anim "..a);
		for i,keyframe in pairs(anim) do
			Spring.Echo("Keyframe "..i..' time: '..keyframe.time)
            lastKeyFrame = i;
            local commands = keyframe.commands;
            for k,command in pairs(commands) do
                -- commands are described in (c)ommand,(p)iece,(a)xis,(t)arget,(s)peed format
                -- the t attribute needs to be adjusted for move commands from blender's absolute values
                if (command.c == "move") then
                    local adjusted =  command.t - (offsets[command.p][command.a]);
                    Animations[a][i]['commands'][k].t = command.t - (offsets[command.p][command.a]);
                end
            end
		end
		Spring.Echo('Last keyframe: '..lastKeyFrame..', time: '..anim[lastKeyFrame].time);	
		animState[a] = {}
        animState[a].duration = anim[lastKeyFrame].time;
        animState[a].started = nil;
        animState[a].playing = false;
        animState[a].scale = 1;
    end
end

function TreadRightFwd()
    SetSignalMask(SIG_MOVE);
	while true do
        ResumeOrPlayAnimation('TreadRightForwards');
        _FastForward('TreadRightForwards',0);
    end
end

function script.StopMoving()
    Spring.Echo("GZZZ")
	Signal(SIG_MOVE)
	FreezeAnimation('TreadRightForwards')
end


function script.StartMoving()
    Spring.Echo("WROOM")
    Signal(SIG_MOVE);
    StartThread(TreadRightFwd);
end


