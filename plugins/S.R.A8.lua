do

local function run(msg, matches)
local reply_id = msg['id']
if is_momod(msg) and matches[1]== 'م1' then
local S = [[do
local function run(msg, matches)
local reply_id = msg['id']
if is_momod(msg) and matches[1]== 'م1' then
local S = [[🔰حظر عام🔰لحظر العضو عام🔰
⚜قائمه المحضورين⚜لعرض المحضورين⚜
🔰مغادره🔰لمغادره المجموعه🔰
⚜حظر⚜لحظر عضو⚜
🎩الغاء الحظر🎩لالغاء الحضر🎩
🔰الغاء العام🔰لالغاء الحضر العام🔰
⚜ايدي⚜لعرض الايدي⚜
]]
reply_msg(reply_id, S, ok_cb, false)
end

if not is_momod(msg) then
local S = "للمشرفين فقط 😎🖕🏿"
reply_msg(reply_id, S, ok_cb, false)
end

end
return {
description = "Help list", 
usage = "Help list",
patterns = {
"^(م4)$",
},
run = run 
}
end