local Base = piece('Base');
local ClawA1 = piece('ClawA1');
local ClawA2 = piece('ClawA2');
local ClawA3 = piece('ClawA3');
local ClawB1 = piece('ClawB1');
local ClawB2 = piece('ClawB2');
local ClawB3 = piece('ClawB3');
local ClawC1 = piece('ClawC1');
local ClawC2 = piece('ClawC2');
local ClawC3 = piece('ClawC3');
local ClawD1 = piece('ClawD1');
local ClawD2 = piece('ClawD2');
local ClawD3 = piece('ClawD3');
local PetalA = piece('PetalA');
local PetalB = piece('PetalB');
local PetalC = piece('PetalC');
local PetalD = piece('PetalD');
local SporeA = piece('SporeA');
local SporeB = piece('SporeB');
local SporeC = piece('SporeC');
local SporeD = piece('SporeD');
local TentacleA1 = piece('TentacleA1');
local TentacleA2 = piece('TentacleA2');
local TentacleA3 = piece('TentacleA3');
local TentacleA4 = piece('TentacleA4');
local TentacleB = piece('TentacleB');
local TentacleB2 = piece('TentacleB2');
local TentacleB3 = piece('TentacleB3');
local TentacleB4 = piece('TentacleB4');
local TentacleC1 = piece('TentacleC1');
local TentacleC2 = piece('TentacleC2');
local TentacleC3 = piece('TentacleC3');
local TentacleC4 = piece('TentacleC4');
local TentacleD1 = piece('TentacleD1');
local TentacleD2 = piece('TentacleD2');
local TentacleD3 = piece('TentacleD3');
local TentacleD4 = piece('TentacleD4');

local scriptEnv = {	Base = Base,
	ClawA1 = ClawA1,
	ClawA2 = ClawA2,
	ClawA3 = ClawA3,
	ClawB1 = ClawB1,
	ClawB2 = ClawB2,
	ClawB3 = ClawB3,
	ClawC1 = ClawC1,
	ClawC2 = ClawC2,
	ClawC3 = ClawC3,
	ClawD1 = ClawD1,
	ClawD2 = ClawD2,
	ClawD3 = ClawD3,
	PetalA = PetalA,
	PetalB = PetalB,
	PetalC = PetalC,
	PetalD = PetalD,
	SporeA = SporeA,
	SporeB = SporeB,
	SporeC = SporeC,
	SporeD = SporeD,
	TentacleA1 = TentacleA1,
	TentacleA2 = TentacleA2,
	TentacleA3 = TentacleA3,
	TentacleA4 = TentacleA4,
	TentacleB = TentacleB,
	TentacleB2 = TentacleB2,
	TentacleB3 = TentacleB3,
	TentacleB4 = TentacleB4,
	TentacleC1 = TentacleC1,
	TentacleC2 = TentacleC2,
	TentacleC3 = TentacleC3,
	TentacleC4 = TentacleC4,
	TentacleD1 = TentacleD1,
	TentacleD2 = TentacleD2,
	TentacleD3 = TentacleD3,
	TentacleD4 = TentacleD4,
	x_axis = x_axis,
	y_axis = y_axis,
	z_axis = z_axis,
}

local Animations = {};
-- you can include externally saved animations like this:
-- Animations['importedAnimation'] = VFS.Include("Scripts/animations/animationscript.lua", scriptEnv)

Animations['chickenflak'] = {
	{
		['time'] = 51,
		['commands'] = {
		}
	},
}

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
    local map = Spring.GetUnitPieceMap(unit);
    local children = info.children;

    if (children) then
        for i, childName in pairs(children) do
            local childId = map[childName];
            local childBones = constructSkeleton(unit, childId, info.offset);
            for cid, cinfo in pairs(childBones) do
                bones[cid] = cinfo;
            end
        end
    end        
    return bones;
end

function script.Create()
    local map = Spring.GetUnitPieceMap(unitID);
    local offsets = constructSkeleton(unitID,map.Scene, {0,0,0});
    
    for a,anim in pairs(Animations) do
        for i,keyframe in pairs(anim) do
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
    end
end
            
local animCmd = {['turn']=Turn,['move']=Move};
function PlayAnimation(animname)
    local anim = Animations[animname];
    for i = 1, #anim do
        local commands = anim[i].commands;
        for j = 1,#commands do
            local cmd = commands[j];
            animCmd[cmd.c](cmd.p,cmd.a,cmd.t,cmd.s);
        end
        if(i < #anim) then
            local t = anim[i+1]['time'] - anim[i]['time'];
            Sleep(t*33); -- sleep works on milliseconds
        end
    end
end
            
