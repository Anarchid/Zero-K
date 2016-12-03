include "constants.lua"

--pieces
local muzzle1, muzzle2, muzzle3 = piece("Muzzle1", "Muzzle2", "Muzzle3");
local gun = piece("Core");
local barrels = piece("Prongs");

local smokePiece = {gun};

--variables
local shotCycle = 0
local SHOT_DURATION = 15 * 30
local shooting = 0

local flare = {
	[0] = muzzle1,
	[1] = muzzle2,
	[2] = muzzle3,
}

local SIG_AIM=1;
local SIG_RESTORE=2;
local SIG_SHOOT=4;

----------------------------------------------------------

----------------------------------------------------------
function Shoot()
	SetSignalMask(SIG_SHOOT)
	Spin(barrels,x_axis, math.rad(30));
	while(shooting > 0) do
		if shooting > SHOT_DURATION * 1/3 then EmitSfx(muzzle1, FIRE_W2) end
		if shooting < SHOT_DURATION * 2/3 then EmitSfx(muzzle2, FIRE_W2) end
		if shooting > SHOT_DURATION * 1/6 and shooting < SHOT_DURATION * 5/6 then EmitSfx(muzzle3, FIRE_W2) end
		shooting = shooting - 1
		Sleep(30)
	end
	StopSpin(barrels, x_axis);
end


function script.Create()
end

function script.QueryWeapon(num) 
	if num == 1 then
		return flare[shotCycle]
	end
end

function script.AimFromWeapon(num) 
	return barrels
end

local function RestoreAfterDelay()
	Signal(SIG_RESTORE)
	SetSignalMask(SIG_RESTORE)
	Sleep(6000)
	Turn(gun, y_axis, 0, math.rad(30))
	Turn(gun, z_axis, 0, math.rad(15))
end

function script.AimWeapon(num, heading, pitch)
	if (num == 2) then return false end
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	Turn(gun, y_axis, -pitch, math.rad(30))
	Turn(gun, z_axis, heading, math.rad(15))
	WaitForTurn(gun, y_axis)
	WaitForTurn(gun, z_axis)
	StartThread(RestoreAfterDelay)
	return true
end

function script.FireWeapon(num)
	shooting = SHOT_DURATION
	StartThread(Shoot);
--	shotCycle = 1 - shotCycle
--	EmitSfx(flare[shotCycle], UNIT_SFX3)
end

function script.Killed(recentDamage, maxHealth)
	local severity = (recentDamage/maxHealth) * 100
	if severity < 100 then
		return 1
	else
		return 2
	end
end
