
do

local function mohammed(msg, matches)
local reply_id = msg['id']
if is_sudo(msg) and matches[1]== "م المطور" then
local S = [[  🔰اوامر المطور🔰

⚜ترقيه سوبر⚜ترقيه الكروب سوبر⚜
🔰تفعيل المجموعه🔰لتفعيل المجموعه🔰
🔱تعطيل المجموعه🔱لتعطيل المجموعه🔱
🔰اذاعه🔰للنشر داخل مجموعات البوت🔰
⚜اضف مطور⚜لاضافة مطور⚜
🔰جلب ملف🔰لجلب ملف من السيرفر🔰
🔱isup+رابط السيرفر لتحسين التوقف🔱
🔰isup+رابط السيرفر لتحسين السيرفر🔰

🔱مطور السورس🔱

🔰@MAEKOS_DEV🔰

🔱قناة السورس🔱

🔰@DEV_MARKOS🔰
]]
reply_msg(reply_id, S, ok_cb, false)
end

if not is_sudo(msg) then
local S = "لتبحبش انته مو مطور😑🖕🏻"
reply_msg(reply_id, S, ok_cb, false)
end

end
return {
description = "Help list", 
usage = "Help list",
patterns = {
"^(م المطور)$",
},
run = mohammed 
}
end
