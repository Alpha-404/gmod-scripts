--main
SWEP.PrintName			= "Faulty .357 Magnum"
SWEP.Author			= "xi jinping"
SWEP.Instructions		= "can be used to play russian routtlete, victims appear to die of unknown causes"
SWEP.Spawnable = true
SWEP.AdminOnly = false

--guninfo
SWEP.Primary.ClipSize		= -1
SWEP.Primary.DefaultClip	= -1
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo		= "none"

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo		= "none"

SWEP.Weight			= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.Slot			= 1
SWEP.SlotPos			= 4
SWEP.DrawAmmo			= false
SWEP.DrawCrosshair		= true

SWEP.ViewModel			= "models/weapons/v_357.mdl"
SWEP.WorldModel			= "models/weapons/w_357.mdl"
SWEP.ShootSound 		= "Weapon_357.Single"

function SWEP:PrimaryAttack()
	if ( !SERVER ) then return end

	local iforgotwhattocallthislol = math.random(1, 6)
	if iforgotwhattocallthislol == 3 then
		self:GetOwner():GetEyeTrace().Entity:Kill()
		self.Owner:ViewPunch(Angle( -3, 0.4, 0.6))
		self:EmitSound(self.ShootSound)
	else
		self:EmitSound("Weapon_357.Spin")
	end
end

function SWEP:SecondaryAttack()
	if ( !SERVER ) then return end

	local iforgotwhattocallthislol = math.random(1, 6)
	if iforgotwhattocallthislol == 3 then
		self:GetOwner():Kill()
		self.Owner:ViewPunch(Angle( -3, 0.4, 0.6))
		self:EmitSound(self.ShootSound)
	else
		self:EmitSound("Weapon_357.Spin")
	end
end