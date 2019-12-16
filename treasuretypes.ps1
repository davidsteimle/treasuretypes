#!/usr/bin/env pwsh

class money {
    [string]$Name
    [string]$Acronym
    [int]$Multiplier
    [int]$Dice
    [int]$Die
    [int]$Chance
}

class treasuretype {
    [string]$TreasureType
    [psobject]$Copper
    [psobject]$Silver
    [psobject]$Electrum
    [psobject]$Gold
    [psobject]$Platinum
    [psobject]$Gems
    [psobject]$Jewelry
    [string]$Magic
}

$TreasureTypes = @(
    [treasuretype]@{
        "TreasureType" = "A"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Dice" = 1
            "Die" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 4
            "Die" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 3
            "Die" = 30
            "Chance" = 50
        }
        "Magic" = "Any 3: 30%"
        
    },
    [treasuretype]@{
        "TreasureType" = "B"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 8
            "Chance" = 50
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 25
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 4
            "Chance" = 25
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 3
            "Chance" = 25
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Dice" = 0
            "Die" = 0
            "Chance" = 0
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 1
            "Die" = 8
            "Chance" = 30
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 3
            "Die" = 30
            "Chance" = 50
        }
        "Magic" = "Sword, armor, or misc. weapon: 10%"
        
    }
    [treasuretype]@{
        "TreasureType" = "C"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Dice" = 1
            "Die" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 4
            "Die" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 3
            "Die" = 30
            "Chance" = 50
        }
        "Magic" = ""
        
    },
    [treasuretype]@{
        "TreasureType" = "D"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Dice" = 1
            "Die" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 4
            "Die" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 3
            "Die" = 30
            "Chance" = 50
        }
        "Magic" = ""
        
    },
    [treasuretype]@{
        "TreasureType" = "E"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Dice" = 1
            "Die" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 4
            "Die" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 3
            "Die" = 30
            "Chance" = 50
        }
        "Magic" = ""
        
    },
    [treasuretype]@{
        "TreasureType" = "F"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Dice" = 1
            "Die" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 4
            "Die" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 3
            "Die" = 30
            "Chance" = 50
        }
        "Magic" = ""
        
    },
    [treasuretype]@{
        "TreasureType" = "G"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Dice" = 1
            "Die" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 4
            "Die" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 3
            "Die" = 30
            "Chance" = 50
        }
        "Magic" = ""
        
    },
    [treasuretype]@{
        "TreasureType" = "H"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Dice" = 1
            "Die" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 4
            "Die" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 3
            "Die" = 30
            "Chance" = 50
        }
        "Magic" = ""
        
    },
    [treasuretype]@{
        "TreasureType" = "1"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Dice" = 1
            "Die" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 4
            "Die" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 3
            "Die" = 30
            "Chance" = 50
        }
        "Magic" = ""
        
    },
    [treasuretype]@{
        "TreasureType" = "J"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Dice" = 1
            "Die" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 4
            "Die" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 3
            "Die" = 30
            "Chance" = 50
        }
        "Magic" = ""
        
    },
    [treasuretype]@{
        "TreasureType" = "K"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Dice" = 1
            "Die" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 4
            "Die" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 3
            "Die" = 30
            "Chance" = 50
        }
        "Magic" = ""
        
    },
    [treasuretype]@{
        "TreasureType" = "L"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Dice" = 1
            "Die" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 4
            "Die" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 3
            "Die" = 30
            "Chance" = 50
        }
        "Magic" = ""
        
    },
    [treasuretype]@{
        "TreasureType" = "M"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Dice" = 1
            "Die" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 4
            "Die" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 3
            "Die" = 30
            "Chance" = 50
        }
        "Magic" = ""
        
    },
    [treasuretype]@{
        "TreasureType" = "N"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Dice" = 1
            "Die" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 4
            "Die" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 3
            "Die" = 30
            "Chance" = 50
        }
        "Magic" = ""
        
    },
    [treasuretype]@{
        "TreasureType" = "O"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Dice" = 1
            "Die" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 4
            "Die" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 3
            "Die" = 30
            "Chance" = 50
        }
        "Magic" = ""
        
    },
    [treasuretype]@{
        "TreasureType" = "P"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Dice" = 1
            "Die" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 4
            "Die" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 3
            "Die" = 30
            "Chance" = 50
        }
        "Magic" = ""
        
    },
    [treasuretype]@{
        "TreasureType" = "Q"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Dice" = 1
            "Die" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 4
            "Die" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 3
            "Die" = 30
            "Chance" = 50
        }
        "Magic" = ""
        
    },
    [treasuretype]@{
        "TreasureType" = "R"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Dice" = 1
            "Die" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 4
            "Die" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 3
            "Die" = 30
            "Chance" = 50
        }
        "Magic" = ""
        
    },
    [treasuretype]@{
        "TreasureType" = "S"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Dice" = 1
            "Die" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 4
            "Die" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 3
            "Die" = 30
            "Chance" = 50
        }
        "Magic" = ""
        
    },
    [treasuretype]@{
        "TreasureType" = "T"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Dice" = 1
            "Die" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 4
            "Die" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 3
            "Die" = 30
            "Chance" = 50
        }
        "Magic" = ""
        
    },
    [treasuretype]@{
        "TreasureType" = "U"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Dice" = 1
            "Die" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 4
            "Die" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 3
            "Die" = 30
            "Chance" = 50
        }
        "Magic" = ""
        
    },
    [treasuretype]@{
        "TreasureType" = "V"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Dice" = 1
            "Die" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 4
            "Die" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 3
            "Die" = 30
            "Chance" = 50
        }
        "Magic" = ""
        
    },
    [treasuretype]@{
        "TreasureType" = "W"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Dice" = 1
            "Die" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 4
            "Die" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 3
            "Die" = 30
            "Chance" = 50
        }
        "Magic" = ""
        
    },
    [treasuretype]@{
        "TreasureType" = "X"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Dice" = 0
            "Die" = 0
            "Chance" = 0
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Dice" = 0
            "Die" = 0
            "Chance" = 0
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Dice" = 0
            "Die" = 0
            "Chance" = 0
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Dice" = 0
            "Die" = 0
            "Chance" = 0
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Dice" = 0
            "Die" = 0
            "Chance" = 0
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 0
            "Die" = 0
            "Chance" = 0
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 0
            "Die" = 0
            "Chance" = 0
        }
        "Magic" = "1 misc. magic plus 1 potion: 60%"
        
    },
    [treasuretype]@{
        "TreasureType" = "Y"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Dice" = 0
            "Die" = 0
            "Chance" = 0
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Dice" = 0
            "Die" = 0
            "Chance" = 0
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Dice" = 0
            "Die" = 0
            "Chance" = 0
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Dice" = 2
            "Die" = 6
            "Chance" = 70
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Dice" = 1
            "Die" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 4
            "Die" = 10
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 3
            "Die" = 10
            "Chance" = 50
        }
        "Magic" = "nil"
        
    },
    [treasuretype]@{
        "TreasureType" = "Z"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 3
            "Chance" = 20
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 4
            "Chance" = 25
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 4
            "Chance" = 25
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 4
            "Chance" = 30
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Dice" = 1
            "Die" = 6
            "Chance" = 30
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 10
            "Die" = 6
            "Chance" = 55
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 5
            "Die" = 6
            "Chance" = 50
        }
        "Magic" = "Any 3 magic: 50%"
        
    }
)

#$TreasureTypes | Format-Table

$TableDisplay = @()
