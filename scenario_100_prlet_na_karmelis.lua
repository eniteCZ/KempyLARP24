-- Name: Prelet Na Karmelis
-- Description: A few random stations are under attack by enemies, with random terrain around them. Destroy all enemies to win.
---
--- Scenario
-- @script scenario_100_basic

Planet():setPosition(5000, 5000):setPlanetRadius(3000):setPlanetAtmosphereColor(0.20,0.20,1.00):setDistanceFromMovementPlane(-2000.00):setPlanetAtmosphereTexture(planets/atmosphere.png):setPlanetSurfaceTexture(planets/planet-1.png):setPlanetCloudTexture(planets/clouds-1.png):setPlanetCloudRadius(3150.00):setOrbit(?, 40.00)
Planet():setPosition(5000, 0):setPlanetRadius(1000):setDistanceFromMovementPlane(-2000.00):setPlanetSurfaceTexture(planets/moon-1.png):setPlanetCloudRadius(1050.00):setAxialRotationTime(20.00):setOrbit(?, 20.00)
Planet():setPosition(5000, 15000):setPlanetRadius(1000):setPlanetAtmosphereColor(1.00,1.00,1.00):setDistanceFromMovementPlane(-2000.00):setPlanetAtmosphereTexture(planets/star-1.png):setPlanetCloudRadius(1050.00)
PlayerSpaceship():setTemplate("Atlantis"):setPosition(-17224, -14649):setHullMax(1000):setHull(714):setImpulseMaxSpeed(5.4):setImpulseMaxReverseSpeed(4.8):setRotationMaxSpeed(2.4):setJumpDrive(false):setJumpDriveRange(0.00, 0.00):setShieldsMax(400.00, 400.00):setWeaponTubeCount(4):setWeaponStorageMax("Homing", 20):setWeaponStorage("Homing", 20):setWeaponStorageMax("Nuke", 0):setWeaponStorage("Nuke", 0):setWeaponStorageMax("Mine", 0):setWeaponStorage("Mine", 0):setWeaponStorageMax("EMP", 20):setWeaponStorage("EMP", 20):setWeaponStorageMax("HVLI", 0):setWeaponStorage("HVLI", 0)
function init()
    -- Spawn the Ark
    player = PlayerSpaceship():setFaction("Citadel"):setTemplate()




    
    
