/proc/machine_upgrade(obj/machinery/M in world)
	set name = "Tweak Component Ratings"
	set category = "Debug"
	var/new_rating = input("Enter new rating:","Num") as num
	if(new_rating && M.component_parts)
		for(var/obj/item/weapon/stock_parts/P in M.component_parts)
			P.rating = new_rating
		M.RefreshParts()

	SSblackbox.add_details("admin_toggle","Machine Upgrade|[new_rating]") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!
