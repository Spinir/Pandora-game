function onUse(cid, item, frompos, item2, topos)

if item.uid == 25058 then
if getPlayerStorageValue(cid, 25065) == 1 then
pos = getPlayerPosition(cid)

if pos.x == topos.x then
if pos.y < topos.y then
pos.y = topos.y + 1
else
pos.y = topos.y - 1
end
elseif pos.y == topos.y then
if pos.x < topos.x then
pos.x = topos.x + 1
else
pos.x = topos.x - 1
end
else
doPlayerSendTextMessage(cid,22,'Please stand in front of the door.')
return 1
end

doTeleportThing(cid,pos)
doSendMagicEffect(topos,12)
else
doPlayerSendTextMessage(cid,22,'You cannot pass this door! please go to Thais magic shop and talk with Shipmus!')
end
return 1
else
return 0
end
end