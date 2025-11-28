-- ⭐ Universal SaveInstance Loader with Terrain & Progress Monitor ⭐
-- Repository: https://github.com/igennzyyy/saveinstanceterrain
-- Modified by: igennzyyy

local Params = {
    RepoURL = "https://raw.githubusercontent.com/igennzyyy/saveinstanceterrain/main/",
    SSI = "saveinstance",
}

print("🔄 Loading SaveInstance with Terrain Support...")
print("📦 Repository: github.com/igennzyyy/saveinstanceterrain")

-- Load SaveInstance
local success, result = pcall(function()
    return game:HttpGet(Params.RepoURL .. Params.SSI .. ".luau", true)
end)

if not success then
    warn("❌ Failed to load SaveInstance: " .. tostring(result))
    return
end

print("✅ Script loaded successfully!")

-- Execute
local synsaveinstance = loadstring(result, Params.SSI)()

-- Options (kosongkan untuk default dengan terrain & progress support)
local Options = {
    -- Uncomment untuk custom settings:
    -- mode = "full",
    -- FilePath = "MyGame",
    -- timeout = 30,
    -- ShowStatus = true,
}

print("🚀 Starting SaveInstance with Terrain...")
synsaveinstance(Options)
