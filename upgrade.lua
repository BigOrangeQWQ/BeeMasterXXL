-- BeeMasterXXL 在线升级：除 config.lua 外全部覆盖更新，data.txt 不受影响
local branch = "beta1" -- 2.9.0-beta1 改为 "beta1"，2.9.0-beta2 改为 "beta2"
local base = "https://raw.githubusercontent.com/BigOrangeQWQ/BeeMasterXXL/" .. branch .. "/"
local files = {
  "strategy.lua", "bee.lua", "analyzeGenes.lua", "beeData.lua", "bot.lua",
  "doUntil.lua", "environment.lua", "tools.lua", "biomes.lua", "mutations.lua",
  "device.lua", "apiary.lua", "installer.lua", "upgrade.lua",
  "lib/inflate-bwo.lua", "lib/nbt.lua", "lib/zzlib.lua",
}
local internet = require("internet")
require("filesystem").makeDirectory("lib")
for _, f in ipairs(files) do
  local content = ""
  for chunk in internet.request(base .. f) do
    content = content .. chunk
  end
  local file = assert(io.open(f, "w"))
  file:write(content)
  file:close()
  print("已更新 " .. f)
end
print("升级完成（config.lua、data.txt 未改动），请重新运行 bee.lua")
