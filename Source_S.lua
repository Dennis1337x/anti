local ia = getElementData(getResourceRootElement(getThisResource()), "XAC_42AK1YUHAC_IS_ACTIVE_vTyfcQv41b_AND_LICENSE_Z9orj7X0Lx_IS_CONFIRMED") or false

setTimer(function()
ia = getElementData(getResourceRootElement(getThisResource()), "XAC_42AK1YUHAC_IS_ACTIVE_vTyfcQv41b_AND_LICENSE_Z9orj7X0Lx_IS_CONFIRMED") or false
end, 2000,0)

function sendDiscordMessage (urlWebhook, nick,number,serial,reson)
    local discordData = {
        content = "";
        username = "Anti-Cheat";
        avatar_url = "";
        embeds = {
            {
                title = "Hileci tespit edildi";
                color = 10181046;
                footer = {
                    text = "Diwness tarafından kodlandı";
                    icon_url = "";
                };
                fields = {
                    {
                        name= "Adı:",
                        value= nick,
                        inline=false,
                    },
                    {
                        name= "Kullanıcı adı:",
                        value= number,
                        inline=false,
                    },
                    {
                        name= "Serial:",
                        value= serial,
                        inline=false,
                    },
                    {
                        name= "Ban Sebebi:",
                        value= reson,
                        inline=false,
                    },
                    {
                        name= "Süre:",
                        value= "Kalıcı",
                        inline=false,
                    },
                },
                thumbnail = {
                    url = "";
                };
            };
        };
    }
    local jsonData = toJSON (discordData)
    jsonData = string.sub (jsonData, 3, #jsonData - 2)
    
    local sendOptions = {
        headers = {
            ["Content-Type"] = "application/json";
        };
        postData = jsonData;
    };
    fetchRemote (urlWebhook, sendOptions, function ()
    
    end)
end




function HackerCatcher(weaponID)
  if ia == false then return end
    local ammo = getPedTotalAmmo(source)
    reason1 = "InfiniteAmmo-Hack"
    if config.InfinteAmmo[1] and ammo >= config.InfinteAmmo[2] and getElementDimension(source) == 0 then
        sendDiscordMessage(config["webhook"],getPlayerName(source),getElementData(source, "account:username"),getPlayerSerial(source), reason1)
		banPlayer(source,true,false,true, nil, "Ddiwness siksin anneni(AntiCheat)",0)
    end
    if config.BlacklistWeapon[1] and not config.BlacklistWeapon.TableWeapon[weaponID] and getElementDimension(source) == 0 then
        reason2 = "BlacklistWeapon-Hack"
        sendDiscordMessage(config["webhook"],getPlayerName(source),getElementData(source, "account:username"),getPlayerSerial(source), reason2)
		banPlayer(source,true,false,true, nil, "Ddiwness siksin anneni(AntiCheat)",0)
    end
end
addEventHandler ("onPlayerWeaponFire", root, HackerCatcher )


function AntiCheat_func(player, reason)
  if ia == false then return end
	if client == player then
		sendDiscordMessage(config["webhook"],getPlayerName(client),getElementData(client, "account:username"),getPlayerSerial(client), reason)
		banPlayer(source,true,false,true, nil, "Ddiwness siksin anneni(AntiCheat)",0)
	end
end
addEvent("AntiCheat:Protected:Send", true)
addEventHandler("AntiCheat:Protected:Send", root, AntiCheat_func)


local projectileNames = {
    [16]='Grenade',
    [17]='Tear Gas Grenade',
    [18]='Molotov',
    [19]='Rocket (simple)',
    [20]='Rocket (heat seeking)',
    [21]='Air Bomb',
    [39]='Satchel Charge',
    [58]='Hydra flare'
}

addEventHandler('onPlayerProjectileCreation', root, function(weaponType)
  if ia == false then return end

	if config.projectile then
        cancelEvent()
        local weaponName = projectileNames[weaponType] or 'Unknown'
		sendDiscordMessage(config["webhook"],getPlayerName(source),getElementData(source, "account:username"),getPlayerSerial(source), "Projectile-hack")
		banPlayer(source,true,false,true, nil, "Ddiwness siksin anneni(AntiCheat)",0)
	end
end
)