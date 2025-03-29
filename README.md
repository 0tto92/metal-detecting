## 0-metalDetection installation guide

Insert **metaldetector.png** to ``ox_inventory/web/images``

Insert **metaldetector.ogg** to ``interact-sound/client/html``

ox_inventory/data/items.lua
```lua
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
```


ESX
```sql
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('metaldetector', 'Metal detector', 1200, 0, 1)
;
```
