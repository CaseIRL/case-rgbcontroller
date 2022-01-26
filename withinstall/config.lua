-------------------------------
---------- CASE#2506 ----------
-------------------------------

Config = {}
Config.XenonInstallTime = math.random(4000,7000) -- Time to install xenons in (ms)
Config.NeonInstallTime = math.random(3000,5000) -- Time to install neons in (ms)
Config.Lang = {
    ['menuclose'] = 'Menu closed. Vehicle data updated!', -- Text for when vehicle system menus are closed
	['rgbout'] = 'You cannot use the RGB controller from outside a vehicle!', -- Notification text for attemping to use controller outside of a vehicle
	['outrange'] = 'No vehicles within range!', -- Notification text for when attempting to install parts from inside a vehicle
	['noneons'] = 'This vehicle does not have a neon kit installed!', -- Notifcation text for when no neons are installed on a vehicle
    ['unowned'] = 'You must own the vehicle to do this!', -- Notifcation text for when no neons are installed on a vehicle
    ['neonon'] = 'Neons toggled on!', -- Notifcation text for when no neons are installed on a vehicle
	['neonoff'] = 'Neons toggled off!', -- Notifcation text for when no neons are installed on a vehicle
	['neonchanged'] = 'Neon colour changed!', -- Notifcation text for when no neons are installed on a vehicle
	['xenonchanged'] = 'Xenon colour changed!', -- Notifcation text for when no neons are installed on a vehicle
	['xenonprogbar'] = 'Installing Xenons..', -- Text for progressbar when installing xenons into a vehicle
    ['neonkitprogbar'] = 'Installing Neon Kit..', -- Text for progressbar when installing xenons into a vehicle
	['xenoninstalled'] = 'Successfully installed Xenon Headlights to vehicle!', -- Notifcation text for when xenons are installed on a vehicle
    ['neoninstalled'] = 'Successfully installed a Neon Kit to vehicle!', -- Notifcation text for when neons are installed on a vehicle
}
