unitDef = {
  unitname            = [[dynrecon1]],
  name                = [[Recon Commander]],
  description         = [[High Mobility Commander]],
  acceleration        = 0.25,
  activateWhenBuilt   = true,
  amphibious          = [[1]],
  brakeRate           = 0.45,
  buildCostEnergy     = 1200,
  buildCostMetal      = 1200,
  buildDistance       = 120,
  builder             = true,

  buildoptions        = {
  },

  buildPic            = [[commrecon.png]],
  buildTime           = 1200,
  canAttack           = true,
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  category            = [[LAND]],
  commander           = true,
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[45 50 45]],
  collisionVolumeTest    = 1,
  collisionVolumeType    = [[CylY]],  
  corpse              = [[DEAD]],

  customParams        = {
    canjump            = 1,
    jump_range         = 400,
    jump_speed         = 6,
    jump_reload        = 20,
    jump_from_midair   = 1,

	cloakstealth = [[1]],
	description_de = [[Hochmobiler Kommandant]],
	description_pl = [[Mobilny Dowodca]],
	helptext       = [[The Recon Commander revolves around mobility and guile; this lightly armored platform can mount many special weapons and modules and comes pre-equipped with jumpjets.]],
	helptext_de    = [[Bei dem Recon Commander dreht sich alles um Mobilit�t und List. Dieser schwach gepanzerte Grundsatz kann um viele Spezialwaffen und -module erweitert werden. Er besitzt au�erdem einen D?enstrahl zum Springen.]],
	helptext_pl    = [[Recon to Dowodca oparty na na szybkosci i przebieglosci; moze uzywac wielu egzotycznych broni i jest wyposazony w mozliwosc skoku.]],
	level = [[1]],
	statsname = [[dynrecon1]],
	soundok = [[heavy_bot_move]],
	soundselect = [[bot_select]],
	soundbuild = [[builder_start]],
    commtype = [[3]],
    aimposoffset   = [[0 10 0]],
	dynamic_comm   = 1,
  },

  energyStorage       = 0,
  energyUse           = 0,
  explodeAs           = [[ESTOR_BUILDINGEX]],
  footprintX          = 2,
  footprintZ          = 2,
  hideDamage          = false,
  iconType            = [[commander1]],
  idleAutoHeal        = 5,
  idleTime            = 0,
  leaveTracks         = true,
  losEmitHeight       = 40,
  mass                = 407,
  maxDamage           = 1650,
  maxSlope            = 36,
  maxVelocity         = 1.45,
  maxWaterDepth       = 5000,
  metalStorage        = 0,
  minCloakDistance    = 75,
  movementClass       = [[AKBOT2]],
  noChaseCategory     = [[TERRAFORM SATELLITE FIXEDWING GUNSHIP HOVER SHIP SWIM SUB LAND FLOAT SINK TURRET]],
  norestrict          = [[1]],
  objectName          = [[commrecon.s3o]],
  script              = [[dynrecon.lua]],
  seismicSignature    = 16,
  selfDestructAs      = [[ESTOR_BUILDINGEX]],

  sfxtypes            = {

    explosiongenerators = {
	  [[custom:NONE]],
	  [[custom:NONE]],
      [[custom:RAIDMUZZLE]],
	  [[custom:NONE]],
      [[custom:VINDIBACK]],
      [[custom:FLASH64]],
    },

  },

  showNanoSpray       = false,
  side                = [[ARM]],
  sightDistance       = 500,
  smoothAnim          = true,
  sonarDistance       = 300,
  trackOffset         = 0,
  trackStrength       = 8,
  trackStretch        = 1,
  trackType           = [[ComTrack]],
  trackWidth          = 22,
  terraformSpeed      = 600,
  turnRate            = 1350,
  upright             = true,
  workerTime          = 10,
  
  featureDefs         = {

    DEAD      = {
      description      = [[Wreckage - Recon Commander]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 1650,
      energy           = 0,
      featureDead      = [[HEAP]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[20]],
      hitdensity       = [[100]],
      metal            = 480,
      object           = [[commrecon_dead.s3o]],
      reclaimable      = true,
      reclaimTime      = 480,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    HEAP      = {
      description      = [[Debris - Recon Commander]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 1650,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      hitdensity       = [[100]],
      metal            = 480,
      object           = [[debris2x2c.s3o]],
      reclaimable      = true,
      reclaimTime      = 480,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

  },

}

return lowerkeys({ dynrecon1 = unitDef })
