-- Name: Prelet Na Karmelis
-- Description: A few random stations are under attack by enemies, with random terrain around them. Destroy all enemies to win.
---
--- Scenario
-- @script scenario_100_basic


function init()
    local planet1 = Planet():setPosition(5000, 5000):setPlanetRadius(3000):setDistanceFromMovementPlane(-2000):setPlanetSurfaceTexture("planets/planet-1.png"):setPlanetCloudTexture("planets/clouds-1.png"):setPlanetAtmosphereTexture("planets/atmosphere.png"):setPlanetAtmosphereColor(0.2, 0.2, 1.0)
    local moon1 = Planet():setPosition(5000, 0):setPlanetRadius(1000):setDistanceFromMovementPlane(-2000):setPlanetSurfaceTexture("planets/moon-1.png"):setAxialRotationTime(20.0)
    local sun1 = Planet():setPosition(5000, 15000):setPlanetRadius(1000):setDistanceFromMovementPlane(-2000):setPlanetAtmosphereTexture("planets/star-1.png"):setPlanetAtmosphereColor(1.0, 1.0, 1.0)
    -- planet1:setOrbit(sun1, 40)
    -- moon1:setOrbit(planet1, 20.0)
    -- Spawn the Ark
    Archa = PlayerSpaceship():setTemplate("Ender"):setPosition(-17224, -14649):setFaction("Citadel")
    Archa:setJumpDrive(false):setWarpDrive(true)
    -- player:setHullMax(1000):setHull(714):setImpulseMaxSpeed(5.4):setImpulseMaxReverseSpeed(4.8):setRotationMaxSpeed(2.4):setJumpDrive(false):setJumpDriveRange(0.00, 0.00):setShieldsMax(400.00, 400.00):setWeaponTubeCount(4):setWeaponStorageMax("Homing", 20):setWeaponStorage("Homing", 20):setWeaponStorageMax("Nuke", 0):setWeaponStorage("Nuke", 0):setWeaponStorageMax("Mine", 0):setWeaponStorage("Mine", 0):setWeaponStorageMax("EMP", 20):setWeaponStorage("EMP", 20):setWeaponStorageMax("HVLI", 0):setWeaponStorage("HVLI", 0)
end


onNewPlayerShip(
    function(ship)
        -- Decide what you do with new ships:
        print(ship, ship.typeName, ship:getTypeName(), ship:getCallSign())
        -- ship:destroy()
    end
)
    


-- PlayerSpaceship():setTemplate("Ender"):setPosition(-16928, -14726):setHullMax(1000):setHull(704):setJumpDrive(false):setWarpDrive(true)
