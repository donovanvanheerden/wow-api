---@class ClassTalents
C_ClassTalents = {}

--- Returns true only if the player has staged changes and can commit their talents in their current state.
---@return boolean, boolean, cstring canChange, canAdd, changeError
function C_ClassTalents.CanChangeTalents() end

---@return boolean canCreate
function C_ClassTalents.CanCreateNewConfig() end

--- Returns true if the player could switch talents if they staged a proper loadout.
---@return boolean, cstring canEdit, changeError
function C_ClassTalents.CanEditTalents() end

---@param savedConfigID number @ [OPTIONAL]
---@return boolean success
function C_ClassTalents.CommitConfig(savedConfigID) end

---@param configID number 
---@return boolean success
function C_ClassTalents.DeleteConfig(configID) end

---@return number|nil activeConfigID
function C_ClassTalents.GetActiveConfigID() end

---@param specID number @ [OPTIONAL]
---@return number configIDs
function C_ClassTalents.GetConfigIDsBySpecID(specID) end

---@return boolean hasStarterBuild
function C_ClassTalents.GetHasStarterBuild() end

---@param specID number 
---@return number|nil configID
function C_ClassTalents.GetLastSelectedSavedConfigID(specID) end

---@return number|nil, number|nil nodeID, entryID
function C_ClassTalents.GetNextStarterBuildPurchase() end

---@return boolean isActive
function C_ClassTalents.GetStarterBuildActive() end

---@return boolean, number, number hasUnspentPoints, numClassPoints, numSpecPoints
function C_ClassTalents.HasUnspentTalentPoints() end

---@param configID number 
---@param entries ImportLoadoutEntryInfo 
---@param name string 
---@return boolean, cstring success, importError
function C_ClassTalents.ImportLoadout(configID, entries, name) end

--- New configs may or may not be populated and ready to load immediately after creation. Avoid calling for configs intentionally created empty.
---@param configID number 
---@return boolean isPopulated
function C_ClassTalents.IsConfigPopulated(configID) end

---@param configID number 
---@param autoApply boolean 
---@return LoadConfigResult, cstring, number result, changeError, newLearnedNodeIDs
function C_ClassTalents.LoadConfig(configID, autoApply) end

---@param configID number 
---@param name string 
---@return boolean success
function C_ClassTalents.RenameConfig(configID, name) end

---@param name string 
---@return boolean success
function C_ClassTalents.RequestNewConfig(name) end

---@param configID number 
---@return boolean success
function C_ClassTalents.SaveConfig(configID) end

---@param active boolean 
---@return LoadConfigResult result
function C_ClassTalents.SetStarterBuildActive(active) end

---@param configID number 
---@param usesShared boolean 
function C_ClassTalents.SetUsesSharedActionBars(configID, usesShared) end

---@param specID number 
---@param configID number @ [OPTIONAL]
function C_ClassTalents.UpdateLastSelectedSavedConfigID(specID, configID) end

---@class LoadConfigResult : Enum
---@field Error number @ Default value is 0
---@field NoChangesNecessary number @ Default value is 1
---@field LoadInProgress number @ Default value is 2
---@field Ready number @ Default value is 3
---@type LoadConfigResult 
Enum.LoadConfigResult = {}
Enum.LoadConfigResult["Error"] = 0
Enum.LoadConfigResult["NoChangesNecessary"] = 1
Enum.LoadConfigResult["LoadInProgress"] = 2
Enum.LoadConfigResult["Ready"] = 3

---@class ImportLoadoutEntryInfo
---@field nodeID number 
---@field ranksPurchased number 
---@field selectionEntryID number 
ImportLoadoutEntryInfo = {}

