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
$tta = [treasuretype]@{
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
    
}
)
