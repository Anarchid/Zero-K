unitDef = {
  unitname                      = [[corrad]],
  name                          = [[Radar Tower]],
  description                   = [[Early Warning System]],
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildAngle                    = 16384,
  buildCostEnergy               = 55,
  buildCostMetal                = 55,
  builder                       = false,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 4,
  buildingGroundDecalSizeY      = 4,
  buildingGroundDecalType       = [[corrad_aoplane.dds]],
  buildPic                      = [[corrad.png]],
  buildTime                     = 55,
  canAttack                     = false,
  category                      = [[FLOAT UNARMED]],
  collisionVolumeOffsets        = [[0 -32 0]],
  collisionVolumeScales         = [[32 90 32]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[CylY]],
  corpse                        = [[DEAD]],
  energyUse                     = 0.8,
  explodeAs                     = [[SMALL_BUILDINGEX]],
  floater                       = true,
  footprintX                    = 2,
  footprintZ                    = 2,
  iconType                      = [[radar]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  isTargetingUpgrade            = false,
  levelGround                   = false,
  mass                          = 65,
  maxangledif1                  = [[1]],
  maxDamage                     = 81,
  maxSlope                      = 36,
  maxVelocity                   = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[ARADARLVL1.s3o]],
  onoffable                     = true,
  radarDistance                 = 2100,
  seismicSignature              = 4,
  selfDestructAs                = [[SMALL_BUILDINGEX]],
  side                          = [[CORE]],
  sightDistance                 = 800,
  smoothAnim                    = true,
  TEDClass                      = [[SPECIAL]],
  turnRate                      = 0,
  useBuildingGroundDecal        = true,
  workerTime                    = 0,
  yardMap                       = [[oooo]],

  customParams = {
    description_bp = [[]],
    description_fr = [[]],
	description_de = [[Fr�hwarn System]],
    helptext       = [[The Radar tower provides early warning of enemy units and their movements over a moderate distance at virtually no cost.]],
    helptext_bp    = [[]],
    helptext_fr    = [[]],
	helptext_de    = [[Dieser Radarturm erm�glicht die fr�hzeitige Lokalisierung von feindlichen Einheiten in der entsprechenden Reichweite. F�r den Betrieb wird Energie ben�tigt.]],
  },  
  
  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Radar Tower]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 81,
      energy           = 0,
      featureDead      = [[HEAP]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[20]],
      hitdensity       = [[100]],
      metal            = 22,
      object           = [[ARADARLVL1_dead.s3o]],
      reclaimable      = true,
      reclaimTime      = 22,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    HEAP  = {
      description      = [[Debris - Radar Tower]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 81,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 11,
      object           = [[debris2x2c.s3o]],
      reclaimable      = true,
      reclaimTime      = 11,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

  },

}

return lowerkeys({ corrad = unitDef })
