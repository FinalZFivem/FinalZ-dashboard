lib.callback.register('server:setData', function(source)
    local data = {}
    local xPlayer = ESX.GetPlayerFromId(source)
    local adminCount = 0
    for k, admin in pairs(ESX.GetExtendedPlayers()) do
        if admin.getGroup() ~= "user" then
            adminCount = adminCount + 1
        end
    end
    data = {
        igName = xPlayer.getName(),
        cash = xPlayer.getAccount("money").money,
        bank = xPlayer.getAccount("bank").money,
        license = xPlayer.getIdentifier(),
        playerID = xPlayer.source,
        groupAdmin = xPlayer.getGroup(),
        job = xPlayer.getJob().label,
        jobPost = xPlayer.getJob().grade_label,
        salary = xPlayer.getJob().grade_salary,
        players = GetNumPlayerIndices(),
        police = #ESX.GetExtendedPlayers('job', "police"),
        ems = #ESX.GetExtendedPlayers('job', "ambulance"),
        mechanic = #ESX.GetExtendedPlayers('job', "mechanic"),
        admins = adminCount
    }   
    return data
end)
