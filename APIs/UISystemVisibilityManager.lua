---@class UISystemVisibilityManager
C_SystemVisibilityManager = {}

---@param system UISystemType 
---@return boolean visible
function C_SystemVisibilityManager.IsSystemVisible(system) end

---@class UISystemType : Enum
---@field protected InGameNavigation UISystemType 
UISystemType = {}

---@type UISystemType 
Enum.UISystemType = {}
Enum.UISystemType.InGameNavigation = 0

