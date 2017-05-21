highway = 
    {maserati: 
        {driver: 
            ["vest", "jacket", "pants", "shirt", "watch", "wallet"],
        passenger: 
            ["tie", "vest", "pants", "shirt", "cellular"]
        },
    dodge:
        {driver:
            ["shirt", "pants", "belt watch"],
        passenger:
            ["shirt", "bolo tie", "boots", "bass guitar"]
        }
    }

p highway[:maserati][:driver][1]

p highway[:maserati][:passenger][0]

p highway[:dodge][:passenger][3]