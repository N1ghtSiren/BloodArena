local RANGE = 50 -- Расстояние, на котором проходит проверка
local rect  ---@type rect
local item  ---@type item

local function init_pathability()
	rect = Rect(0., 0., 128., 128.)
	item = CreateItem("wolg", 0, 0)
	SetItemVisible(item, false)
end

local items = {} ---@type table
local function hide()
	local target = GetEnumItem()
	if not IsItemVisible(target) then
		return
	end
	table.insert(items, target)
	SetItemVisible(target, false)
end

---@param x real
---@param y real
---@return boolean
function IsTerrainWalkable(x, y)
	MoveRectTo(rect, x, y)
	EnumItemsInRect(rect, nil, hide)

	SetItemPosition(item, x, y)
	local dx = GetItemX(item) - x
	local dy = GetItemY(item) - y
	SetItemVisible(item, false)

	for i = 1, #items do
		SetItemVisible(items[i], true)
	end
	items = {}

	return dx * dx + dy * dy <= RANGE * RANGE and not IsTerrainPathable(x, y, PATHING_TYPE_WALKABILITY)
end

init_pathability()