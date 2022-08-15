local L0_1, L1_1, L2_1
L0_1 = RegisterServerEvent
L1_1 = "qs-core:playerLoaded"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "qs-core:playerLoaded"
function L2_1()
  local L0_2, L1_2
  L0_2 = source
end
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = "playerDropped"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = source
  if "Reconnecting" ~= A0_2 then
    L2_2 = 60000
    if L1_2 > L2_2 then
      L2_2 = false
      return L2_2
    end
  end
  if nil ~= L1_2 then
    L2_2 = QS
    L2_2 = L2_2.Players
    L2_2 = L2_2[L1_2]
    if nil ~= L2_2 then
      goto lbl_18
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_18::
  L2_2 = QS
  L2_2 = L2_2.Players
  L2_2 = L2_2[L1_2]
  L2_2 = L2_2.SavePlayerDropped
  L2_2()
  L2_2 = QS
  L2_2 = L2_2.Players
  L2_2[L1_2] = nil
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "qs-core:useItem"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "qs-core:useItem"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = source
  L2_2 = QS
  L2_2 = L2_2.GetPlayerFromId
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if nil ~= A0_2 then
    L3_2 = A0_2.amount
    if L3_2 > 0 then
      L3_2 = QS
      L3_2 = L3_2.canCarryItem
      L4_2 = A0_2.name
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L3_2 = QS
        L3_2 = L3_2.useItem
        L4_2 = L1_2
        L5_2 = A0_2
        L3_2(L4_2, L5_2)
      end
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = ESX
L0_1 = L0_1.RegisterServerCallback
L1_1 = "qs-core:hasItem"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = false
  L4_2 = QS
  L4_2 = L4_2.GetPlayerFromId
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if nil ~= L4_2 then
    L5_2 = L4_2.getItemName
    L6_2 = A2_2
    L5_2 = L5_2(L6_2)
    if nil ~= L5_2 then
      L3_2 = true
    end
  end
  L5_2 = A1_2
  L6_2 = L3_2
  L5_2(L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "qs-core:removeItem"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "qs-core:removeItem"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = source
  L4_2 = QS
  L4_2 = L4_2.GetPlayerFromId
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2.removeItem
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "qs-core:addItem"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "qs-core:addItem"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = source
  L4_2 = QS
  L4_2 = L4_2.GetPlayerFromId
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2.addItem
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "qs-core:setMetadata"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "qs-core:setMetadata"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = source
  L3_2 = QS
  L3_2 = L3_2.GetPlayerFromId
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if ("hunger" == A0_2 or "thirst" == A0_2) and A1_2 > 100 then
    A1_2 = 100
  end
  if nil ~= L3_2 then
    L4_2 = L3_2.SetMetaData
    L5_2 = A0_2
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
  end
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
L0_1 = Citizen
L0_1 = L0_1.CreateThread
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetCurrentResourceName
  L0_2 = L0_2()
  if "qs-core" == L0_2 then
    verify = true
  end
  L1_2 = verify
  if true ~= L1_2 then
    repeat
      L1_2 = Citizen
      L1_2 = L1_2.Wait
      L2_2 = 3000
      L1_2(L2_2)
      L1_2 = print
      L2_2 = "^4[Quasar Bot] ^1The console will close because ^4qs-core ^1changed its name."
      L1_2(L2_2)
      L1_2 = Citizen
      L1_2 = L1_2.Wait
      L2_2 = 5000
      L1_2(L2_2)
      L1_2 = os
      L1_2 = L1_2.exit
      L1_2()
      L1_2 = verify
    until true == L1_2
  end
end
L0_1(L1_1)
