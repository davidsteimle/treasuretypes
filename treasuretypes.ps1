#!/usr/bin/env pwsh

class money {
    [string]$Name
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

