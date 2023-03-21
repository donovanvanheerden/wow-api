---@class TooltipComparison
C_TooltipComparison = {}

---@param comparisonItem TooltipComparisonItem 
---@param equippedItem TooltipComparisonItem 
---@param pairedItem TooltipComparisonItem @ [OPTIONAL]
---@param addPairedStats boolean @ Whether the paired item's stats are added or subtracted [OPTIONAL]
---@return string lines
function C_TooltipComparison.GetItemComparisonDelta(comparisonItem, equippedItem, pairedItem, addPairedStats) end

---@param comparisonItem TooltipComparisonItem 
---@return TooltipItemComparisonInfo info
function C_TooltipComparison.GetItemComparisonInfo(comparisonItem) end

---@class TooltipComparisonMethod : Enum
Enum.TooltipComparisonMethod = {}
---@type TooltipComparisonMethod 
Enum.TooltipComparisonMethod.Single = 0
---@type TooltipComparisonMethod 
Enum.TooltipComparisonMethod.WithBothHands = 1
---@type TooltipComparisonMethod 
Enum.TooltipComparisonMethod.WithBagMainHandItem = 2
---@type TooltipComparisonMethod 
Enum.TooltipComparisonMethod.WithBagOffHandItem = 3

---@class TooltipItemComparisonInfo
---@field method TooltipComparisonMethod 
---@field item TooltipComparisonItem 
---@field additionalItems table 
TooltipItemComparisonInfo = {}

