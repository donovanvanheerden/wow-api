---@param name cstring @ [OPTIONAL]
---@param templateName cstring @ [OPTIONAL]
---@param order number @ [OPTIONAL]
---@overload fun(templateName:cstring, order:number)
---@overload fun(order:number)
---@overload fun()
---@return SimpleControlPoint point
function CreateControlPoint(name, templateName, order) end


---@return ScriptObject scriptObject
function GetControlPoints() end


---@return CurveType curveType
function GetCurveType() end


---@return number maxOrder
function GetMaxControlPointOrder() end

---@param curveType CurveType 
function SetCurveType(curveType) end

