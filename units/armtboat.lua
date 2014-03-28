unitDef = {
  unitname            = [[armtboat]],
  name                = [[Surfboard]],
  description         = [[Transport Platform]],
  acceleration        = 0.102,
  brakeRate           = 0.115,
  buildAngle          = 16384,
  buildCostEnergy     = 165,
  buildCostMetal      = 165,
  builder             = false,
  buildPic            = [[armtboat.png]],
  buildTime           = 165,
  canAttack           = false,
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  cantBeTransported   = true,
  category            = [[SHIP UNARMED]],
  collisionVolumeOffsets = [[0 0 -3]],
  collisionVolumeScales  = [[35 20 55]],
  collisionVolumeTest    = 1,
  collisionVolumeType    = [[ellipsoid]],  
  corpse              = [[DEAD]],

  customParams        = {
    description_de = [[Transportboot]],
    description_fr = [[Barge de Transport]],
    description_pl = [[Platforma Transportowa]],
    helptext       = [[The Surfboard serves as a naval transport and firing platform--that is, any unit on the Surfboard can fire off of it.]],
    helptext_de    = [[Das Surfboard bietet sich als Wassertransportmittel und als Feuerplattform an, denn alle auf dem Surfboard transportierten Einheiten k�nnen weiter feuern.]],
    helptext_fr    = [[Le Surfboard est un navire de transport et une plateforme de tir. Les unit�s transport�es peuvent se servir de leurs armes.]],
    helptext_pl    = [[Surfboard to platforma transportowa - jednostki, kt�re przewozi, s� w stanie atakowa� z pok�adu.]],
    modelradius    = [[15]],
  },

  explodeAs           = [[BIG_UNITEX]],
  floater             = true,
  footprintX          = 4,
  footprintZ          = 4,
  holdSteady          = true,
  iconType            = [[shiptransport]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  isFirePlatform      = true,
  mass                = 175,
  maxDamage           = 1100,
  maxVelocity         = 3,
  minCloakDistance    = 75,
  minWaterDepth       = 10,
  modelCenterOffset	  = [[0 -3 0]],
  movementClass       = [[BOAT4]],
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM SATELLITE FIXEDWING GUNSHIP HOVER SHIP SWIM SUB LAND FLOAT SINK TURRET]],
  objectName          = [[ARMTBOAT]],
  releaseHeld         = true,
  script			  = [[armtboat.lua]],
  seismicSignature    = 4,
  selfDestructAs      = [[BIG_UNITEX]],
  side                = [[ARM]],
  sightDistance       = 325,
  smoothAnim          = true,
  transportByEnemy    = false,
  transportCapacity   = 1,
  transportSize       = 3,
  turnRate            = 539,
  workerTime          = 0,

  featureDefs         = {

    DEAD  = {
      description      = [[Wreckage - Surfboard]],
      blocking         = false,
      category         = [[corpses]],
      damage           = 1100,
      energy           = 0,
      featureDead      = [[DEAD2]],
      footprintX       = 3,
      footprintZ       = 3,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 88,
      object           = [[surfboard_d.3ds]],
      reclaimable      = true,
      reclaimTime      = 88,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Surfboard]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 1100,
      energy           = 0,
      featureDead      = [[HEAP]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 3,
      footprintZ       = 3,
      hitdensity       = [[100]],
      metal            = 88,
      object           = [[debris3x3a.s3o]],
      reclaimable      = true,
      reclaimTime      = 88,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    HEAP  = {
      description      = [[Debris - Surfboard]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 1101,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 3,
      footprintZ       = 3,
      hitdensity       = [[100]],
      metal            = 44,
      object           = [[debris3x3a.s3o]],
      reclaimable      = true,
      reclaimTime      = 44,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

  },

}

return lowerkeys({ armtboat = unitDef })
