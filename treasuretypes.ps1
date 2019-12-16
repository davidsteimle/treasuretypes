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
            "Die" = 12
            "Chance" = 20
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
            "Die" = 4
            "Chance" = 10
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
            "Dice" = 1
            "Die" = 6
            "Chance" = 25
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 1
            "Die" = 3
            "Chance" = 20
        }
        "Magic" = "Any 2: 10%"
        
    },
    [treasuretype]@{
        "TreasureType" = "D"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 8
            "Chance" = 10
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 12
            "Chance" = 15
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 8
            "Chance" = 15
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 50
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
            "Die" = 10
            "Chance" = 30
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 1
            "Die" = 6
            "Chance" = 25
        }
        "Magic" = "Any 2 plus 1 potion: 15%"
        
    },
    [treasuretype]@{
        "TreasureType" = "E"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 10
            "Chance" = 5
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 12
            "Chance" = 25
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 6
            "Chance" = 25
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 8
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
            "Die" = 12
            "Chance" = 15
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 1
            "Die" = 8
            "Chance" = 10
        }
        "Magic" = "Any 3 plus 1 scroll: 25%"
        
    },
    [treasuretype]@{
        "TreasureType" = "F"
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
            "Dice" = 1
            "Die" = 20
            "Chance" = 10
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 12
            "Chance" = 15
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
            "Die" = 8
            "Chance" = 35
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 3
            "Die" = 10
            "Chance" = 20
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 1
            "Die" = 10
            "Chance" = 10
        }
        "Magic" = "Any 3 except swords or misc. weapons, plus 1 potion and 1 scroll: 30%"
        
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
            "Multiplier" = 1
            "Dice" = 3
            "Die" = 8
            "Chance" = 100
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1
            "Dice" = 0
            "Die" = 0
            "Chance" = 0
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1
            "Dice" = 0
            "Die" = 0
            "Chance" = 0
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1
            "Dice" = 0
            "Die" = 0
            "Chance" = 0
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 1
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
        "Magic" = "nil"
        
    },
    [treasuretype]@{
        "TreasureType" = "K"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1
            "Dice" = 0
            "Die" = 0
            "Chance" = 0
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1
            "Dice" = 3
            "Die" = 6
            "Chance" = 100
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1
            "Dice" = 0
            "Die" = 0
            "Chance" = 0
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1
            "Dice" = 0
            "Die" = 0
            "Chance" = 0
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 1
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
        "Magic" = "nil"
        
    },
    [treasuretype]@{
        "TreasureType" = "L"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1
            "Dice" = 0
            "Die" = 0
            "Chance" = 0
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1
            "Dice" = 0
            "Die" = 0
            "Chance" = 0
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1
            "Dice" = 2
            "Die" = 12
            "Chance" = 100
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1
            "Dice" = 0
            "Die" = 0
            "Chance" = 0
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 1
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
        "Magic" = "nil"
        
    },
    [treasuretype]@{
        "TreasureType" = "M"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1
            "Dice" = 0
            "Die" = 0
            "Chance" = 0
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1
            "Dice" = 0
            "Die" = 0
            "Chance" = 0
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1
            "Dice" = 0
            "Die" = 0
            "Chance" = 0
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1
            "Dice" = 2
            "Die" = 4
            "Chance" = 100
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 1
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
        "Magic" = "nil"
        
    },
    [treasuretype]@{
        "TreasureType" = "N"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1
            "Dice" = 0
            "Die" = 0
            "Chance" = 0
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1
            "Dice" = 0
            "Die" = 0
            "Chance" = 0
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1
            "Dice" = 0
            "Die" = 0
            "Chance" = 0
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1
            "Dice" = 0
            "Die" = 0
            "Chance" = 0
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 1
            "Dice" = 1
            "Die" = 6
            "Chance" = 100
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
        "Magic" = "nil"
        
    },
    [treasuretype]@{
        "TreasureType" = "O"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 4
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 3
            "Chance" = 20
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
        "Magic" = "nil"
        
    },
    [treasuretype]@{
        "TreasureType" = "P"
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
            "Dice" = 1
            "Die" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Dice" = 1
            "Die" = 2
            "Chance" = 25
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
        "Magic" = "nil"
        
    },
    [treasuretype]@{
        "TreasureType" = "Q"
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
            "Dice" = 1
            "Die" = 4
            "Chance" = 50
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Dice" = 0
            "Die" = 0
            "Chance" = 0
        }
        "Magic" = "nil"
        
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
        "Magic" = "nil"
        
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

[System.Collections.ArrayList]$TableDisplay = @()

class row {
    [string]$TreasureType
    [string]$Copper
    [string]$Silver
    [string]$Electrum
    [string]$Gold
    [string]$Platinum
    [string]$Gems
    [string]$Jewelry
    [string]$MapsOrMagic
}

function Get-Nil{
    param([string]$ThisEntry)
    $Individuals = @('Copper','Silver','Electrum','Gold','Platinum')
    if($PSItem.$ThisEntry.Chance -gt 0){
        if(($Individuals -contains $ThisEntry) -and ($PSItem.$ThisEntry.Multiplier -gt 1)){
            $("$($PSItem.$ThisEntry.Dice)d$($PSItem.$ThisEntry.Die) :$($PSItem.$ThisEntry.Chance)%")
        } elseif(($Individuals -notcontains $ThisEntry) -and ($PSItem.$ThisEntry.Multiplier -eq 1)){
            $("$($PSItem.$ThisEntry.Dice)d$($PSItem.$ThisEntry.Die) :$($PSItem.$ThisEntry.Chance)%")
        } else {
            $("$($PSItem.$ThisEntry.Dice)d$($PSItem.$ThisEntry.Die) pieces per individual")
        }
    } else {
        "nil"
    }
}

$TreasureTypes.ForEach({
    $TableDisplay.Add(
        [row]@{
            "TreasureType" = $PSItem.TreasureType
            "Copper" = $(Get-Nil -ThisEntry 'Copper')
            "Silver" = $(Get-Nil -ThisEntry 'Silver')
            "Electrum" = $(Get-Nil -ThisEntry 'Electrum')
            "Gold" = $(Get-Nil -ThisEntry 'Gold')
            "Platinum" = $(Get-Nil -ThisEntry 'Platinum')
            "Gems" = $(Get-Nil -ThisEntry 'Gems')
            "Jewelry" = $(Get-Nil -ThisEntry 'Jewelry')
            "MapsOrMagic" = $PSItem.Magic
        }
    )
})

$TableDisplay | Format-Table

$MarkdownTable = @"
| Treasure Type | 1,000's of Copper | 1,000's of Silver | 1,000's of Electrum | 1,000's of Gold | 100's of Platinum | Gems | Jewelry | Maps or Magic |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---- |
"@

function New-Table{
    $TableDisplay.ForEach({
        $script:MarkdownTable = "$script:MarkdownTable`n| $($PSItem.TreasureType) | $($PSItem.Copper) | $($PSItem.Silver) | $($PSItem.Electrum) | $($PSItem.Gold) | $($PSItem.Platinum) | $($PSItem.Gems) | $($PSItem.Jewelry) | $($PSItem.MapsOrMagic) |"
    })
}

New-Table
$MarkdownTable | clip
