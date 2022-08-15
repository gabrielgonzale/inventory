local L0_1, L1_1, L2_1
L0_1 = {}
QS = L0_1
L0_1 = QS
L1_1 = QSConfig
L0_1.Config = L1_1
L0_1 = QS
L1_1 = QSShared
L0_1.Shared = L1_1
L0_1 = QS
L1_1 = {}
L0_1.UseableItems = L1_1
L0_1 = QS
L1_1 = {}
L0_1.Players = L1_1
L0_1 = QS
L1_1 = {}
L0_1.Player = L1_1
ESX = nil
L0_1 = TriggerEvent
L1_1 = QSConfig
L1_1 = L1_1.getSharedObject
function L2_1(A0_2)
  local L1_2
  ESX = A0_2
end
L0_1(L1_1, L2_1)
function L0_1()
  local L0_2, L1_2
  L0_2 = QS
  return L0_2
end
getQS = L0_1
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
L1_1 = QSConfig
L1_1 = L1_1.playerLoaded
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = QSConfig
L1_1 = L1_1.playerLoaded
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = MySQL
  L2_2 = L2_2.Async
  L2_2 = L2_2.fetchAll
  L3_2 = "SELECT metadata FROM users WHERE identifier = @id"
  L4_2 = {}
  L5_2 = A1_2.identifier
  L4_2["@id"] = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_3[1]
    L1_3 = L1_3.metadata
    if "" == L1_3 then
      L1_3 = QS
      L1_3 = L1_3.Login
      L2_3 = A1_2.source
      L3_3 = false
      L4_3 = nil
      L1_3 = L1_3(L2_3, L3_3, L4_3)
      if L1_3 then
      end
    else
      L1_3 = QS
      L1_3 = L1_3.Login
      L2_3 = A1_2.source
      L3_3 = A1_2.identifier
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
      end
    end
  end
  L2_2(L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = "qs-core:savePlayer"
function L2_1(A0_2)
  local L1_2, L2_2
  if not A0_2 then
    return
  end
  L1_2 = QS
  L1_2 = L1_2.GetPlayerFromId
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = QS
  L2_2 = L2_2.Players
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.Save
  L2_2()
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "GetItem"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L3_2 = QS
  L3_2 = L3_2.GetPlayerFromId
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if nil ~= L3_2 and nil ~= L2_2 then
    L4_2 = L3_2.GetItemByNameX
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    L5_2 = {}
    L5_2.count = L4_2
    L5_2.name = A1_2
    L6_2 = QS
    L6_2 = L6_2.Shared
    L6_2 = L6_2.Items
    L8_2 = A1_2
    L7_2 = A1_2.lower
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2[L7_2]
    if L6_2 then
      L6_2 = QS
      L6_2 = L6_2.Shared
      L6_2 = L6_2.Items
      L8_2 = A1_2
      L7_2 = A1_2.lower
      L7_2 = L7_2(L8_2)
      L6_2 = L6_2[L7_2]
      L6_2 = L6_2.label
      L5_2.label = L6_2
    end
    return L5_2
  end
  L4_2 = "xPlayernil"
  return L4_2
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "GetInventory"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2
  L2_2 = QS
  L2_2 = L2_2.GetPlayerFromId
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L2_2.GetInventory
    L3_2 = L3_2()
    return L3_2
  end
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "CanCarry"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L4_2 = QS
  L4_2 = L4_2.GetPlayerFromId
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if nil ~= L4_2 then
    L5_2 = L4_2.CanCarry
    L6_2 = A1_2
    L7_2 = A2_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L5_2 = true
      return L5_2
    end
  end
  L5_2 = false
  return L5_2
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "GetItemLabel"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 then
    L1_2 = QS
    L1_2 = L1_2.Shared
    L1_2 = L1_2.Items
    L3_2 = A0_2
    L2_2 = A0_2.lower
    L2_2 = L2_2(L3_2)
    L1_2 = L1_2[L2_2]
    if L1_2 then
      L1_2 = QS
      L1_2 = L1_2.Shared
      L1_2 = L1_2.Items
      L3_2 = A0_2
      L2_2 = A0_2.lower
      L2_2 = L2_2(L3_2)
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.label
      return L1_2
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1(L1_1, L2_1)
L0_1 = QSConfig
L0_1 = L0_1.Multicharacter
if L0_1 then
  L0_1 = QS
  function L1_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2
    L2_2 = QS
    L2_2 = L2_2.ExecuteSql
    L3_2 = true
    L4_2 = "DELETE FROM `users` WHERE `identifier` = '"
    L5_2 = A1_2
    L6_2 = "'"
    L4_2 = L4_2 .. L5_2 .. L6_2
    L2_2(L3_2, L4_2)
  end
  L0_1.DeleteCharacter = L1_1
end
L0_1 = QSConfig
L0_1 = L0_1.Multicharacter
if L0_1 then
  L0_1 = QS
  function L1_1(A0_2)
    local L1_2, L2_2
    L1_2 = Citizen
    L1_2 = L1_2.Wait
    L2_2 = 200
    L1_2(L2_2)
    L1_2 = QS
    L1_2 = L1_2.Players
    L1_2 = L1_2[A0_2]
    L1_2 = L1_2.Save
    L2_2 = true
    L1_2(L2_2)
    L1_2 = QS
    L1_2 = L1_2.Players
    L1_2[A0_2] = nil
  end
  L0_1.Logout = L1_1
end
L0_1 = AddEventHandler
L1_1 = QSConfig
L1_1 = L1_1.playerLogout
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = QS
  L1_2 = L1_2.Logout
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = QS
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = {}
  L4_2 = true
  L5_2 = MySQL
  L5_2 = L5_2.Async
  L5_2 = L5_2.execute
  L6_2 = A1_2
  L7_2 = {}
  function L8_2(A0_3)
    local L1_3, L2_3
    L1_3 = A2_2
    if nil ~= L1_3 then
      L1_3 = A0_2
      if false == L1_3 then
        L1_3 = A2_2
        L2_3 = A0_3
        L1_3(L2_3)
      end
    end
    L3_2 = A0_3
    L1_3 = false
    L4_2 = L1_3
  end
  L5_2(L6_2, L7_2, L8_2)
  if A0_2 then
    while L4_2 do
      L5_2 = Citizen
      L5_2 = L5_2.Wait
      L6_2 = 5
      L5_2(L6_2)
    end
    if nil ~= A2_2 and true == A0_2 then
      L5_2 = A2_2
      L6_2 = L3_2
      L5_2(L6_2)
    end
  end
  return L3_2
end
L0_1.ExecuteSql = L1_1
L0_1 = QS
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = {}
  L4_2 = true
  L5_2 = MySQL
  L5_2 = L5_2.Async
  L5_2 = L5_2.fetchAll
  L6_2 = A1_2
  L7_2 = {}
  function L8_2(A0_3)
    local L1_3, L2_3
    L1_3 = A2_2
    if nil ~= L1_3 then
      L1_3 = A0_2
      if false == L1_3 then
        L1_3 = A2_2
        L2_3 = A0_3
        L1_3(L2_3)
      end
    end
    L3_2 = A0_3
    L1_3 = false
    L4_2 = L1_3
  end
  L5_2(L6_2, L7_2, L8_2)
  if A0_2 then
    while L4_2 do
      L5_2 = Citizen
      L5_2 = L5_2.Wait
      L6_2 = 5
      L5_2(L6_2)
    end
    if nil ~= A2_2 and true == A0_2 then
      L5_2 = A2_2
      L6_2 = L3_2
      L5_2(L6_2)
    end
  end
  return L3_2
end
L0_1.FetchSql = L1_1
L0_1 = QS
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = QS
  L2_2 = L2_2.UseableItems
  L2_2[A0_2] = A1_2
end
L0_1.RegisterUsableItem = L1_1
L0_1 = QS
function L1_1(A0_2)
  local L1_2
  L1_2 = QS
  L1_2 = L1_2.UseableItems
  L1_2 = L1_2[A0_2]
  L1_2 = nil ~= L1_2
  return L1_2
end
L0_1.canCarryItem = L1_1
L0_1 = QS
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.info
  if L2_2 then
    L2_2 = A1_2.info
    L2_2 = L2_2.quality
    if L2_2 then
      L2_2 = A1_2.info
      L2_2 = L2_2.quality
      if L2_2 <= 0 then
        L2_2 = TriggerClientEvent
        L3_2 = "qs-core:sendMessage"
        L4_2 = A0_2
        L5_2 = Lang
        L6_2 = "ITEM_BROKEN"
        L5_2 = L5_2(L6_2)
        L6_2 = "error"
        return L2_2(L3_2, L4_2, L5_2, L6_2)
      end
    end
  end
  L2_2 = QS
  L2_2 = L2_2.UseableItems
  L3_2 = A1_2.name
  L2_2 = L2_2[L3_2]
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.useItem = L1_1
L0_1 = QS
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = pairs
  L2_2 = QS
  L2_2 = L2_2.Players
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = GetPlayerIdentifiers
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    L8_2 = pairs
    L9_2 = L7_2
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      if A0_2 == L13_2 then
        return L5_2
      end
    end
  end
  L1_2 = 0
  return L1_2
end
L0_1.getSource = L1_1
L0_1 = QS
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "number" == L1_2 then
    L1_2 = QS
    L1_2 = L1_2.Players
    L1_2 = L1_2[A0_2]
    return L1_2
  else
    L1_2 = QS
    L1_2 = L1_2.Players
    L2_2 = QS
    L2_2 = L2_2.getSource
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L1_2 = L1_2[L2_2]
    return L1_2
  end
end
L0_1.GetPlayerFromId = L1_1
L0_1 = QS
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A1_2 or L2_2
  if nil == A1_2 or not A1_2 then
    L2_2 = QSConfig
    L2_2 = L2_2.IdentifierType
  end
  L3_2 = pairs
  L4_2 = GetPlayerIdentifiers
  L5_2 = A0_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2(L5_2)
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    if "steam" == L2_2 then
      L9_2 = string
      L9_2 = L9_2.match
      L10_2 = L8_2
      L11_2 = "steam"
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 then
        return L8_2
      end
    elseif "license" == L2_2 then
      L9_2 = string
      L9_2 = L9_2.match
      L10_2 = L8_2
      L11_2 = "license:"
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 then
        L9_2 = string
        L9_2 = L9_2.sub
        L10_2 = L8_2
        L11_2 = 9
        return L9_2(L10_2, L11_2)
      end
    else
      L9_2 = string
      L9_2 = L9_2.find
      L10_2 = L8_2
      L11_2 = L2_2
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 then
        return L8_2
      end
    end
  end
  L3_2 = nil
  return L3_2
end
L0_1.getIdentifier = L1_1
L0_1 = QS
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if nil ~= A0_2 then
    if A1_2 then
      L3_2 = QS
      L3_2 = L3_2.FetchSql
      L4_2 = true
      L5_2 = "SELECT * FROM `users` WHERE `identifier` = '"
      L6_2 = A1_2
      L7_2 = "'"
      L5_2 = L5_2 .. L6_2 .. L7_2
      function L6_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3
        L1_3 = A0_3[1]
        if nil ~= L1_3 then
          L2_3 = json
          L2_3 = L2_3.decode
          L3_3 = L1_3.metadata
          L2_3 = L2_3(L3_3)
          L1_3.metadata = L2_3
        end
        L2_3 = QS
        L2_3 = L2_3.checkPlayerData
        L3_3 = A0_2
        L4_3 = L1_3
        L2_3(L3_3, L4_3)
      end
      L3_2(L4_2, L5_2, L6_2)
    else
      L3_2 = QS
      L3_2 = L3_2.checkPlayerData
      L4_2 = A0_2
      L5_2 = A2_2
      L3_2(L4_2, L5_2)
    end
    L3_2 = true
    return L3_2
  else
    L3_2 = false
    return L3_2
  end
end
L0_1.Login = L1_1
L0_1 = QS
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if nil == A1_2 or not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  A1_2.source = A0_2
  L2_2 = A1_2.steam
  if nil ~= L2_2 then
    L2_2 = A1_2.steam
    if L2_2 then
      goto lbl_20
    end
  end
  L2_2 = QS
  L2_2 = L2_2.getIdentifier
  L3_2 = A0_2
  L4_2 = "steam"
  L2_2 = L2_2(L3_2, L4_2)
  ::lbl_20::
  A1_2.steam = L2_2
  L2_2 = A1_2.license
  if nil ~= L2_2 then
    L2_2 = A1_2.license
    if L2_2 then
      goto lbl_32
    end
  end
  L2_2 = QS
  L2_2 = L2_2.getIdentifier
  L3_2 = A0_2
  L4_2 = "license"
  L2_2 = L2_2(L3_2, L4_2)
  ::lbl_32::
  A1_2.license = L2_2
  L2_2 = GetPlayerName
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A1_2.name = L2_2
  L2_2 = A1_2.metadata
  if nil ~= L2_2 then
    L2_2 = A1_2.metadata
    if L2_2 then
      goto lbl_45
    end
  end
  L2_2 = {}
  ::lbl_45::
  A1_2.metadata = L2_2
  L2_2 = A1_2.metadata
  L3_2 = A1_2.metadata
  L3_2 = L3_2.armor
  if not L3_2 then
    L3_2 = 0
  end
  L2_2.armor = L3_2
  L2_2 = A1_2.metadata
  L3_2 = A1_2.metadata
  L3_2 = L3_2.isdead
  if nil ~= L3_2 then
    L3_2 = A1_2.metadata
    L3_2 = L3_2.isdead
    if L3_2 then
      goto lbl_63
    end
  end
  L3_2 = false
  ::lbl_63::
  L2_2.isdead = L3_2
  L2_2 = A1_2.metadata
  L3_2 = A1_2.metadata
  L3_2 = L3_2.inlaststand
  if nil ~= L3_2 then
    L3_2 = A1_2.metadata
    L3_2 = L3_2.inlaststand
    if L3_2 then
      goto lbl_74
    end
  end
  L3_2 = false
  ::lbl_74::
  L2_2.inlaststand = L3_2
  L2_2 = A1_2.metadata
  L3_2 = A1_2.metadata
  L3_2 = L3_2.dealerrep
  if nil ~= L3_2 then
    L3_2 = A1_2.metadata
    L3_2 = L3_2.dealerrep
    if L3_2 then
      goto lbl_85
    end
  end
  L3_2 = 0
  ::lbl_85::
  L2_2.dealerrep = L3_2
  L2_2 = A1_2.metadata
  L3_2 = A1_2.metadata
  L3_2 = L3_2.craftingrep
  if nil ~= L3_2 then
    L3_2 = A1_2.metadata
    L3_2 = L3_2.craftingrep
    if L3_2 then
      goto lbl_96
    end
  end
  L3_2 = 0
  ::lbl_96::
  L2_2.craftingrep = L3_2
  L2_2 = A1_2.metadata
  L3_2 = A1_2.metadata
  L3_2 = L3_2.attachmentcraftingrep
  if nil ~= L3_2 then
    L3_2 = A1_2.metadata
    L3_2 = L3_2.attachmentcraftingrep
    if L3_2 then
      goto lbl_107
    end
  end
  L3_2 = 0
  ::lbl_107::
  L2_2.attachmentcraftingrep = L3_2
  A1_2.LoggedIn = true
  L2_2 = QS
  L2_2 = L2_2.LoadInventory
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A1_2 = L2_2
  L2_2 = QS
  L2_2 = L2_2.CreatePlayer
  L3_2 = A1_2
  L2_2(L3_2)
end
L0_1.checkPlayerData = L1_1
L0_1 = QS
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L1_2.PlayerData = A0_2
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = TriggerClientEvent
    L1_3 = "qs-core:setPlayerData"
    L2_3 = L1_2.PlayerData
    L2_3 = L2_3.source
    L3_3 = L1_2.PlayerData
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2.UpdatePlayerData = L2_2
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3
    L3_3 = A0_3
    L2_3 = A0_3.lower
    L2_3 = L2_3(L3_3)
    if nil ~= A1_3 then
      L3_3 = L1_2.PlayerData
      L3_3 = L3_3.metadata
      L3_3[L2_3] = A1_3
    end
  end
  L1_2.SetMetaData = L2_2
  function L2_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    L4_3 = QS
    L4_3 = L4_3.GetTotalWeight
    L5_3 = L1_2.PlayerData
    L5_3 = L5_3.items
    L4_3 = L4_3(L5_3)
    L5_3 = QS
    L5_3 = L5_3.Shared
    L5_3 = L5_3.Items
    L7_3 = A0_3
    L6_3 = A0_3.lower
    L6_3 = L6_3(L7_3)
    L5_3 = L5_3[L6_3]
    if nil == L5_3 then
      L6_3 = TriggerClientEvent
      L7_3 = "qs-core:sendMessage"
      L8_3 = source
      L9_3 = Lang
      L10_3 = "ITEM_NOT_EXIST"
      L9_3 = L9_3(L10_3)
      L10_3 = "error"
      L6_3(L7_3, L8_3, L9_3, L10_3)
      return
    end
    L6_3 = tonumber
    L7_3 = A1_3
    L6_3 = L6_3(L7_3)
    L7_3 = tonumber
    L8_3 = A2_3
    L7_3 = L7_3(L8_3)
    if nil ~= L7_3 then
      L7_3 = tonumber
      L8_3 = A2_3
      L7_3 = L7_3(L8_3)
      if L7_3 then
        goto lbl_42
      end
    end
    L7_3 = QS
    L7_3 = L7_3.GetFirstSlotByItem
    L8_3 = L1_2.PlayerData
    L8_3 = L8_3.items
    L9_3 = A0_3
    L7_3 = L7_3(L8_3, L9_3)
    ::lbl_42::
    function L8_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4
      L1_4 = pairs
      L2_4 = QS
      L2_4 = L2_4.Config
      L2_4 = L2_4.DurabilityItems
      L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4)
      for L5_4, L6_4 in L1_4, L2_4, L3_4, L4_4 do
        if L6_4 == A0_4 then
          L7_4 = true
          return L7_4
        end
      end
      L1_4 = false
      return L1_4
    end
    L9_3 = L5_3.type
    if "weapon" == L9_3 then
      if nil == A3_3 then
        L9_3 = {}
        L10_3 = tostring
        L11_3 = QS
        L11_3 = L11_3.Shared
        L11_3 = L11_3.RandomInt
        L12_3 = 2
        L11_3 = L11_3(L12_3)
        L12_3 = QS
        L12_3 = L12_3.Shared
        L12_3 = L12_3.RandomStr
        L13_3 = 3
        L12_3 = L12_3(L13_3)
        L13_3 = QS
        L13_3 = L13_3.Shared
        L13_3 = L13_3.RandomInt
        L14_3 = 1
        L13_3 = L13_3(L14_3)
        L14_3 = QS
        L14_3 = L14_3.Shared
        L14_3 = L14_3.RandomStr
        L15_3 = 2
        L14_3 = L14_3(L15_3)
        L15_3 = QS
        L15_3 = L15_3.Shared
        L15_3 = L15_3.RandomInt
        L16_3 = 3
        L15_3 = L15_3(L16_3)
        L16_3 = QS
        L16_3 = L16_3.Shared
        L16_3 = L16_3.RandomStr
        L17_3 = 4
        L16_3 = L16_3(L17_3)
        L11_3 = L11_3 .. L12_3 .. L13_3 .. L14_3 .. L15_3 .. L16_3
        L10_3 = L10_3(L11_3)
        L9_3.serie = L10_3
        A3_3 = L9_3
      else
        L9_3 = A3_3.serie
        if nil == L9_3 then
          L9_3 = tostring
          L10_3 = QS
          L10_3 = L10_3.Shared
          L10_3 = L10_3.RandomInt
          L11_3 = 2
          L10_3 = L10_3(L11_3)
          L11_3 = QS
          L11_3 = L11_3.Shared
          L11_3 = L11_3.RandomStr
          L12_3 = 3
          L11_3 = L11_3(L12_3)
          L12_3 = QS
          L12_3 = L12_3.Shared
          L12_3 = L12_3.RandomInt
          L13_3 = 1
          L12_3 = L12_3(L13_3)
          L13_3 = QS
          L13_3 = L13_3.Shared
          L13_3 = L13_3.RandomStr
          L14_3 = 2
          L13_3 = L13_3(L14_3)
          L14_3 = QS
          L14_3 = L14_3.Shared
          L14_3 = L14_3.RandomInt
          L15_3 = 3
          L14_3 = L14_3(L15_3)
          L15_3 = QS
          L15_3 = L15_3.Shared
          L15_3 = L15_3.RandomStr
          L16_3 = 4
          L15_3 = L15_3(L16_3)
          L10_3 = L10_3 .. L11_3 .. L12_3 .. L13_3 .. L14_3 .. L15_3
          L9_3 = L9_3(L10_3)
          A3_3.serie = L9_3
        end
      end
    end
    L9_3 = L8_3
    L10_3 = A0_3
    L9_3 = L9_3(L10_3)
    if L9_3 then
      if A3_3 then
        L10_3 = A3_3.quality
        if L10_3 then
          goto lbl_137
        end
      end
      L10_3 = {}
      L10_3.quality = 100
      A3_3 = L10_3
      ::lbl_137::
      L5_3.unique = true
    end
    L10_3 = L5_3.weight
    L10_3 = L10_3 * L6_3
    L10_3 = L4_3 + L10_3
    L11_3 = QS
    L11_3 = L11_3.Config
    L11_3 = L11_3.Player
    L11_3 = L11_3.MaxWeight
    if L10_3 <= L11_3 then
      if nil ~= L7_3 then
        L10_3 = L1_2.PlayerData
        L10_3 = L10_3.items
        L10_3 = L10_3[L7_3]
        if nil ~= L10_3 then
          L10_3 = L1_2.PlayerData
          L10_3 = L10_3.items
          L10_3 = L10_3[L7_3]
          L10_3 = L10_3.name
          L11_3 = L10_3
          L10_3 = L10_3.lower
          L10_3 = L10_3(L11_3)
          L12_3 = A0_3
          L11_3 = A0_3.lower
          L11_3 = L11_3(L12_3)
          if L10_3 == L11_3 then
            L10_3 = L5_3.type
            if "item" == L10_3 then
              L10_3 = L5_3.unique
              if not L10_3 then
                L10_3 = QSConfig
                L10_3 = L10_3.Player
                L10_3 = L10_3.MaxInvSlots
                if L7_3 < L10_3 then
                  L10_3 = L1_2.PlayerData
                  L10_3 = L10_3.items
                  L10_3 = L10_3[L7_3]
                  L11_3 = L1_2.PlayerData
                  L11_3 = L11_3.items
                  L11_3 = L11_3[L7_3]
                  L11_3 = L11_3.amount
                  L11_3 = L11_3 + L6_3
                  L10_3.amount = L11_3
                  L10_3 = L1_2.UpdatePlayerData
                  L10_3()
                  L10_3 = TriggerEvent
                  L11_3 = "inventory:server:addItem:log"
                  L12_3 = L1_2.PlayerData
                  L12_3 = L12_3.source
                  L13_3 = A0_3
                  L14_3 = L6_3
                  L10_3(L11_3, L12_3, L13_3, L14_3)
                  L10_3 = TriggerEvent
                  L11_3 = QSConfig
                  L11_3 = L11_3.onAddInventoryItem
                  L12_3 = L1_2.PlayerData
                  L12_3 = L12_3.source
                  L13_3 = A0_3
                  L14_3 = L6_3
                  L10_3(L11_3, L12_3, L13_3, L14_3)
                  L10_3 = UpdateCashOrBlackMoney
                  L12_3 = A0_3
                  L11_3 = A0_3.lower
                  L11_3 = L11_3(L12_3)
                  L12_3 = L1_2.PlayerData
                  L12_3 = L12_3.source
                  L10_3(L11_3, L12_3)
                  L10_3 = true
                  return L10_3
                end
            end
          end
        end
      end
      else
        L10_3 = L5_3.unique
        if L10_3 or not L7_3 then
          if nil == L7_3 then
            L10_3 = L5_3.unique
            if not L10_3 and L7_3 and nil ~= L7_3 then
              L10_3 = L5_3.type
              if "weapon" ~= L10_3 then
                L10_3 = L8_3
                L11_3 = A0_3
                L10_3 = L10_3(L11_3)
                if not L10_3 then
                  goto lbl_435
                end
              end
            end
            L10_3 = 1
            L11_3 = QS
            L11_3 = L11_3.Config
            L11_3 = L11_3.Player
            L11_3 = L11_3.MaxInvSlots
            L12_3 = 1
            for L13_3 = L10_3, L11_3, L12_3 do
              L14_3 = L1_2.PlayerData
              L14_3 = L14_3.items
              L14_3 = L14_3[L13_3]
              if nil == L14_3 then
                L14_3 = QSConfig
                L14_3 = L14_3.Player
                L14_3 = L14_3.MaxInvSlots
                if L13_3 < L14_3 then
                  L14_3 = L1_2.PlayerData
                  L14_3 = L14_3.items
                  L15_3 = {}
                  L16_3 = L5_3.name
                  L15_3.name = L16_3
                  L15_3.amount = L6_3
                  L16_3 = A3_3 or L16_3
                  if nil == A3_3 or not A3_3 then
                    L16_3 = ""
                  end
                  L15_3.info = L16_3
                  if A3_3 then
                    L16_3 = A3_3.label
                    if L16_3 then
                      goto lbl_366
                    end
                  end
                  L16_3 = L5_3.label
                  ::lbl_366::
                  L15_3.label = L16_3
                  if A3_3 then
                    L16_3 = A3_3.description
                    if L16_3 then
                      goto lbl_379
                    end
                  end
                  L16_3 = L5_3.description
                  if nil ~= L16_3 then
                    L16_3 = L5_3.description
                    if L16_3 then
                      goto lbl_379
                    end
                  end
                  L16_3 = ""
                  ::lbl_379::
                  L15_3.description = L16_3
                  L16_3 = L5_3.weight
                  L15_3.weight = L16_3
                  L16_3 = L5_3.type
                  L15_3.type = L16_3
                  L16_3 = L5_3.unique
                  L15_3.unique = L16_3
                  L16_3 = L5_3.useable
                  L15_3.useable = L16_3
                  if A3_3 then
                    L16_3 = A3_3.image
                    if L16_3 then
                      L16_3 = A3_3.image
                      if A0_3 == L16_3 then
                        L16_3 = A3_3.image
                        L17_3 = ".png"
                        L16_3 = L16_3 .. L17_3
                        if L16_3 then
                          goto lbl_402
                        end
                      end
                    end
                  end
                  L16_3 = L5_3.image
                  ::lbl_402::
                  L15_3.image = L16_3
                  L16_3 = L5_3.shouldClose
                  L15_3.shouldClose = L16_3
                  L15_3.slot = L13_3
                  L16_3 = L5_3.combinable
                  L15_3.combinable = L16_3
                  L14_3[L13_3] = L15_3
                  L14_3 = L1_2.UpdatePlayerData
                  L14_3()
                  L14_3 = TriggerEvent
                  L15_3 = "inventory:server:addItem:log"
                  L16_3 = L1_2.PlayerData
                  L16_3 = L16_3.source
                  L17_3 = A0_3
                  L18_3 = L6_3
                  L14_3(L15_3, L16_3, L17_3, L18_3)
                  L14_3 = TriggerEvent
                  L15_3 = QSConfig
                  L15_3 = L15_3.onAddInventoryItem
                  L16_3 = L1_2.PlayerData
                  L16_3 = L16_3.source
                  L17_3 = A0_3
                  L18_3 = L6_3
                  L14_3(L15_3, L16_3, L17_3, L18_3)
                  L14_3 = UpdateCashOrBlackMoney
                  L16_3 = A0_3
                  L15_3 = A0_3.lower
                  L15_3 = L15_3(L16_3)
                  L16_3 = L1_2.PlayerData
                  L16_3 = L16_3.source
                  L14_3(L15_3, L16_3)
                  L14_3 = true
                  return L14_3
                end
              end
            end
          end
          L10_3 = L1_2.PlayerData
          L10_3 = L10_3.items
          L10_3 = L10_3[L7_3]
          if nil ~= L10_3 then
            L10_3 = L5_3.unique
            if not L10_3 and L7_3 and nil ~= L7_3 then
              L10_3 = L5_3.type
              if "weapon" ~= L10_3 then
                L10_3 = L8_3
                L11_3 = A0_3
                L10_3 = L10_3(L11_3)
                if not L10_3 then
                  goto lbl_435
                end
              end
            end
            L10_3 = 1
            L11_3 = QS
            L11_3 = L11_3.Config
            L11_3 = L11_3.Player
            L11_3 = L11_3.MaxInvSlots
            L12_3 = 1
            for L13_3 = L10_3, L11_3, L12_3 do
              L14_3 = L1_2.PlayerData
              L14_3 = L14_3.items
              L14_3 = L14_3[L13_3]
              if nil == L14_3 then
                L14_3 = QSConfig
                L14_3 = L14_3.Player
                L14_3 = L14_3.MaxInvSlots
                if L13_3 < L14_3 then
                  L14_3 = L1_2.PlayerData
                  L14_3 = L14_3.items
                  L15_3 = {}
                  L16_3 = L5_3.name
                  L15_3.name = L16_3
                  L15_3.amount = L6_3
                  L16_3 = A3_3 or L16_3
                  if nil == A3_3 or not A3_3 then
                    L16_3 = ""
                  end
                  L15_3.info = L16_3
                  if A3_3 then
                    L16_3 = A3_3.label
                    if L16_3 then
                      goto lbl_366
                    end
                  end
                  L16_3 = L5_3.label
                  ::lbl_366::
                  L15_3.label = L16_3
                  if A3_3 then
                    L16_3 = A3_3.description
                    if L16_3 then
                      goto lbl_379
                    end
                  end
                  L16_3 = L5_3.description
                  if nil ~= L16_3 then
                    L16_3 = L5_3.description
                    if L16_3 then
                      goto lbl_379
                    end
                  end
                  L16_3 = ""
                  ::lbl_379::
                  L15_3.description = L16_3
                  L16_3 = L5_3.weight
                  L15_3.weight = L16_3
                  L16_3 = L5_3.type
                  L15_3.type = L16_3
                  L16_3 = L5_3.unique
                  L15_3.unique = L16_3
                  L16_3 = L5_3.useable
                  L15_3.useable = L16_3
                  if A3_3 then
                    L16_3 = A3_3.image
                    if L16_3 then
                      L16_3 = A3_3.image
                      if A0_3 == L16_3 then
                        L16_3 = A3_3.image
                        L17_3 = ".png"
                        L16_3 = L16_3 .. L17_3
                        if L16_3 then
                          goto lbl_402
                        end
                      end
                    end
                  end
                  L16_3 = L5_3.image
                  ::lbl_402::
                  L15_3.image = L16_3
                  L16_3 = L5_3.shouldClose
                  L15_3.shouldClose = L16_3
                  L15_3.slot = L13_3
                  L16_3 = L5_3.combinable
                  L15_3.combinable = L16_3
                  L14_3[L13_3] = L15_3
                  L14_3 = L1_2.UpdatePlayerData
                  L14_3()
                  L14_3 = TriggerEvent
                  L15_3 = "inventory:server:addItem:log"
                  L16_3 = L1_2.PlayerData
                  L16_3 = L16_3.source
                  L17_3 = A0_3
                  L18_3 = L6_3
                  L14_3(L15_3, L16_3, L17_3, L18_3)
                  L14_3 = TriggerEvent
                  L15_3 = QSConfig
                  L15_3 = L15_3.onAddInventoryItem
                  L16_3 = L1_2.PlayerData
                  L16_3 = L16_3.source
                  L17_3 = A0_3
                  L18_3 = L6_3
                  L14_3(L15_3, L16_3, L17_3, L18_3)
                  L14_3 = UpdateCashOrBlackMoney
                  L16_3 = A0_3
                  L15_3 = A0_3.lower
                  L15_3 = L15_3(L16_3)
                  L16_3 = L1_2.PlayerData
                  L16_3 = L16_3.source
                  L14_3(L15_3, L16_3)
                  L14_3 = true
                  return L14_3
                end
              end
            end
          end
        end
        L10_3 = QSConfig
        L10_3 = L10_3.Player
        L10_3 = L10_3.MaxInvSlots
        if L7_3 < L10_3 then
          L10_3 = L1_2.PlayerData
          L10_3 = L10_3.items
          L11_3 = {}
          L12_3 = L5_3.name
          L11_3.name = L12_3
          L11_3.amount = L6_3
          L12_3 = A3_3 or L12_3
          if nil == A3_3 or not A3_3 then
            L12_3 = ""
          end
          L11_3.info = L12_3
          if A3_3 then
            L12_3 = A3_3.label
            if L12_3 then
              goto lbl_249
            end
          end
          L12_3 = L5_3.label
          ::lbl_249::
          L11_3.label = L12_3
          if A3_3 then
            L12_3 = A3_3.description
            if L12_3 then
              goto lbl_262
            end
          end
          L12_3 = L5_3.description
          if nil ~= L12_3 then
            L12_3 = L5_3.description
            if L12_3 then
              goto lbl_262
            end
          end
          L12_3 = ""
          ::lbl_262::
          L11_3.description = L12_3
          L12_3 = L5_3.weight
          L11_3.weight = L12_3
          L12_3 = L5_3.type
          L11_3.type = L12_3
          L12_3 = L5_3.unique
          L11_3.unique = L12_3
          L12_3 = L5_3.useable
          L11_3.useable = L12_3
          if A3_3 then
            L12_3 = A3_3.image
            if L12_3 then
              L12_3 = A3_3.image
              L13_3 = ".png"
              L12_3 = L12_3 .. L13_3
              if L12_3 then
                goto lbl_282
              end
            end
          end
          L12_3 = L5_3.image
          ::lbl_282::
          L11_3.image = L12_3
          L12_3 = L5_3.shouldClose
          L11_3.shouldClose = L12_3
          L11_3.slot = L7_3
          L12_3 = L5_3.combinable
          L11_3.combinable = L12_3
          L10_3[L7_3] = L11_3
          L10_3 = L1_2.UpdatePlayerData
          L10_3()
          L10_3 = TriggerEvent
          L11_3 = "inventory:server:addItem:log"
          L12_3 = L1_2.PlayerData
          L12_3 = L12_3.source
          L13_3 = A0_3
          L14_3 = L6_3
          L10_3(L11_3, L12_3, L13_3, L14_3)
          L10_3 = TriggerEvent
          L11_3 = QSConfig
          L11_3 = L11_3.onAddInventoryItem
          L12_3 = L1_2.PlayerData
          L12_3 = L12_3.source
          L13_3 = A0_3
          L14_3 = L6_3
          L10_3(L11_3, L12_3, L13_3, L14_3)
          L10_3 = UpdateCashOrBlackMoney
          L12_3 = A0_3
          L11_3 = A0_3.lower
          L11_3 = L11_3(L12_3)
          L12_3 = L1_2.PlayerData
          L12_3 = L12_3.source
          L10_3(L11_3, L12_3)
          L10_3 = true
          do return L10_3 end
          goto lbl_435
        end
      end
    end
    ::lbl_435::
    L10_3 = false
    return L10_3
  end
  L1_2.addItem = L2_2
  function L2_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L4_3 = QS
    L4_3 = L4_3.GetTotalWeight
    L5_3 = L1_2.PlayerData
    L5_3 = L5_3.items
    L4_3 = L4_3(L5_3)
    L5_3 = QS
    L5_3 = L5_3.Shared
    L5_3 = L5_3.Items
    L7_3 = A0_3
    L6_3 = A0_3.lower
    L6_3 = L6_3(L7_3)
    L5_3 = L5_3[L6_3]
    if nil == L5_3 then
      return
    end
    L6_3 = tonumber
    L7_3 = A1_3
    L6_3 = L6_3(L7_3)
    L7_3 = tonumber
    L8_3 = A2_3
    L7_3 = L7_3(L8_3)
    if nil ~= L7_3 then
      L7_3 = tonumber
      L8_3 = A2_3
      L7_3 = L7_3(L8_3)
      if L7_3 then
        goto lbl_34
      end
    end
    L7_3 = QS
    L7_3 = L7_3.GetFirstSlotByItem
    L8_3 = L1_2.PlayerData
    L8_3 = L8_3.items
    L9_3 = A0_3
    L7_3 = L7_3(L8_3, L9_3)
    ::lbl_34::
    L8_3 = L5_3.type
    if "weapon" == L8_3 and nil == A3_3 then
      L8_3 = {}
      L9_3 = tostring
      L10_3 = QS
      L10_3 = L10_3.Shared
      L10_3 = L10_3.RandomInt
      L11_3 = 2
      L10_3 = L10_3(L11_3)
      L11_3 = QS
      L11_3 = L11_3.Shared
      L11_3 = L11_3.RandomStr
      L12_3 = 3
      L11_3 = L11_3(L12_3)
      L12_3 = QS
      L12_3 = L12_3.Shared
      L12_3 = L12_3.RandomInt
      L13_3 = 1
      L12_3 = L12_3(L13_3)
      L13_3 = QS
      L13_3 = L13_3.Shared
      L13_3 = L13_3.RandomStr
      L14_3 = 2
      L13_3 = L13_3(L14_3)
      L14_3 = QS
      L14_3 = L14_3.Shared
      L14_3 = L14_3.RandomInt
      L15_3 = 3
      L14_3 = L14_3(L15_3)
      L15_3 = QS
      L15_3 = L15_3.Shared
      L15_3 = L15_3.RandomStr
      L16_3 = 4
      L15_3 = L15_3(L16_3)
      L10_3 = L10_3 .. L11_3 .. L12_3 .. L13_3 .. L14_3 .. L15_3
      L9_3 = L9_3(L10_3)
      L8_3.serie = L9_3
      A3_3 = L8_3
    end
    L8_3 = L5_3.weight
    L8_3 = L8_3 * L6_3
    L8_3 = L4_3 + L8_3
    L9_3 = QS
    L9_3 = L9_3.Config
    L9_3 = L9_3.Player
    L9_3 = L9_3.MaxWeight
    if L8_3 <= L9_3 then
      if nil ~= L7_3 then
        L8_3 = L1_2.PlayerData
        L8_3 = L8_3.items
        L8_3 = L8_3[L7_3]
        if nil ~= L8_3 then
          L8_3 = L1_2.PlayerData
          L8_3 = L8_3.items
          L8_3 = L8_3[L7_3]
          L8_3 = L8_3.name
          L9_3 = L8_3
          L8_3 = L8_3.lower
          L8_3 = L8_3(L9_3)
          L10_3 = A0_3
          L9_3 = A0_3.lower
          L9_3 = L9_3(L10_3)
          if L8_3 == L9_3 then
            L8_3 = L5_3.type
            if "item" == L8_3 then
              L8_3 = L5_3.unique
              if not L8_3 then
                L8_3 = QSConfig
                L8_3 = L8_3.Player
                L8_3 = L8_3.MaxInvSlots
                if L7_3 < L8_3 then
                  L8_3 = true
                  return L8_3
                end
            end
          end
        end
      end
      else
        L8_3 = L5_3.unique
        if L8_3 or not L7_3 then
          if nil == L7_3 then
            L8_3 = L5_3.unique
            if not L8_3 and L7_3 and nil ~= L7_3 then
              L8_3 = L5_3.type
              if "weapon" ~= L8_3 then
                goto lbl_168
              end
            end
            L8_3 = 1
            L9_3 = QS
            L9_3 = L9_3.Config
            L9_3 = L9_3.Player
            L9_3 = L9_3.MaxInvSlots
            L10_3 = 1
            for L11_3 = L8_3, L9_3, L10_3 do
              L12_3 = L1_2.PlayerData
              L12_3 = L12_3.items
              L12_3 = L12_3[L11_3]
              if nil == L12_3 then
                L12_3 = QSConfig
                L12_3 = L12_3.Player
                L12_3 = L12_3.MaxInvSlots
                if L11_3 < L12_3 then
                  L12_3 = true
                  return L12_3
                end
              end
            end
          end
          L8_3 = L1_2.PlayerData
          L8_3 = L8_3.items
          L8_3 = L8_3[L7_3]
          if nil ~= L8_3 then
            L8_3 = L5_3.unique
            if not L8_3 and L7_3 and nil ~= L7_3 then
              L8_3 = L5_3.type
              if "weapon" ~= L8_3 then
                goto lbl_168
              end
            end
            L8_3 = 1
            L9_3 = QS
            L9_3 = L9_3.Config
            L9_3 = L9_3.Player
            L9_3 = L9_3.MaxInvSlots
            L10_3 = 1
            for L11_3 = L8_3, L9_3, L10_3 do
              L12_3 = L1_2.PlayerData
              L12_3 = L12_3.items
              L12_3 = L12_3[L11_3]
              if nil == L12_3 then
                L12_3 = QSConfig
                L12_3 = L12_3.Player
                L12_3 = L12_3.MaxInvSlots
                if L11_3 < L12_3 then
                  L12_3 = true
                  return L12_3
                end
              end
            end
          end
        end
        L8_3 = QSConfig
        L8_3 = L8_3.Player
        L8_3 = L8_3.MaxInvSlots
        if L7_3 < L8_3 then
          L8_3 = true
          do return L8_3 end
          goto lbl_168
        end
      end
    end
    ::lbl_168::
    L8_3 = false
    return L8_3
  end
  L1_2.CanCarry = L2_2
  function L2_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    L3_3 = QS
    L3_3 = L3_3.Shared
    L3_3 = L3_3.Items
    L5_3 = A0_3
    L4_3 = A0_3.lower
    L4_3 = L4_3(L5_3)
    L3_3 = L3_3[L4_3]
    L4_3 = tonumber
    L5_3 = A1_3
    L4_3 = L4_3(L5_3)
    L5_3 = tonumber
    L6_3 = A2_3
    L5_3 = L5_3(L6_3)
    if nil ~= L5_3 then
      L6_3 = L1_2.PlayerData
      L6_3 = L6_3.items
      L6_3 = L6_3[L5_3]
      L6_3 = L6_3.amount
      if L4_3 < L6_3 then
        L6_3 = L1_2.PlayerData
        L6_3 = L6_3.items
        L6_3 = L6_3[L5_3]
        L7_3 = L1_2.PlayerData
        L7_3 = L7_3.items
        L7_3 = L7_3[L5_3]
        L7_3 = L7_3.amount
        L7_3 = L7_3 - L4_3
        L6_3.amount = L7_3
        L6_3 = L1_2.UpdatePlayerData
        L6_3()
        L6_3 = TriggerEvent
        L7_3 = "inventory:server:removeItem:log"
        L8_3 = L1_2.PlayerData
        L8_3 = L8_3.source
        L9_3 = A0_3
        L10_3 = L4_3
        L6_3(L7_3, L8_3, L9_3, L10_3)
        L6_3 = TriggerEvent
        L7_3 = QSConfig
        L7_3 = L7_3.onRemoveInventoryItem
        L8_3 = L1_2.PlayerData
        L8_3 = L8_3.source
        L9_3 = A0_3
        L10_3 = L4_3
        L6_3(L7_3, L8_3, L9_3, L10_3)
        L6_3 = UpdateCashOrBlackMoney
        L8_3 = A0_3
        L7_3 = A0_3.lower
        L7_3 = L7_3(L8_3)
        L8_3 = L1_2.PlayerData
        L8_3 = L8_3.source
        L6_3(L7_3, L8_3)
        L6_3 = true
        return L6_3
      else
        L6_3 = L1_2.PlayerData
        L6_3 = L6_3.items
        L6_3 = L6_3[L5_3]
        L6_3 = L6_3.amount
        if L6_3 == L4_3 then
          L6_3 = L1_2.PlayerData
          L6_3 = L6_3.items
          L6_3[L5_3] = nil
          L6_3 = L1_2.UpdatePlayerData
          L6_3()
          L6_3 = TriggerEvent
          L7_3 = "inventory:server:removeItem:log"
          L8_3 = L1_2.PlayerData
          L8_3 = L8_3.source
          L9_3 = A0_3
          L10_3 = L4_3
          L6_3(L7_3, L8_3, L9_3, L10_3)
          L6_3 = TriggerEvent
          L7_3 = QSConfig
          L7_3 = L7_3.onRemoveInventoryItem
          L8_3 = L1_2.PlayerData
          L8_3 = L8_3.source
          L9_3 = A0_3
          L10_3 = L4_3
          L6_3(L7_3, L8_3, L9_3, L10_3)
          L6_3 = UpdateCashOrBlackMoney
          L8_3 = A0_3
          L7_3 = A0_3.lower
          L7_3 = L7_3(L8_3)
          L8_3 = L1_2.PlayerData
          L8_3 = L8_3.source
          L6_3(L7_3, L8_3)
          L6_3 = true
          return L6_3
        end
      end
    else
      L6_3 = QS
      L6_3 = L6_3.GetSlotsByItem
      L7_3 = L1_2.PlayerData
      L7_3 = L7_3.items
      L8_3 = A0_3
      L6_3 = L6_3(L7_3, L8_3)
      L7_3 = L4_3
      if nil ~= L6_3 then
        L8_3 = pairs
        L9_3 = L6_3
        L8_3, L9_3, L10_3, L11_3 = L8_3(L9_3)
        for L12_3, L13_3 in L8_3, L9_3, L10_3, L11_3 do
          if L7_3 > 0 then
            L14_3 = L1_2.PlayerData
            L14_3 = L14_3.items
            L14_3 = L14_3[L13_3]
            L14_3 = L14_3.amount
            if L7_3 < L14_3 then
              L14_3 = L1_2.PlayerData
              L14_3 = L14_3.items
              L14_3 = L14_3[L13_3]
              L15_3 = L1_2.PlayerData
              L15_3 = L15_3.items
              L15_3 = L15_3[L13_3]
              L15_3 = L15_3.amount
              L15_3 = L15_3 - L7_3
              L14_3.amount = L15_3
              L14_3 = L1_2.UpdatePlayerData
              L14_3()
              L14_3 = TriggerEvent
              L15_3 = "inventory:server:removeItem:log"
              L16_3 = L1_2.PlayerData
              L16_3 = L16_3.source
              L17_3 = A0_3
              L18_3 = L4_3
              L14_3(L15_3, L16_3, L17_3, L18_3)
              L14_3 = TriggerEvent
              L15_3 = QSConfig
              L15_3 = L15_3.onRemoveInventoryItem
              L16_3 = L1_2.PlayerData
              L16_3 = L16_3.source
              L17_3 = A0_3
              L18_3 = L4_3
              L14_3(L15_3, L16_3, L17_3, L18_3)
              L7_3 = 0
              L14_3 = UpdateCashOrBlackMoney
              L16_3 = A0_3
              L15_3 = A0_3.lower
              L15_3 = L15_3(L16_3)
              L16_3 = L1_2.PlayerData
              L16_3 = L16_3.source
              L14_3(L15_3, L16_3)
              L14_3 = true
              return L14_3
            else
              L14_3 = L1_2.PlayerData
              L14_3 = L14_3.items
              L14_3 = L14_3[L13_3]
              L14_3 = L14_3.amount
              if L14_3 == L7_3 then
                L14_3 = L1_2.PlayerData
                L14_3 = L14_3.items
                L14_3[L13_3] = nil
                L14_3 = L1_2.UpdatePlayerData
                L14_3()
                L14_3 = TriggerEvent
                L15_3 = "inventory:server:removeItem:log"
                L16_3 = L1_2.PlayerData
                L16_3 = L16_3.source
                L17_3 = A0_3
                L18_3 = L4_3
                L14_3(L15_3, L16_3, L17_3, L18_3)
                L14_3 = TriggerEvent
                L15_3 = QSConfig
                L15_3 = L15_3.onRemoveInventoryItem
                L16_3 = L1_2.PlayerData
                L16_3 = L16_3.source
                L17_3 = A0_3
                L18_3 = L4_3
                L14_3(L15_3, L16_3, L17_3, L18_3)
                L7_3 = 0
                L14_3 = UpdateCashOrBlackMoney
                L16_3 = A0_3
                L15_3 = A0_3.lower
                L15_3 = L15_3(L16_3)
                L16_3 = L1_2.PlayerData
                L16_3 = L16_3.source
                L14_3(L15_3, L16_3)
                L14_3 = true
                return L14_3
              else
                L14_3 = L1_2.PlayerData
                L14_3 = L14_3.items
                L14_3 = L14_3[L13_3]
                L14_3 = L14_3.amount
                if L7_3 > L14_3 then
                  L14_3 = tonumber
                  L15_3 = L1_2.PlayerData
                  L15_3 = L15_3.items
                  L15_3 = L15_3[L13_3]
                  L15_3 = L15_3.amount
                  L14_3 = L14_3(L15_3)
                  L7_3 = L7_3 - L14_3
                  L14_3 = L1_2.PlayerData
                  L14_3 = L14_3.items
                  L14_3[L13_3] = nil
                  L14_3 = L1_2.UpdatePlayerData
                  L14_3()
                  L14_3 = TriggerEvent
                  L15_3 = "inventory:server:removeItem:log"
                  L16_3 = L1_2.PlayerData
                  L16_3 = L16_3.source
                  L17_3 = A0_3
                  L18_3 = L4_3
                  L14_3(L15_3, L16_3, L17_3, L18_3)
                  L14_3 = TriggerEvent
                  L15_3 = QSConfig
                  L15_3 = L15_3.onRemoveInventoryItem
                  L16_3 = L1_2.PlayerData
                  L16_3 = L16_3.source
                  L17_3 = A0_3
                  L18_3 = L4_3
                  L14_3(L15_3, L16_3, L17_3, L18_3)
                end
              end
            end
          end
        end
        if 0 == L7_3 then
          L8_3 = UpdateCashOrBlackMoney
          L10_3 = A0_3
          L9_3 = A0_3.lower
          L9_3 = L9_3(L10_3)
          L10_3 = L1_2.PlayerData
          L10_3 = L10_3.source
          L8_3(L9_3, L10_3)
          L8_3 = true
          return L8_3
        end
      end
    end
    L6_3 = false
    return L6_3
  end
  L1_2.removeItem = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_3 = L1_2.PlayerData
    L1_3.items = A0_3
    L1_3 = L1_2.UpdatePlayerData
    L1_3()
  end
  L1_2.SetInventory = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_3 = L1_2.PlayerData
    L1_3.items = A0_3
  end
  L1_2.SetInventoryWithoutUpdatePlayerData = L2_2
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L1_2.PlayerData
    L0_3 = L0_3.items
    L1_3 = 1
    L2_3 = QS
    L2_3 = L2_3.Config
    L2_3 = L2_3.Player
    L2_3 = L2_3.MaxInvSlots
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = L0_3[L4_3]
      if nil ~= L5_3 then
        L5_3 = L0_3[L4_3]
        if L5_3 then
          L6_3 = L0_3[L4_3]
          L7_3 = L0_3[L4_3]
          L7_3 = L7_3.amount
          L6_3.count = L7_3
        end
      end
    end
    return L0_3
  end
  L1_2.GetInventory = L2_2
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = 1
    L1_3 = QS
    L1_3 = L1_3.Config
    L1_3 = L1_3.Player
    L1_3 = L1_3.MaxInvSlots
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L1_2.PlayerData
      L4_3 = L4_3.items
      L4_3 = L4_3[L3_3]
      if nil ~= L4_3 then
        L4_3 = L1_2.PlayerData
        L4_3 = L4_3.items
        L4_3 = L4_3[L3_3]
        if L4_3 then
          L5_3 = L4_3.name
          if "cash" ~= L5_3 then
            L5_3 = L4_3.name
            if "black_money" ~= L5_3 then
              L5_3 = L1_2.PlayerData
              L5_3 = L5_3.items
              L5_3[L3_3] = nil
            end
          end
        end
      end
    end
    L0_3 = L1_2.UpdatePlayerData
    L0_3()
    L0_3 = TriggerClientEvent
    L1_3 = "inventory:ClearWeapons"
    L2_3 = L1_2.PlayerData
    L2_3 = L2_3.source
    L0_3(L1_3, L2_3)
  end
  L1_2.ClearInventory = L2_2
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = 1
    L1_3 = QS
    L1_3 = L1_3.Config
    L1_3 = L1_3.Player
    L1_3 = L1_3.MaxInvSlots
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L1_2.PlayerData
      L4_3 = L4_3.items
      L4_3 = L4_3[L3_3]
      if nil ~= L4_3 then
        L4_3 = L1_2.PlayerData
        L4_3 = L4_3.items
        L4_3 = L4_3[L3_3]
        if L4_3 then
          L5_3 = L4_3.type
          if "item" == L5_3 then
            L5_3 = L4_3.name
            if "cash" ~= L5_3 then
              L5_3 = L4_3.name
              if "black_money" ~= L5_3 then
                L5_3 = L1_2.PlayerData
                L5_3 = L5_3.items
                L5_3[L3_3] = nil
              end
            end
          end
        end
      end
    end
    L0_3 = L1_2.UpdatePlayerData
    L0_3()
  end
  L1_2.ClearInventoryItems = L2_2
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = 1
    L1_3 = QS
    L1_3 = L1_3.Config
    L1_3 = L1_3.Player
    L1_3 = L1_3.MaxInvSlots
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L1_2.PlayerData
      L4_3 = L4_3.items
      L4_3 = L4_3[L3_3]
      if nil ~= L4_3 then
        L4_3 = L1_2.PlayerData
        L4_3 = L4_3.items
        L4_3 = L4_3[L3_3]
        if L4_3 then
          L5_3 = L4_3.type
          if "weapon" == L5_3 then
            L5_3 = L1_2.PlayerData
            L5_3 = L5_3.items
            L5_3[L3_3] = nil
          end
        end
      end
    end
    L0_3 = L1_2.UpdatePlayerData
    L0_3()
    L0_3 = TriggerClientEvent
    L1_3 = "inventory:ClearWeapons"
    L2_3 = L1_2.PlayerData
    L2_3 = L2_3.source
    L0_3(L1_3, L2_3)
  end
  L1_2.ClearInventoryWeapons = L2_2
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = tostring
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L2_3 = L1_3
    L1_3 = L1_3.lower
    L1_3 = L1_3(L2_3)
    L2_3 = QS
    L2_3 = L2_3.GetFirstSlotByItem
    L3_3 = L1_2.PlayerData
    L3_3 = L3_3.items
    L4_3 = L1_3
    L2_3 = L2_3(L3_3, L4_3)
    if nil ~= L2_3 then
      L3_3 = L1_2.PlayerData
      L3_3 = L3_3.items
      L3_3 = L3_3[L2_3]
      return L3_3
    end
    L3_3 = nil
    return L3_3
  end
  L1_2.GetItemByName = L2_2
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = tostring
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L2_3 = L1_3
    L1_3 = L1_3.lower
    L1_3 = L1_3(L2_3)
    L2_3 = QS
    L2_3 = L2_3.GetAmmountByItem
    L3_3 = L1_2.PlayerData
    L3_3 = L3_3.items
    L4_3 = L1_3
    L2_3 = L2_3(L3_3, L4_3)
    return L2_3
  end
  L1_2.GetItemByNameX = L2_2
  function L2_2(A0_3)
    local L1_3, L2_3
    L1_3 = tonumber
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L2_3 = L1_2.PlayerData
    L2_3 = L2_3.items
    L2_3 = L2_3[L1_3]
    if nil ~= L2_3 then
      L2_3 = L1_2.PlayerData
      L2_3 = L2_3.items
      L2_3 = L2_3[L1_3]
      return L2_3
    end
    L2_3 = nil
    return L2_3
  end
  L1_2.GetItemBySlot = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = QS
    L0_3 = L0_3.Save
    L1_3 = L1_2.PlayerData
    L1_3 = L1_3.source
    L0_3(L1_3)
  end
  L1_2.Save = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = QS
    L0_3 = L0_3.SavePlayerDropped
    L1_3 = L1_2.PlayerData
    L1_3 = L1_3.source
    L0_3(L1_3)
  end
  L1_2.SavePlayerDropped = L2_2
  L2_2 = QS
  L2_2 = L2_2.Players
  L3_2 = L1_2.PlayerData
  L3_2 = L3_2.source
  L2_2[L3_2] = L1_2
  L2_2 = QS
  L2_2 = L2_2.Save
  L3_2 = L1_2.PlayerData
  L3_2 = L3_2.source
  L2_2(L3_2)
  L2_2 = L1_2.UpdatePlayerData
  L2_2()
end
L0_1.CreatePlayer = L1_1
L0_1 = QSConfig
L0_1 = L0_1.Multicharacter
if L0_1 then
  L0_1 = QS
  function L1_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2
    L1_2 = ESX
    L1_2 = L1_2.GetPlayerFromId
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L2_2 = QS
    L2_2 = L2_2.Players
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.PlayerData
    if nil ~= L2_2 then
      L3_2 = QS
      L3_2 = L3_2.SaveInventory
      L4_2 = A0_2
      L3_2(L4_2)
    end
  end
  L0_1.Save = L1_1
else
  L0_1 = QS
  function L1_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2
    if not A1_2 then
      L2_2 = QS
      L2_2 = L2_2.Players
      L2_2 = L2_2[A0_2]
      L2_2 = L2_2.PlayerData
      if nil ~= L2_2 then
        L3_2 = QS
        L3_2 = L3_2.SaveInventory
        L4_2 = A0_2
        L3_2(L4_2)
      end
    else
      L2_2 = QS
      L2_2 = L2_2.Players
      L2_2 = L2_2[A0_2]
      L2_2 = L2_2.PlayerData
      if nil ~= L2_2 then
        L3_2 = QS
        L3_2 = L3_2.SaveInventory
        L4_2 = A0_2
        L5_2 = A1_2
        L3_2(L4_2, L5_2)
      end
    end
  end
  L0_1.Save = L1_1
end
L0_1 = QSConfig
L0_1 = L0_1.Multicharacter
if L0_1 then
  L0_1 = QS
  function L1_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
    L1_2 = ESX
    L1_2 = L1_2.GetPlayerFromId
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L2_2 = QS
    L2_2 = L2_2.Players
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.PlayerData
    if nil ~= L2_2 then
      L3_2 = QS
      L3_2 = L3_2.FetchSql
      L4_2 = true
      L5_2 = "SELECT * FROM `users` WHERE `identifier` = '"
      L6_2 = L1_2.identifier
      L7_2 = "'"
      L5_2 = L5_2 .. L6_2 .. L7_2
      function L6_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
        L1_3 = A0_3[1]
        if nil == L1_3 then
          L1_3 = QS
          L1_3 = L1_3.ExecuteSql
          L2_3 = true
          L3_3 = "INSERT INTO `users` (`identifier`, `metadata`) VALUES ('"
          L4_3 = L1_2.identifier
          L5_3 = "', '"
          L6_3 = json
          L6_3 = L6_3.encode
          L7_3 = L2_2.metadata
          L6_3 = L6_3(L7_3)
          L7_3 = "')"
          L3_3 = L3_3 .. L4_3 .. L5_3 .. L6_3 .. L7_3
          L1_3(L2_3, L3_3)
        else
          L1_3 = QS
          L1_3 = L1_3.ExecuteSql
          L2_3 = true
          L3_3 = "UPDATE `users` SET metadata='"
          L4_3 = json
          L4_3 = L4_3.encode
          L5_3 = L2_2.metadata
          L4_3 = L4_3(L5_3)
          L5_3 = "' WHERE `identifier` = '"
          L6_3 = L1_2.identifier
          L7_3 = "'"
          L3_3 = L3_3 .. L4_3 .. L5_3 .. L6_3 .. L7_3
          L1_3(L2_3, L3_3)
        end
        L1_3 = QS
        L1_3 = L1_3.SaveInventory
        L2_3 = A0_2
        L1_3(L2_3)
      end
      L3_2(L4_2, L5_2, L6_2)
    end
  end
  L0_1.SavePlayerDropped = L1_1
else
  L0_1 = QS
  function L1_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
    if not A1_2 then
      L2_2 = QS
      L2_2 = L2_2.Players
      L2_2 = L2_2[A0_2]
      L2_2 = L2_2.PlayerData
      if nil ~= L2_2 then
        L3_2 = QS
        L3_2 = L3_2.FetchSql
        L4_2 = true
        L5_2 = "SELECT * FROM `users` WHERE `identifier` = '"
        L6_2 = L2_2.identifier
        L7_2 = "'"
        L5_2 = L5_2 .. L6_2 .. L7_2
        function L6_2(A0_3)
          local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
          L1_3 = A0_3[1]
          if nil == L1_3 then
            L1_3 = QS
            L1_3 = L1_3.ExecuteSql
            L2_3 = true
            L3_3 = "INSERT INTO `users` (`metadata`) VALUES ('"
            L4_3 = L2_2.identifier
            L5_3 = "', '"
            L6_3 = json
            L6_3 = L6_3.encode
            L7_3 = L2_2.metadata
            L6_3 = L6_3(L7_3)
            L7_3 = "')"
            L3_3 = L3_3 .. L4_3 .. L5_3 .. L6_3 .. L7_3
            L1_3(L2_3, L3_3)
          else
            L1_3 = QS
            L1_3 = L1_3.ExecuteSql
            L2_3 = true
            L3_3 = "UPDATE `users` SET metadata ='"
            L4_3 = json
            L4_3 = L4_3.encode
            L5_3 = L2_2.metadata
            L4_3 = L4_3(L5_3)
            L5_3 = "' WHERE `identifier` = '"
            L6_3 = L2_2.identifier
            L7_3 = "'"
            L3_3 = L3_3 .. L4_3 .. L5_3 .. L6_3 .. L7_3
            L1_3(L2_3, L3_3)
          end
          L1_3 = QS
          L1_3 = L1_3.SaveInventory
          L2_3 = A0_2
          L1_3(L2_3)
        end
        L3_2(L4_2, L5_2, L6_2)
      end
    else
      L2_2 = QS
      L2_2 = L2_2.Players
      L2_2 = L2_2[A0_2]
      L2_2 = L2_2.PlayerData
      if nil ~= L2_2 then
        L3_2 = GetLastCharacter
        L4_2 = A0_2
        L3_2 = L3_2(L4_2)
        L4_2 = QS
        L4_2 = L4_2.FetchSql
        L5_2 = true
        L6_2 = "SELECT * FROM `users` WHERE `identifier` = 'Char"
        L7_2 = L3_2
        L8_2 = L2_2.identifier
        L9_2 = "'"
        L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
        function L7_2(A0_3)
          local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
          L1_3 = A0_3[1]
          if L1_3 then
            L1_3 = QS
            L1_3 = L1_3.ExecuteSql
            L2_3 = true
            L3_3 = "UPDATE `users` SET metadata ='"
            L4_3 = json
            L4_3 = L4_3.encode
            L5_3 = L2_2.metadata
            L4_3 = L4_3(L5_3)
            L5_3 = "' WHERE `identifier` = 'Char"
            L6_3 = L3_2
            L7_3 = L2_2.identifier
            L8_3 = "'"
            L3_3 = L3_3 .. L4_3 .. L5_3 .. L6_3 .. L7_3 .. L8_3
            L1_3(L2_3, L3_3)
          else
            L1_3 = print
            L2_3 = "Bad instalation!"
            L1_3(L2_3)
          end
          L1_3 = QS
          L1_3 = L1_3.SaveInventory
          L2_3 = A0_2
          L3_3 = A1_2
          L1_3(L2_3, L3_3)
        end
        L4_2(L5_2, L6_2, L7_2)
      end
    end
  end
  L0_1.SavePlayerDropped = L1_1
end
L0_1 = QSConfig
L0_1 = L0_1.Multicharacter
if L0_1 then
  L0_1 = QS
  function L1_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2
    L1_2 = {}
    A0_2.items = L1_2
    L1_2 = QS
    L1_2 = L1_2.FetchSql
    L2_2 = true
    L3_2 = "SELECT inventory FROM `users` WHERE `identifier` = '"
    L4_2 = A0_2.identifier
    L5_2 = "' LIMIT 1"
    L3_2 = L3_2 .. L4_2 .. L5_2
    function L4_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
      L1_3 = A0_3[1]
      if nil ~= L1_3 then
        L1_3 = A0_3[1]
        L1_3 = L1_3.inventory
        if nil ~= L1_3 then
          L1_3 = json
          L1_3 = L1_3.decode
          L2_3 = A0_3[1]
          L2_3 = L2_3.inventory
          L1_3 = L1_3(L2_3)
          plyInventory = L1_3
          L1_3 = next
          L2_3 = plyInventory
          L1_3 = L1_3(L2_3)
          if nil ~= L1_3 then
            L1_3 = pairs
            L2_3 = plyInventory
            L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
            for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
              if nil ~= L6_3 then
                L7_3 = QS
                L7_3 = L7_3.Shared
                L7_3 = L7_3.Items
                L8_3 = L6_3.name
                L9_3 = L8_3
                L8_3 = L8_3.lower
                L8_3 = L8_3(L9_3)
                L7_3 = L7_3[L8_3]
                if L7_3 then
                  L8_3 = A0_2.items
                  L9_3 = L6_3.slot
                  L10_3 = {}
                  L11_3 = L7_3.name
                  L10_3.name = L11_3
                  L11_3 = L6_3.amount
                  L10_3.amount = L11_3
                  L11_3 = L6_3.info
                  if nil ~= L11_3 then
                    L11_3 = L6_3.info
                    if L11_3 then
                      goto lbl_49
                    end
                  end
                  L11_3 = ""
                  ::lbl_49::
                  L10_3.info = L11_3
                  L11_3 = L7_3.label
                  L10_3.label = L11_3
                  L11_3 = L7_3.description
                  if nil ~= L11_3 then
                    L11_3 = L7_3.description
                    if L11_3 then
                      goto lbl_59
                    end
                  end
                  L11_3 = ""
                  ::lbl_59::
                  L10_3.description = L11_3
                  L11_3 = L7_3.weight
                  L10_3.weight = L11_3
                  L11_3 = L7_3.type
                  L10_3.type = L11_3
                  L11_3 = L7_3.unique
                  L10_3.unique = L11_3
                  L11_3 = L7_3.useable
                  L10_3.useable = L11_3
                  L11_3 = L6_3.info
                  if L11_3 then
                    L11_3 = L6_3.info
                    L11_3 = L11_3.image
                    if L11_3 then
                      L11_3 = L6_3.info
                      L11_3 = L11_3.image
                      L12_3 = ".png"
                      L11_3 = L11_3 .. L12_3
                      if L11_3 then
                        goto lbl_82
                      end
                    end
                  end
                  L11_3 = L7_3.image
                  ::lbl_82::
                  L10_3.image = L11_3
                  L11_3 = L7_3.shouldClose
                  L10_3.shouldClose = L11_3
                  L11_3 = L6_3.slot
                  L10_3.slot = L11_3
                  L11_3 = L7_3.combinable
                  L10_3.combinable = L11_3
                  L8_3[L9_3] = L10_3
                else
                  L8_3 = print
                  L9_3 = "[qs-core] Item not found in player inventory, identifier: "
                  L10_3 = A0_2.identifier
                  L11_3 = " - Item: "
                  L12_3 = L6_3.name
                  L9_3 = L9_3 .. L10_3 .. L11_3 .. L12_3
                  L8_3(L9_3)
                end
              end
            end
          end
        end
      end
    end
    L1_2(L2_2, L3_2, L4_2)
    return A0_2
  end
  L0_1.LoadInventory = L1_1
else
  L0_1 = QS
  function L1_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2
    L1_2 = {}
    A0_2.items = L1_2
    L1_2 = QS
    L1_2 = L1_2.FetchSql
    L2_2 = true
    L3_2 = "SELECT * FROM `users` WHERE `identifier` = '"
    L4_2 = A0_2.identifier
    L5_2 = "'"
    L3_2 = L3_2 .. L4_2 .. L5_2
    function L4_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
      L1_3 = A0_3[1]
      if nil ~= L1_3 then
        L1_3 = A0_3[1]
        L1_3 = L1_3.inventory
        if nil ~= L1_3 then
          L1_3 = json
          L1_3 = L1_3.decode
          L2_3 = A0_3[1]
          L2_3 = L2_3.inventory
          L1_3 = L1_3(L2_3)
          plyInventory = L1_3
          L1_3 = next
          L2_3 = plyInventory
          L1_3 = L1_3(L2_3)
          if nil ~= L1_3 then
            L1_3 = pairs
            L2_3 = plyInventory
            L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
            for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
              if nil ~= L6_3 then
                L7_3 = QS
                L7_3 = L7_3.Shared
                L7_3 = L7_3.Items
                L8_3 = L6_3.name
                L9_3 = L8_3
                L8_3 = L8_3.lower
                L8_3 = L8_3(L9_3)
                L7_3 = L7_3[L8_3]
                if L7_3 then
                  L8_3 = A0_2.items
                  L9_3 = L6_3.slot
                  L10_3 = {}
                  L11_3 = L7_3.name
                  L10_3.name = L11_3
                  L11_3 = L6_3.amount
                  L10_3.amount = L11_3
                  L11_3 = L6_3.info
                  if nil ~= L11_3 then
                    L11_3 = L6_3.info
                    if L11_3 then
                      goto lbl_49
                    end
                  end
                  L11_3 = ""
                  ::lbl_49::
                  L10_3.info = L11_3
                  L11_3 = L7_3.label
                  L10_3.label = L11_3
                  L11_3 = L7_3.description
                  if nil ~= L11_3 then
                    L11_3 = L7_3.description
                    if L11_3 then
                      goto lbl_59
                    end
                  end
                  L11_3 = ""
                  ::lbl_59::
                  L10_3.description = L11_3
                  L11_3 = L7_3.weight
                  L10_3.weight = L11_3
                  L11_3 = L7_3.type
                  L10_3.type = L11_3
                  L11_3 = L7_3.unique
                  L10_3.unique = L11_3
                  L11_3 = L7_3.useable
                  L10_3.useable = L11_3
                  L11_3 = L6_3.info
                  if L11_3 then
                    L11_3 = L6_3.info
                    L11_3 = L11_3.image
                    if L11_3 then
                      L11_3 = L6_3.info
                      L11_3 = L11_3.image
                      L12_3 = ".png"
                      L11_3 = L11_3 .. L12_3
                      if L11_3 then
                        goto lbl_82
                      end
                    end
                  end
                  L11_3 = L7_3.image
                  ::lbl_82::
                  L10_3.image = L11_3
                  L11_3 = L7_3.shouldClose
                  L10_3.shouldClose = L11_3
                  L11_3 = L6_3.slot
                  L10_3.slot = L11_3
                  L11_3 = L7_3.combinable
                  L10_3.combinable = L11_3
                  L8_3[L9_3] = L10_3
                else
                  L8_3 = print
                  L9_3 = "[qs-core] Item not found in player inventory, identifier: "
                  L10_3 = A0_2.identifier
                  L11_3 = " - Item: "
                  L12_3 = L6_3.name
                  L9_3 = L9_3 .. L10_3 .. L11_3 .. L12_3
                  L8_3(L9_3)
                end
              end
            end
          end
        end
      end
    end
    L1_2(L2_2, L3_2, L4_2)
    return A0_2
  end
  L0_1.LoadInventory = L1_1
end
L0_1 = QSConfig
L0_1 = L0_1.Multicharacter
if L0_1 then
  L0_1 = QS
  function L1_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
    L2_2 = QS
    L2_2 = L2_2.Players
    L2_2 = L2_2[A0_2]
    if nil ~= L2_2 then
      L2_2 = QS
      L2_2 = L2_2.Players
      L2_2 = L2_2[A0_2]
      L2_2 = L2_2.PlayerData
      L3_2 = L2_2.items
      L4_2 = {}
      if nil ~= L3_2 then
        L5_2 = next
        L6_2 = L3_2
        L5_2 = L5_2(L6_2)
        if nil ~= L5_2 then
          L5_2 = pairs
          L6_2 = L3_2
          L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
          for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
            L11_2 = L3_2[L9_2]
            if nil ~= L11_2 then
              L11_2 = table
              L11_2 = L11_2.insert
              L12_2 = L4_2
              L13_2 = {}
              L14_2 = L10_2.name
              L13_2.name = L14_2
              L14_2 = L10_2.amount
              L13_2.amount = L14_2
              L14_2 = L10_2.info
              L13_2.info = L14_2
              L14_2 = L10_2.type
              L13_2.type = L14_2
              L13_2.slot = L9_2
              L11_2(L12_2, L13_2)
            end
          end
          if A1_2 then
            L5_2 = GetLastCharacter
            L6_2 = A0_2
            L5_2 = L5_2(L6_2)
            L6_2 = QS
            L6_2 = L6_2.ExecuteSql
            L7_2 = true
            L8_2 = "UPDATE `users` SET `inventory` = '"
            L9_2 = QS
            L9_2 = L9_2.EscapeSqli
            L10_2 = json
            L10_2 = L10_2.encode
            L11_2 = L4_2
            L10_2, L11_2, L12_2, L13_2, L14_2 = L10_2(L11_2)
            L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
            L10_2 = "' WHERE `identifier` = 'Char"
            L11_2 = L5_2
            L12_2 = L2_2.identifier
            L13_2 = "'"
            L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2
            L6_2(L7_2, L8_2)
          else
            L5_2 = QS
            L5_2 = L5_2.ExecuteSql
            L6_2 = true
            L7_2 = "UPDATE `users` SET `inventory` = '"
            L8_2 = QS
            L8_2 = L8_2.EscapeSqli
            L9_2 = json
            L9_2 = L9_2.encode
            L10_2 = L4_2
            L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2(L10_2)
            L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
            L9_2 = "' WHERE `identifier` = '"
            L10_2 = L2_2.identifier
            L11_2 = "'"
            L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
            L5_2(L6_2, L7_2)
          end
      end
      else
        L5_2 = MySQL
        L5_2 = L5_2.Sync
        L5_2 = L5_2.execute
        L6_2 = "UPDATE `users` SET `inventory` = '"
        L7_2 = QS
        L7_2 = L7_2.EscapeSqli
        L8_2 = json
        L8_2 = L8_2.encode
        L9_2 = {}
        L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L8_2(L9_2)
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
        L8_2 = "' WHERE `identifier` = '"
        L9_2 = L2_2.identifier
        L10_2 = "'"
        L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
        L5_2(L6_2)
      end
    end
  end
  L0_1.SaveInventory = L1_1
else
  L0_1 = QS
  function L1_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
    L1_2 = QS
    L1_2 = L1_2.Players
    L1_2 = L1_2[A0_2]
    if nil ~= L1_2 then
      L1_2 = QS
      L1_2 = L1_2.Players
      L1_2 = L1_2[A0_2]
      L1_2 = L1_2.PlayerData
      L2_2 = L1_2.items
      L3_2 = {}
      if nil ~= L2_2 then
        L4_2 = next
        L5_2 = L2_2
        L4_2 = L4_2(L5_2)
        if nil ~= L4_2 then
          L4_2 = pairs
          L5_2 = L2_2
          L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
          for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
            L10_2 = L2_2[L8_2]
            if nil ~= L10_2 then
              L10_2 = table
              L10_2 = L10_2.insert
              L11_2 = L3_2
              L12_2 = {}
              L13_2 = L9_2.name
              L12_2.name = L13_2
              L13_2 = L9_2.amount
              L12_2.amount = L13_2
              L13_2 = L9_2.info
              L12_2.info = L13_2
              L13_2 = L9_2.type
              L12_2.type = L13_2
              L12_2.slot = L8_2
              L10_2(L11_2, L12_2)
            end
          end
          L4_2 = QS
          L4_2 = L4_2.ExecuteSql
          L5_2 = true
          L6_2 = "UPDATE `users` SET `inventory` = '"
          L7_2 = QS
          L7_2 = L7_2.EscapeSqli
          L8_2 = json
          L8_2 = L8_2.encode
          L9_2 = L3_2
          L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2)
          L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
          L8_2 = "' WHERE `identifier` = '"
          L9_2 = L1_2.identifier
          L10_2 = "'"
          L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
          L4_2(L5_2, L6_2)
      end
      else
        L4_2 = MySQL
        L4_2 = L4_2.Sync
        L4_2 = L4_2.execute
        L5_2 = "UPDATE `users` SET `inventory` = '"
        L6_2 = QS
        L6_2 = L6_2.EscapeSqli
        L7_2 = json
        L7_2 = L7_2.encode
        L8_2 = {}
        L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2(L8_2)
        L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
        L7_2 = "' WHERE `identifier` = '"
        L8_2 = L1_2.identifier
        L9_2 = "'"
        L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
        L4_2(L5_2)
      end
    end
  end
  L0_1.SaveInventory = L1_1
end
L0_1 = QS
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  if nil ~= A0_2 then
    L2_2 = pairs
    L3_2 = A0_2
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L7_2.weight
      L9_2 = L7_2.amount
      L8_2 = L8_2 * L9_2
      L1_2 = L1_2 + L8_2
    end
  end
  L2_2 = tonumber
  L3_2 = L1_2
  return L2_2(L3_2)
end
L0_1.GetTotalWeight = L1_1
L0_1 = QS
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  if nil ~= A0_2 then
    L3_2 = pairs
    L4_2 = A0_2
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L8_2.name
      L10_2 = L9_2
      L9_2 = L9_2.lower
      L9_2 = L9_2(L10_2)
      L11_2 = A1_2
      L10_2 = A1_2.lower
      L10_2 = L10_2(L11_2)
      if L9_2 == L10_2 then
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = L2_2
        L11_2 = L7_2
        L9_2(L10_2, L11_2)
      end
    end
  end
  return L2_2
end
L0_1.GetSlotsByItem = L1_1
L0_1 = QS
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if nil ~= A0_2 then
    L2_2 = pairs
    L3_2 = A0_2
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L7_2.name
      L9_2 = L8_2
      L8_2 = L8_2.lower
      L8_2 = L8_2(L9_2)
      L10_2 = A1_2
      L9_2 = A1_2.lower
      L9_2 = L9_2(L10_2)
      if L8_2 == L9_2 then
        L8_2 = tonumber
        L9_2 = L6_2
        return L8_2(L9_2)
      end
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.GetFirstSlotByItem = L1_1
L0_1 = QS
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = 0
  if nil ~= A0_2 then
    L3_2 = pairs
    L4_2 = A0_2
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L8_2.name
      L10_2 = L9_2
      L9_2 = L9_2.lower
      L9_2 = L9_2(L10_2)
      L11_2 = A1_2
      L10_2 = A1_2.lower
      L10_2 = L10_2(L11_2)
      if L9_2 == L10_2 then
        L9_2 = L8_2.amount
        L2_2 = L9_2 + L2_2
      end
    end
  end
  L3_2 = tonumber
  L4_2 = L2_2
  return L3_2(L4_2)
end
L0_1.GetAmmountByItem = L1_1
L0_1 = QS
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = false
  L1_2 = nil
  while not L0_2 do
    L2_2 = math
    L2_2 = L2_2.random
    L3_2 = 11111111
    L4_2 = 99999999
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
    L2_2 = QS
    L2_2 = L2_2.FetchSql
    L3_2 = true
    L4_2 = "SELECT COUNT(*) as count FROM users WHERE metadata LIKE '%"
    L5_2 = L1_2
    L6_2 = "%'"
    L4_2 = L4_2 .. L5_2 .. L6_2
    function L5_2(A0_3)
      local L1_3
      L1_3 = A0_3[1]
      L1_3 = L1_3.count
      if 0 == L1_3 then
        L1_3 = true
        L0_2 = L1_3
      end
    end
    L2_2(L3_2, L4_2, L5_2)
  end
  return L1_2
end
L0_1.CreateSerialNumber = L1_1
L0_1 = QS
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L1_2["\""] = "\\\""
  L1_2["'"] = "\\'"
  L3_2 = A0_2
  L2_2 = A0_2.gsub
  L4_2 = "['\"]"
  L5_2 = L1_2
  return L2_2(L3_2, L4_2, L5_2)
end
L0_1.EscapeSqli = L1_1
L0_1 = ESX
L0_1 = L0_1.RegisterServerCallback
L1_1 = "qs-core:GetInventory"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L3_2 = QS
  L3_2 = L3_2.GetPlayerFromId
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = L3_2.GetInventory
    L4_2 = L4_2()
    L5_2 = A1_2
    L6_2 = L4_2
    L5_2(L6_2)
  end
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = ESX
  L2_2 = L2_2.GetPlayerFromId
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if "cash" == A0_2 then
    L3_2 = L2_2.getInventoryItem
    L4_2 = "cash"
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L4_2 = L2_2.setAccountMoney
      L5_2 = "money"
      L6_2 = L3_2.count
      L4_2(L5_2, L6_2)
    end
  elseif "black_money" == A0_2 then
    L3_2 = L2_2.getInventoryItem
    L4_2 = "black_money"
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L4_2 = L2_2.setAccountMoney
      L5_2 = "black_money"
      L6_2 = L3_2.count
      L4_2(L5_2, L6_2)
    end
  end
end
UpdateCashOrBlackMoney = L0_1
L0_1 = AddEventHandler
L1_1 = "txAdmin:events:scheduledRestart"
function L2_1(A0_2)
  local L1_2, L2_2
  if A0_2 then
    L1_2 = A0_2.secondsRemaining
    if L1_2 then
      L1_2 = A0_2.secondsRemaining
      if 60 == L1_2 then
        L1_2 = CreateThread
        function L2_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
          L0_3 = Wait
          L1_3 = 40000
          L0_3(L1_3)
          L0_3 = print
          L1_3 = "[qs-core] 20 seconds before restart... kicking and saving all players and inventories!"
          L0_3(L1_3)
          L0_3 = ESX
          L0_3 = L0_3.GetPlayers
          L0_3 = L0_3()
          L1_3 = 1
          L2_3 = #L0_3
          L3_3 = 1
          for L4_3 = L1_3, L2_3, L3_3 do
            L5_3 = DropPlayer
            L6_3 = L0_3[L4_3]
            L7_3 = [[


Server restarting!]]
            L5_3(L6_3, L7_3)
          end
        end
        L1_2(L2_2)
      end
    end
  end
end
L0_1(L1_1, L2_1)
