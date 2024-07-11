-- Name: Hra Na Schovávanou
-- Description: Přelet na planetu Karmelis
---
--- Scenario
-- @script scenario_100_basic

require("utils.lua")
KARMELIS_X = -17289
KARMELIS_Y = 8764

EPIMETEUS_X = 265834
EPIMETEUS_Y = 117500

function init()
    karmelis = Planet():setPosition(KARMELIS_X, KARMELIS_Y):setPlanetRadius(2500):setDistanceFromMovementPlane(-2000.00)
        karmelis:setPlanetAtmosphereColor(0.2,0.2,0):setPlanetAtmosphereTexture("planets/atmosphere.png")
        karmelis:setPlanetCloudTexture("planets/clouds-2.png"):setPlanetSurfaceTexture("planets/planet-3.png")
        karmelis:setCallSign("Karmelis"):setDescription("A rocky terrestrial world")
        karmelis:setScanningParameters(2,2)
        karmelis:setDescriptionForScanState("fullscan", "This is a rocky terrestrial world with an ammonia-rich unbreathable atmosphere. Flora thrives in this poisonous environment. Further scans indicate the presence of a large research station. According to the database, its purpose is the study of ammonia-based flora.")
    local karmelisMoon = Planet():setPosition(-10345, 5292):setPlanetRadius(500):setDistanceFromMovementPlane(-2000.000)
        karmelisMoon:setPlanetSurfaceTexture("planets/moon-2.png"):setAxialRotationTime(220.00)
        karmelisMoon:setCallSign("Nero")
    
    local epimeteus = Planet():setPosition(EPIMETEUS_X, EPIMETEUS_Y):setPlanetRadius(5000):setPlanetCloudRadius(5200.00):setDistanceFromMovementPlane(-2000)
        epimeteus:setPlanetSurfaceTexture("planets/planet-1.png"):setAxialRotationTime(120.00)
        epimeteus:setPlanetAtmosphereColor(0.361, 0.263, 0.541):setPlanetAtmosphereTexture("planets/atmosphere.png")
        epimeteus:setPlanetCloudTexture("planets/clouds-3.png")
        epimeteus:setCallSign("Epimeteus")
    
    local sun2 = Planet():setPosition(245935, 17518):setPlanetRadius(1000):setDistanceFromMovementPlane(-2000)
        sun2:setPlanetSurfaceTexture("planets/planet-2.png"):setAxialRotationTime(20.0)
        sun2:setCallSign("Stigma"):setAxialRotationTime(120.00)
    local sun1 = Planet():setPosition(243056, 3056):setPlanetRadius(10000):setDistanceFromMovementPlane(-2000)
        sun1:setPlanetAtmosphereTexture("planets/star-1.png"):setPlanetAtmosphereColor(1.0, 1.0, 1.0)
        sun1:setCallSign("Pela")

    -- Spawn the Ark
    Archa = PlayerSpaceship():setTemplate("Ender"):setPosition(283916, 120545):setFaction("Citadel")
        Archa:setCallSign('Archa Noe-02')
        -- Blbuvzdornost
        Archa:setCanSelfDestruct(false)
        Archa:setCanBeDestroyed(false)
        -- Rakety
        Archa:setWeaponTubeCount(4):setWeaponTubeDirection(1, 0):setWeaponTubeDirection(2, 180):setWeaponTubeDirection(3, 180)
        Archa:setWeaponStorageMax("Homing", 30):setWeaponStorage("Homing", 30):setWeaponStorageMax("Mine", 0)
        Archa:weaponTubeAllowMissle(1, "Homing"):weaponTubeAllowMissle(1, "EMP"):weaponTubeAllowMissle(0, "EMP")
        Archa:setWeaponStorage("Mine", 0):setWeaponStorageMax("EMP", 20):setWeaponStorage("EMP", 20):setMaxScanProbeCount(20):setScanProbeCount(12)
        -- Poškození
        Archa:setHullMax(1000):setHull(714)
        Archa:setSystemHealthMax("reactor", 0.6):setSystemHealth("reactor", 0.4)
        Archa:setSystemHealthMax("maneuver", 0.65):setSystemHealth("maneuver", 0.3)
        Archa:setSystemHealthMax("impulse", 0.8):setSystemHealth("impulse", 0.5)
        Archa:setSystemHealthMax("warp", 0.0):setSystemHealth("warp", 0.0)
        Archa:setSystemHealthMax("jumpdrive", 0.0):setSystemHealth("jumpdrive", 0.0)
        Archa:setSystemHealthMax("beamweapons", 0.8):setSystemHealth("beamweapons", 0.4)
        Archa:setSystemHealthMax("missilesystem", 0.75):setSystemHealth("missilesystem", 0.5)
        Archa:setSystemHealthMax("frontshield", 0.8):setSystemHealth("frontshield", 0.4)
        Archa:setSystemHealthMax("rearshield", 0.75):setSystemHealth("rearshield", 0.5)
        -- Motory
        Archa:setJumpDrive(false):setWarpDrive(false):setImpulseMaxSpeed(250)
        Archa:setSystemPowerFactor('reactor', -52)

end


function update(delta)
    -- Check if the player's ship is within 3 units of Karmelis
    player_x, player_y = Archa:getPosition()
    
    if playerShip:distance(KARMELIS_X,KARMELIS_Y, player_x, player_y) <= 3500 then
        addMessage("Mission Complete! You have reached Karmelis.")
        victory("Citadel")
    end
end

onNewPlayerShip(
    function(ship)
        -- Decide what you do with new ships:
        print(ship, ship.typeName, ship:getTypeName(), ship:getCallSign())
        -- ship:destroy()
    end
)
