local L0_1, L1_1, L2_1
L0_1 = {}
QS = L0_1
L0_1 = QS
L1_1 = {}
L0_1.PlayerData = L1_1
L0_1 = QS
L1_1 = QSShared
L0_1.Shared = L1_1
L0_1 = QS
L1_1 = QSConfig
L0_1.Config = L1_1
isLoggedIn = false
function L0_1()
  local L0_2, L1_2
  L0_2 = QS
  return L0_2
end
getQS = L0_1
ESX = nil
L0_1 = Citizen
L0_1 = L0_1.CreateThread
function L1_1()
  local L0_2, L1_2, L2_2
  while true do
    L0_2 = ESX
    if nil ~= L0_2 then
      break
    end
    L0_2 = TriggerEvent
    L1_2 = QSConfig
    L1_2 = L1_2.getSharedObject
    function L2_2(A0_3)
      local L1_3
      ESX = A0_3
    end
    L0_2(L1_2, L2_2)
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 0
    L0_2(L1_2)
  end
end
L0_1(L1_1)
L0_1 = RegisterNetEvent
L1_1 = "qs-core:getSharedObject"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "qs-core:getSharedObject"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2
  L2_2 = getQS
  L2_2 = L2_2()
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "qs-core:playerLoaded"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "qs-core:playerLoaded"
function L2_1()
  local L0_2, L1_2
  L0_2 = ShutdownLoadingScreenNui
  L0_2()
  isLoggedIn = true
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "qs-core:playerUnloaded"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "qs-core:playerUnloaded"
function L2_1()
  local L0_2, L1_2
  isLoggedIn = false
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "qs-core:setPlayerData"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "qs-core:setPlayerData"
function L2_1(A0_2)
  local L1_2
  L1_2 = QS
  L1_2.PlayerData = A0_2
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "qs-core:useItem"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "qs-core:useItem"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "qs-core:useItem"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "qs-core:Notify"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = QS
  L3_2 = L3_2.Notify
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "GetInventory"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = ESX
  L1_2 = L1_2.TriggerServerCallback
  L2_2 = "qs-core:GetInventory"
  function L3_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "qs-core:sendMessage"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "qs-core:sendMessage"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SendTextMessage
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = QSConfig
  L1_2 = L1_2.Languages
  L2_2 = QSConfig
  L2_2 = L2_2.Language
  L1_2 = L1_2[L2_2]
  if L1_2 then
    L2_2 = L1_2[A0_2]
    if L2_2 then
      L2_2 = L1_2[A0_2]
      return L2_2
    end
  end
  return A0_2
end
Lang = L0_1
