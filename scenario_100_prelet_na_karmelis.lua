-- Name: Prelet Na Karmelis
-- Description: A few random stations are under attack by enemies, with random terrain around them. Destroy all enemies to win.
---
--- Scenario
-- @script scenario_100_basic


function init()
    local karmelis = Planet():setPosition(-17289, 8764):setPlanetRadius(2500):setDistanceFromMovementPlane(-2000.00)
        karmelis:setPlanetAtmosphereColor(0.2,0.2,0):setPlanetAtmosphereTexture("planets/atmosphere.png")
        karmelis:setPlanetCloudTexture("planets/clouds-2.png"):setPlanetSurfaceTexture("planets/planet-5.png")
        karmelis:setCallSign("Karmelis")
    local karmelisMoon = Planet():setPosition(-10345, 5292):setPlanetRadius(500):setDistanceFromMovementPlane(-2000.000)
        karmelisMoon:setPlanetSurfaceTexture("planets/moon-2.png"):setAxialRotationTime(120.00)
        karmelisMoon:setCallSign("Nero")
    
    local nefraxis = Planet():setPosition(265834, 117500):setPlanetRadius(5000):setPlanetCloudRadius(5200.00)
        nefraxis:setPlanetSurfaceTexture("planets/planet-1.png")
        nefraxis:setPlanetAtmosphereColor():setPlanetAtmosphereTexture("planets/atmosphere.png")
        nefraxis:setPlanetCloudTexture("planets/clouds-3.png")
        nefraxis:setCallSign("Nefraxis")
    
    local sun2 = Planet():setPosition(245935, 17518):setPlanetRadius(1000):setDistanceFromMovementPlane(-2000):setPlanetSurfaceTexture("planets/planet-2.png"):setAxialRotationTime(20.0)
    sun2:setCallSign("Stigma")
    local sun1 = Planet():setPosition(243056, 3056):setPlanetRadius(8000):setDistanceFromMovementPlane(-2000):setPlanetAtmosphereTexture("planets/star-1.png"):setPlanetAtmosphereColor(1.0, 1.0, 1.0)
    sun1:setCallSign("Pela")
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




Nebula():setPosition(-70296, 50580)
Nebula():setPosition(-75605, 44863)
Nebula():setPosition(-82412, 41188)
Nebula():setPosition(-85951, 30298)
Nebula():setPosition(-85542, 18727)
Nebula():setPosition(-87857, 10423)
Nebula():setPosition(-86495, 1984)
Nebula():setPosition(-88946, -5503)
Nebula():setPosition(-90307, 21177)
Nebula():setPosition(-91532, 36015)
Nebula():setPosition(-81323, 8245)
Nebula():setPosition(-74925, 486)
Nebula():setPosition(-80642, -4550)
Nebula():setPosition(-74516, -10540)
Nebula():setPosition(-70977, -5776)
Nebula():setPosition(-94663, 27439)
