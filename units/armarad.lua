unitDef = {
  unitname                      = [[armarad]],
  name                          = [[Advanced Radar Tower]],
  description                   = [[Long-Range Radar, decreases radar wobble]],
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildAngle                    = 8192,
  buildCostEnergy               = 500,
  buildCostMetal                = 500,
  builder                       = false,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 4,
  buildingGroundDecalSizeY      = 4,
  buildingGroundDecalType       = [[armarad_aoplane.dds]],
  buildPic                      = [[armarad.png]],
  buildTime                     = 500,
  canAttack                     = false,
  category                      = [[UNARMED FLOAT]],
  collisionVolumeOffsets        = [[0 -8 0]],
  collisionVolumeScales         = [[32 83 32]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],
  corpse                        = [[DEAD]],
 
  customParams                  = {
	helptext		= [[The advanced Radar Tower has a considerably greater range than the basic version, and reduces the waver of all radar dots across the map. It is also quite pricey.]],
  }, 
  
  energyUse                     = 3,
  explodeAs                     = [[SMALL_BUILDINGEX]],
  floater                       = true,
  footprintX                    = 2,
  footprintZ                    = 2,
  iconType                      = [[radar]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  isTargetingUpgrade            = true,
  levelGround                   = false,
  mass                          = 201,
  maxangledif1                  = [[1]],
  maxDamage                     = 330,
  maxSlope                      = 36,
  maxVelocity                   = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[novaradar.s3o]],
  onoffable                     = true,
  radarDistance                 = 4000,
  seismicSignature              = 4,
  selfDestructAs                = [[SMALL_BUILDINGEX]],
  side                          = [[ARM]],
  sightDistance                 = 800,
  smoothAnim                    = true,
  TEDClass                      = [[SPECIAL]],
  turnRate                      = 0,
  useBuildingGroundDecal        = true,
  workerTime                    = 0,
  yardMap                       = [[oooo]],

  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Advanced Radar Tower]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 330,
      energy           = 0,
      featureDead      = [[HEAP]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[20]],
      hitdensity       = [[100]],
      metal            = 200,
      object           = [[novaradar_dead.s3o]],
      reclaimable      = true,
      reclaimTime      = 200,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    HEAP  = {
      description      = [[Debris - Advanced Radar Tower]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 330,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 100,
      object           = [[debris2x2b.s3o]],
      reclaimable      = true,
      reclaimTime      = 100,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

  },

}

return lowerkeys({ armarad = unitDef })
