#!/usr/bin/env pwsh

class money {
    [string]$Name
    [string]$Acronym
    [int]$Multiplier
    [int]$Low
    [int]$High
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
            "Low" = 1
            "High" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Low" = 1
            "High" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 4
            "High" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 3
            "High" = 30
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
            "Low" = 1
            "High" = 8
            "Chance" = 50
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 25
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 4
            "Chance" = 25
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 3
            "Chance" = 25
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Low" = 0
            "High" = 0
            "Chance" = 0
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 1
            "High" = 8
            "Chance" = 30
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 3
            "High" = 30
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
            "Low" = 1
            "High" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Low" = 1
            "High" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 4
            "High" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 3
            "High" = 30
            "Chance" = 50
        }
        "Magic" = "Any 3: 30%"
        
    },
    [treasuretype]@{
        "TreasureType" = "D"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Low" = 1
            "High" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 4
            "High" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 3
            "High" = 30
            "Chance" = 50
        }
        "Magic" = "Any 3: 30%"
        
    },
    [treasuretype]@{
        "TreasureType" = "E"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Low" = 1
            "High" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 4
            "High" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 3
            "High" = 30
            "Chance" = 50
        }
        "Magic" = "Any 3: 30%"
        
    },
    [treasuretype]@{
        "TreasureType" = "F"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Low" = 1
            "High" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 4
            "High" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 3
            "High" = 30
            "Chance" = 50
        }
        "Magic" = "Any 3: 30%"
        
    },
    [treasuretype]@{
        "TreasureType" = "G"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Low" = 1
            "High" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 4
            "High" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 3
            "High" = 30
            "Chance" = 50
        }
        "Magic" = "Any 3: 30%"
        
    },
    [treasuretype]@{
        "TreasureType" = "H"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Low" = 1
            "High" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 4
            "High" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 3
            "High" = 30
            "Chance" = 50
        }
        "Magic" = "Any 3: 30%"
        
    },
    [treasuretype]@{
        "TreasureType" = "1"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Low" = 1
            "High" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 4
            "High" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 3
            "High" = 30
            "Chance" = 50
        }
        "Magic" = "Any 3: 30%"
        
    },
    [treasuretype]@{
        "TreasureType" = "J"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Low" = 1
            "High" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 4
            "High" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 3
            "High" = 30
            "Chance" = 50
        }
        "Magic" = "Any 3: 30%"
        
    },
    [treasuretype]@{
        "TreasureType" = "K"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Low" = 1
            "High" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 4
            "High" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 3
            "High" = 30
            "Chance" = 50
        }
        "Magic" = "Any 3: 30%"
        
    },
    [treasuretype]@{
        "TreasureType" = "L"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Low" = 1
            "High" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 4
            "High" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 3
            "High" = 30
            "Chance" = 50
        }
        "Magic" = "Any 3: 30%"
        
    },
    [treasuretype]@{
        "TreasureType" = "M"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Low" = 1
            "High" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 4
            "High" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 3
            "High" = 30
            "Chance" = 50
        }
        "Magic" = "Any 3: 30%"
        
    },
    [treasuretype]@{
        "TreasureType" = ""
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Low" = 1
            "High" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 4
            "High" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 3
            "High" = 30
            "Chance" = 50
        }
        "Magic" = "Any 3: 30%"
        
    },
    [treasuretype]@{
        "TreasureType" = "N"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Low" = 1
            "High" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 4
            "High" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 3
            "High" = 30
            "Chance" = 50
        }
        "Magic" = "Any 3: 30%"
        
    },
    [treasuretype]@{
        "TreasureType" = "O"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Low" = 1
            "High" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 4
            "High" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 3
            "High" = 30
            "Chance" = 50
        }
        "Magic" = "Any 3: 30%"
        
    },
    [treasuretype]@{
        "TreasureType" = "P"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Low" = 1
            "High" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 4
            "High" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 3
            "High" = 30
            "Chance" = 50
        }
        "Magic" = "Any 3: 30%"
        
    },
    [treasuretype]@{
        "TreasureType" = "Q"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Low" = 1
            "High" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 4
            "High" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 3
            "High" = 30
            "Chance" = 50
        }
        "Magic" = "Any 3: 30%"
        
    },
    [treasuretype]@{
        "TreasureType" = "R"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Low" = 1
            "High" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 4
            "High" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 3
            "High" = 30
            "Chance" = 50
        }
        "Magic" = "Any 3: 30%"
        
    },
    [treasuretype]@{
        "TreasureType" = "S"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Low" = 1
            "High" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 4
            "High" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 3
            "High" = 30
            "Chance" = 50
        }
        "Magic" = "Any 3: 30%"
        
    },
    [treasuretype]@{
        "TreasureType" = "T"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Low" = 1
            "High" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 4
            "High" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 3
            "High" = 30
            "Chance" = 50
        }
        "Magic" = "Any 3: 30%"
        
    },
    [treasuretype]@{
        "TreasureType" = "U"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Low" = 1
            "High" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 4
            "High" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 3
            "High" = 30
            "Chance" = 50
        }
        "Magic" = "Any 3: 30%"
        
    },
    [treasuretype]@{
        "TreasureType" = "V"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Low" = 1
            "High" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 4
            "High" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 3
            "High" = 30
            "Chance" = 50
        }
        "Magic" = "Any 3: 30%"
        
    },
    [treasuretype]@{
        "TreasureType" = "W"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Low" = 1
            "High" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 4
            "High" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 3
            "High" = 30
            "Chance" = 50
        }
        "Magic" = "Any 3: 30%"
        
    },
    [treasuretype]@{
        "TreasureType" = "X"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Low" = 1
            "High" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 4
            "High" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 3
            "High" = 30
            "Chance" = 50
        }
        "Magic" = "Any 3: 30%"
        
    },
    [treasuretype]@{
        "TreasureType" = "Y"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 25
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 30
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 6
            "Chance" = 35
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 10
            "Chance" = 40
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Low" = 1
            "High" = 4
            "Chance" = 25
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 4
            "High" = 40
            "Chance" = 60
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 3
            "High" = 30
            "Chance" = 50
        }
        "Magic" = "Any 3: 30%"
        
    },
    [treasuretype]@{
        "TreasureType" = "Z"
        "Copper" = [money]@{
            "Name" = "copper"
            "Acronym" = "cp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 3
            "Chance" = 20
        }
        "Silver" = [money]@{
            "Name" = "silver"
            "Acronym" = "sp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 4
            "Chance" = 25
        }
        "Electrum" = [money]@{
            "Name" = "electrum"
            "Acronym" = "ep"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 4
            "Chance" = 25
        }
        "Gold" = [money]@{
            "Name" = "gold"
            "Acronym" = "gp"
            "Multiplier" = 1000
            "Low" = 1
            "High" = 4
            "Chance" = 30
        }
        "Platinum" = [money]@{
            "Name" = "platinum"
            "Acronym" = "pp"
            "Multiplier" = 100
            "Low" = 1
            "High" = 6
            "Chance" = 30
        }
        "Gems" = [money]@{
            "Name" = "gem"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 10
            "High" = 60
            "Chance" = 55
        }
        "Jewelry" = [money]@{
            "Name" = "jewelry"
            "Acronym" = ""
            "Multiplier" = 1
            "Low" = 5
            "High" = 30
            "Chance" = 50
        }
        "Magic" = "Any 3 magic: 50%"
        
    }
)

$TreasureTypes
