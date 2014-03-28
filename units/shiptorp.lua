unitDef = {
  unitname            = [[shiptorp]],
  name                = [[Hunter]],
  description         = [[Torpedo Frigate]],
  acceleration        = 0.048,
  activateWhenBuilt   = true,
  brakeRate           = 0.043,
  buildCostEnergy     = 380,
  buildCostMetal      = 380,
  builder             = false,
  buildPic            = [[DCLSHIP.png]],
  buildTime           = 380,
  canAttack           = true,
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  category            = [[SHIP]],
  collisionVolumeOffsets = [[0 -7 0]],
  collisionVolumeScales  = [[34 34 80]],
  collisionVolumeTest    = 1,
  collisionVolumeType    = [[cylZ]],
  corpse              = [[DEAD]],

  customParams        = {
    description_de = [[Torpedofregatte]],
    description_pl = [[Fregata torpedowa]],
    helptext       = [[The Torpedo Frigate is a (relatively) cheap countermeasure to subs, though it can also attack surface targets.]],
	helptext_de    = [[Die relativ g�nstige Torpedofregatte besitzt eine Waffe speziell zur U-Jagd, die auch im Stande ist Schiffe zu treffen.]],
	helptext_pl    = [[Fregata torpedowa to odpowiedz na jednostki podwodne; moze tez strzelac w statki.]],
	modelradius    = [[14]],
	turnatfullspeed = [[1]],
  },

  explodeAs           = [[BIG_UNITEX]],
  floater             = true,
  footprintX          = 4,
  footprintZ          = 4,
  iconType            = [[hunter]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  maneuverleashlength = [[1280]],
  mass                = 240,
  maxDamage           = 1900,
  maxVelocity         = 2.3,
  minCloakDistance    = 75,
  minWaterDepth       = 5,
  movementClass       = [[BOAT4]],
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE HOVER]],
  objectName          = [[DCLSHIP]],
  script              = [[dclship.cob]],
  seismicSignature    = 4,
  selfDestructAs      = [[BIG_UNITEX]],
  side                = [[ARM]],
  sightDistance       = 374,
  smoothAnim          = true,
  sonarDistance       = 360,
  turninplace         = 0,
  turnRate            = 380,
  waterline           = 4,
  workerTime          = 0,

  weapons             = {

    {
      def                = [[TORPEDO]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[SWIM FIXEDWING LAND SUB SINK TURRET FLOAT SHIP GUNSHIP HOVER]],
    },

  },


  weaponDefs          = {

    TORPEDO = {
      name                    = [[Torpedo]],
      areaOfEffect            = 96,
      avoidFriendly           = false,
      bouncerebound           = 0.5,
      bounceslip              = 0.5,
      canAttackGround		  = false,	-- workaround for range hax
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 450,
        subs    = 450,
      },

      edgeEffectiveness       = 0.99,
      explosionGenerator      = [[custom:TORPEDO_HIT]],
      fixedLauncher           = true,
      groundbounce            = 1,
      guidance                = true,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
	  flightTime              = 6,
      model                   = [[wep_t_longbolt.s3o]],
      myGravity               = 0.8,
      numbounce               = 4,
      noSelfDamage            = true,
      propeller               = [[1]],
      range                   = 340,
      reloadtime              = 7,
      renderType              = 1,
      selfprop                = true,
	  soundHit                = [[explosion/wet/ex_underwater]],
      soundStart              = [[weapon/torp_land]],
      startVelocity           = 120,
      soundStartVolume        = 8,
      startVelocity           = 50,
      tolerance               = 100000,
      tracks                  = true,
      turnRate                = 33000,
      turret                  = true,
      waterWeapon             = true,
      weaponAcceleration      = 30,
      weaponType              = [[TorpedoLauncher]],
      weaponVelocity          = 150,
    },

  },


  featureDefs         = {

    DEAD  = {
      description      = [[Wreckage - Hunter]],
      blocking         = false,
      category         = [[corpses]],
      damage           = 1300,
      energy           = 0,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 142,
      object           = [[hunter_d.3ds]],
      reclaimable      = true,
      reclaimTime      = 142,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    HEAP  = {
      description      = [[Debris - Hunter]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 1300,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 4,
      footprintZ       = 4,
      hitdensity       = [[100]],
      metal            = 71,
      object           = [[debris4x4c.s3o]],
      reclaimable      = true,
      reclaimTime      = 71,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

  },

}

return lowerkeys({ shiptorp = unitDef })
