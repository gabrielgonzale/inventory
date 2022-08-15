local L0_1, L1_1, L2_1
L0_1 = QS
function L1_1(A0_2)
  local L1_2, L2_2
  if nil ~= A0_2 then
    L1_2 = A0_2
    L2_2 = QS
    L2_2 = L2_2.PlayerData
    L1_2(L2_2)
  else
    L1_2 = QS
    L1_2 = L1_2.PlayerData
    return L1_2
  end
end
L0_1.GetPlayerData = L1_1
L0_1 = QS
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = false
  L4_2 = ESX
  L4_2 = L4_2.TriggerServerCallback
  L5_2 = "qs-core:hasItem"
  function L6_2(A0_3)
    local L1_3
    if A0_3 then
      L1_3 = true
      L3_2 = L1_3
    end
    L1_3 = L3_2
    return L1_3
  end
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  return L3_2
end
L0_1.hasItem = L1_1
L0_1 = QS
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if "table" == L3_2 then
    L3_2 = A0_2.text
    if not L3_2 then
      L3_2 = "Placeholder"
    end
    L4_2 = A0_2.caption
    if not L4_2 then
      L4_2 = "Placeholder"
    end
    L5_2 = A1_2 or L5_2
    if not A1_2 then
      L5_2 = "primary"
    end
    L6_2 = A2_2 or L6_2
    if not A2_2 then
      L6_2 = 5000
    end
    L7_2 = SendNUIMessage
    L8_2 = {}
    L8_2.action = "notify"
    L8_2.type = L5_2
    L8_2.length = L6_2
    L8_2.text = L3_2
    L8_2.caption = L4_2
    L7_2(L8_2)
  else
    L3_2 = A1_2 or L3_2
    if not A1_2 then
      L3_2 = "primary"
    end
    L4_2 = A2_2 or L4_2
    if not A2_2 then
      L4_2 = 5000
    end
    L5_2 = SendNUIMessage
    L6_2 = {}
    L6_2.action = "notify"
    L6_2.type = L3_2
    L6_2.length = L4_2
    L6_2.text = A0_2
    L5_2(L6_2)
  end
end
L0_1.Notify = L1_1
L0_1 = RegisterNUICallback
L1_1 = "getNotifyConfig"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = QSConfig
  L3_2 = L3_2.Notify
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = QS
  L3_2 = L3_2.Notify
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
Notify = L0_1
L0_1 = QS
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L6_2 = GetPlayerServerId
  L7_2 = PlayerId
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L7_2()
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L7_2 = GetPlayerFromServerId
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  L8_2 = DoScreenFadeOut
  L9_2 = A0_2
  L8_2(L9_2)
  L8_2 = Citizen
  L8_2 = L8_2.Wait
  L9_2 = A0_2
  L8_2(L9_2)
  L8_2 = StartPlayerTeleport
  L9_2 = L7_2
  L10_2 = A1_2
  L11_2 = A2_2
  L12_2 = A3_2
  L13_2 = A4_2
  L14_2 = false
  L15_2 = true
  L16_2 = false
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L8_2 = Citizen
  L8_2 = L8_2.Wait
  L9_2 = A0_2
  L8_2(L9_2)
  L8_2 = DoScreenFadeIn
  L9_2 = A0_2
  L8_2(L9_2)
  if nil ~= A5_2 then
    L8_2 = A5_2
    L8_2()
  end
end
L0_1.Teleport = L1_1
function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = QS
  L5_2 = L5_2.Teleport
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L10_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
Teleport = L0_1
L0_1 = QS
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = ESX
  L4_2 = L4_2.Game
  L4_2 = L4_2.SpawnVehicle
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = TaskWarpPedIntoVehicle
    L2_3 = L3_2
    L3_3 = A0_3
    L4_3 = -1
    L1_3(L2_3, L3_3, L4_3)
  end
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.SpawnVehicle = L1_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = QS
  L3_2 = L3_2.SpawnVehicle
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
SpawnVehicle = L0_1
L0_1 = QS
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = AddTextEntry
  L5_2 = "ShowHelpNotification"
  L6_2 = A0_2
  L4_2(L5_2, L6_2)
  if A1_2 then
    L4_2 = DisplayHelpTextThisFrame
    L5_2 = "ShowHelpNotification"
    L6_2 = false
    L4_2(L5_2, L6_2)
  else
    if nil == A2_2 then
      A2_2 = true
    end
    L4_2 = BeginTextCommandDisplayHelp
    L5_2 = "ShowHelpNotification"
    L4_2(L5_2)
    L4_2 = EndTextCommandDisplayHelp
    L5_2 = 0
    L6_2 = false
    L7_2 = A2_2
    L8_2 = A3_2 or L8_2
    if not A3_2 then
      L8_2 = -1
    end
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
L0_1.ShowHelpNotification = L1_1
function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = QS
  L4_2 = L4_2.ShowHelpNotification
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
ShowHelpNotification = L0_1
L0_1 = QS
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = ClearPrints
  L2_2()
  L2_2 = BeginTextCommandPrint
  L3_2 = "STRING"
  L2_2(L3_2)
  L2_2 = AddTextComponentSubstringPlayerName
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = EndTextCommandPrint
  L3_2 = A1_2
  L4_2 = 1
  L2_2(L3_2, L4_2)
end
L0_1.DrawSubtitle = L1_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QS
  L2_2 = L2_2.DrawSubtitle
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
DrawSubtitle = L0_1
L0_1 = QS
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = DrawTextQS
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.DrawText3D = L1_1
function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = QS
  L4_2 = L4_2.DrawText3D
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
DrawText3D = L0_1
L0_1 = QS
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2)
  local L11_2, L12_2, L13_2, L14_2, L15_2
  L11_2 = exports
  L11_2 = L11_2.progressbar
  L12_2 = L11_2
  L11_2 = L11_2.Progress
  L13_2 = {}
  L15_2 = A0_2
  L14_2 = A0_2.lower
  L14_2 = L14_2(L15_2)
  L13_2.name = L14_2
  L13_2.duration = A2_2
  L13_2.label = A1_2
  L13_2.useWhileDead = A3_2
  L13_2.canCancel = A4_2
  L13_2.controlDisables = A5_2
  L13_2.animation = A6_2
  L13_2.prop = A7_2
  L13_2.propTwo = A8_2
  function L14_2(A0_3)
    local L1_3
    if not A0_3 then
      L1_3 = A9_2
      if nil ~= L1_3 then
        L1_3 = A9_2
        L1_3()
      end
    else
      L1_3 = A10_2
      if nil ~= L1_3 then
        L1_3 = A10_2
        L1_3()
      end
    end
  end
  L11_2(L12_2, L13_2, L14_2)
end
L0_1.Progressbar = L1_1
L0_1 = QS
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = RequestModel
  L6_2 = GetHashKey
  L7_2 = A0_2
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2(L7_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  while true do
    L5_2 = HasModelLoaded
    L6_2 = GetHashKey
    L7_2 = A0_2
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2(L7_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    if L5_2 then
      break
    end
    L5_2 = Wait
    L6_2 = 1
    L5_2(L6_2)
  end
  L5_2 = CreatePed
  L6_2 = 1
  L7_2 = GetHashKey
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = false
  L13_2 = true
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  npc = L5_2
  L5_2 = SetModelAsNoLongerNeeded
  L6_2 = npc
  L5_2(L6_2)
  L5_2 = SetPedCombatAttributes
  L6_2 = npc
  L7_2 = 46
  L8_2 = true
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = SetPedFleeAttributes
  L6_2 = npc
  L7_2 = 0
  L8_2 = 0
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = SetBlockingOfNonTemporaryEvents
  L6_2 = npc
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = SetEntityAsMissionEntity
  L6_2 = npc
  L7_2 = true
  L8_2 = true
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = SetEntityInvincible
  L6_2 = npc
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = FreezeEntityPosition
  L6_2 = npc
  L7_2 = true
  L5_2(L6_2, L7_2)
end
L0_1.CreatePed = L1_1
