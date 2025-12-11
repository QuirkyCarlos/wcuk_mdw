Config = {

UsersUpdateRate = 300, -- Interval in seconds when users are updated in script. For example user buys a vehicle it will be only shown if users are updated.

DiscordWebhook = 'https://discord.com/api/webhooks/994307472292589718/DUEjHhY7_asKmZZ4WWl8k6KHVHzX5A9stHOhER5uqVIHjXtgUKC9eXJM-ciqj9n4R4M-', -- Discord webhook to send mdw changes

OpenCommand = 'mdt', -- Command to open MDW

UsingCoreEvidence = true, -- You can link evidence to an incident
UsingCoreMultijob = true, -- Shows every job user has saved on core_multijob
UsingCoreInsurance = false, -- (SOON) This will show if the vehicle is insured
UsingAllHousing = true, -- Shows owned houses in user profile

Departaments = { -- Add departaments that can access MDW
	['police'] = {label = "MET"},
    ['ambulance'] = {label = "NHS"}
},

EmergencyJobs = { -- Add emergency jobs that will get emergency broadcasts
    ['ambulance'] = true
},

Badges = { -- Add badges for officers that can be added with administrator permission
    ['honor'] = "HONOR BADGE"

},

InstantAdministrator = {
    ['char1:steam:11000010bda19c9'] = true,
    ['char1:steam:110000136fe11bd'] = true
},

ExcludeJobs = {
    ['mafia'] = true
},

WarrantEndingWarningTime = 48, -- Hours before warrant will become visable in dashboard as its close to expiering


Charges = { -- Specify the jail time and fine for each crime 

	['arson'] = {label = "Arson", jail = 48, fine = 10000, color= "#ff2e2e"},
	['burglary'] = {label = "Burglary", jail = 5, fine = 3000, color = "#2e93ff"},
	['passsingredlight'] = {label = "Driving trough Red Light", jail = 0, fine = 5000, color = "#ffae2b"},
	['harassment'] = {label = "Harassment", jail = 0, fine = 1000, color= "#44ff2b"},
    ['drugpossesion'] = {label = "Drug Possession", jail = 12, fine = 5000, color= "#2e93ff"},
    ['homocide'] = {label = "Homocide", jail = 63, fine = 12000, color= "#ff2e2e"},
    ['robbery'] = {label = "Armed Robbery", jail = 123, fine = 20000, color= "#ff2e2e"}

},
 

Text = {

    ['license_revoked'] = 'Your license was revoked!',
    ['license_revoked_success'] = 'You revoked license!',
    ['waypoint_set']= 'Waypoint set!',
    ['no_permission'] = 'You dont have rights to do this'
    

}

}


-- Called when you press sentance button in charges menu (Only appears if criminal is online)
function SentanceCriminal(target, jail, fine, charges)



TriggerEvent('advanced_jail:JailMenu')
TriggerEvent('esx_billing:sendBill', target, 'society_police', charges, fine, false)



end



function SendTextMessage(msg)

        --SetNotificationTextEntry('STRING')
        --AddTextComponentString(msg)
        --DrawNotification(0,1)

        --EXAMPLE USED IN VIDEO
       exports['mythic_notify']:SendAlert('inform', msg)
end



---Change any of these config options to your liking and make sure you only change the ones you know otherwise ask for help


QuirkyCarlos 

