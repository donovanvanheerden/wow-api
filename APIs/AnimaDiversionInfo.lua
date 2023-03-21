---@class AnimaDiversionInfo
C_AnimaDiversion = {}

function C_AnimaDiversion.CloseUI() end

---@return AnimaDiversionNodeInfo animaNodes
function C_AnimaDiversion.GetAnimaDiversionNodes() end

---@return vector2|nil normalizedPosition
function C_AnimaDiversion.GetOriginPosition() end

---@return number progress
function C_AnimaDiversion.GetReinforceProgress() end

---@return textureKit textureKit
function C_AnimaDiversion.GetTextureKit() end

function C_AnimaDiversion.OpenAnimaDiversionUI() end

---@param talentID number 
---@param temporary boolean 
function C_AnimaDiversion.SelectAnimaNode(talentID, temporary) end

---@class AnimaDiversionNodeState : Enum
---@field protected Unavailable AnimaDiversionNodeState 
---@field protected Available AnimaDiversionNodeState 
---@field protected SelectedTemporary AnimaDiversionNodeState 
---@field protected SelectedPermanent AnimaDiversionNodeState 
---@field protected Cooldown AnimaDiversionNodeState 
Enum.AnimaDiversionNodeState = {}

Enum.AnimaDiversionNodeState.Unavailable = 0
Enum.AnimaDiversionNodeState.Available = 1
Enum.AnimaDiversionNodeState.SelectedTemporary = 2
Enum.AnimaDiversionNodeState.SelectedPermanent = 3
Enum.AnimaDiversionNodeState.Cooldown = 4

---@class AnimaDiversionCostInfo
---@field currencyID number 
---@field quantity number 
AnimaDiversionCostInfo = {}

---@class AnimaDiversionFrameInfo
---@field textureKit textureKit 
---@field title string 
---@field mapID number 
AnimaDiversionFrameInfo = {}

---@class AnimaDiversionNodeInfo
---@field talentID number 
---@field name string 
---@field description string 
---@field costs table 
---@field currencyID number 
---@field icon number 
---@field normalizedPosition vector2 
---@field state AnimaDiversionNodeState 
AnimaDiversionNodeInfo = {}

