['metaldetector'] = {
    label = 'Metal detector',
    weight = 1200,
    buttons = {
        {
            label = 'Use metal detector',
            action = function(slot)
                exports.ox_inventory:closeInventory()
                exports['0-metalDetecting']:startDetecting()
            end
        },
        {
            label = 'Put detector away',
            action = function(slot)
                exports.ox_inventory:closeInventory()
                exports['0-metalDetecting']:stopDetecting()
            end
        },
    },
},