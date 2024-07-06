Config = {}

Config.Language = "EN"
Config.Command = {
    commandName = "dashboard",
    keyMapping  = "home",
    keyMappingDesc = "Key to open dashboard"
}

Config.Notify = function(msg,type)
    ESX.ShowNotification(msg, 5000, type)
end

Config.locales = {
    ["EN"] = {
        --UI
        money = "$",
        homepage = "HOME",
        settings = "SETTINGS",
        serverName = "FinalZ scripts",
        welcome = "Dear ",
        welcomeUnder = "I'm happy to see you on the server",
        cash = "Cash: ",
        bank = "Bank: ",
        license = "Click to copy license",
        serverID = "Server ID: ",
        group = "Group: ",
        job = "Job: ",
        position = "Position: ",
        Salary = "Salary: ",
        police = "Police: ",
        ems = "Ambulance: ",
        mechanic = "Mechanic: ",
        adminCount = "Admins: ",
        playerData = "Player data", 
        playerCount = "Players: ",
        settingsHeader = "Settings",
        copiedSuccess = "Successfully copied player license"
    },
    ["HU"] = {
        --UI
        money = "$",
        homepage = "HOME",
        settings = "BEÁLLITÁSOK",
        serverName = "FinalZ scripts",
        welcome = "Kedves ",
        welcomeUnder = "Üdvözöllek a szerveren",
        cash = "KP: ",
        bank = "Bank: ",
        license = "License - másolás",
        serverID = "Szerver ID: ",
        group = "Group: ",
        job = "Munka: ",
        position = "Pozició: ",
        Salary = "fizetés: ",
        police = "Rendőrség: ",
        ems = "Mentősök: ",
        mechanic = "Szerelők: ",
        adminCount = "Adminok: ",
        playerData = "Player adatok", 
        playerCount = "játékosok: ",
        settingsHeader = "Beállitások",

        copiedSuccess = "Kimásoltad a licensed"
    }
}