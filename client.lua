
triggered = false;
AddEventHandler("playerSpawned", function()
    if not triggered then 
        triggered = true;
        Citizen.Wait((5000 * 5)); -- Wait 20 seconds
        TriggerServerEvent('Badger_Discord_API:PlayerLoaded');
        lib.notify({
            id = 'deport',
            title = 'Welcome!',
            duration = 3000,
            description = 'Welcome to the server! Enjoy your stay!',
            showDuration = true,
            position = GetResourceKvpString('notification_position') or 'top',
            style = {
                backgroundColor = 'rgba(10, 10, 10, 0.85)', -- semi-transparent black
                color = 'rgb(200, 200, 200)', -- soft gray text like the subtext
                bold = true,
                borderRadius = '8px',
                border = '1px solid rgb(83, 83, 83)', -- matches border in image
            },
            icon = 'fa-solid fa-ship',
            iconColor = 'rgb(69, 103, 255)' -- vibrant blue from the icon and highlight
        })
    end
end)

