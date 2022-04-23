function enterthecar(thePlayer, seat, jacked)
	if (seat == 0) then
		local playerVehicle = getPedOccupiedVehicle(thePlayer)
		if playerVehicle and isElement(playerVehicle) and getElementModel(playerVehicle) == 490 and isControlEnabled(thePlayer, "horn") then
			toggleControl(thePlayer, "horn", false)
		end
		local accName = getAccountName(getPlayerAccount(thePlayer)) -- get his account name
		if isObjectInACLGroup ("user."..accName, aclGetGroup("Admin")) then -- Does he have access to Admin functions?
			toggleControl(thePlayer, "horn", true)
			outputChatBox("[!] #ffffffYou can use the horn in the car..", thePlayer, 0, 0, 0, true)
		end
	end
end
addEventHandler("onVehicleEnter", getRootElement(), enterthecar)
