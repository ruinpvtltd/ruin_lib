-- Standalone Functions

-- Teleport
function Teleport(ped, x, y, z)
    CreateThread( 
      function()
        DoScreenFadeOut(250)
        while not IsScreenFadedOut() do
          Wait(0)
        end
        SetEntityCoords(ped, x, y, z)
        DoScreenFadeIn(250)
    end)
end

function Teleport(ped, x, y, z)
  CreateThread(
    function()
      DoScreenFadeOut(250)
      while not IsScreenFadedOut() do
        Wait(0)
      end
      SetEntityCoords(ped, x, y, z)
      DoScreenFadeIn(250)
    end)
end

-- Marker
function Draw3DMarker(MarkerID, x, y, z, SizeX, SizeY, SizeZ, ColorR, ColorG, ColorB, ColorA)
  DrawMarker(MarkerID, x, y, z, 0.0,0.0,0.0,0.0,0.0,0.0, SizeX, SizeY, SizeZ, ColorR, ColorG, ColorB, ColorA, false, true, 2, false, false, false, false)
end

-- 3D Text
function Draw3DText(x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

-- Blips
-- Comming Soon
