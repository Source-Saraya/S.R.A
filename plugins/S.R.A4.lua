
do

local function run(msg, matches)
local reply_id = msg['id']
if is_momod(msg) and matches[1]== 'م1' then
local S = [[do
local function run(msg, matches)
local reply_id = msg['id']
if is_momod(msg) and matches[1]== 'م1' then
local S = [[ ⚜اوامر الحماية⚜
🔰قفل🔐/فتح🔓الصور🏔🔰
⚜قفل🔐/فتح🔓الملصقات⚜
🔰قفل🔐/فتح🔓الروابط🔰
⚜قفل🔐/فتح🔓الصوت⚜
🔰قفل🔐/فتح🔓الفيديو🔰
⚜قفل🔐/فتح🔓الدردشه⚜
🔰قفل🔐/فتح🔓الاضافه🔰
⚜قفل🔐/فتح🔓الفايلات⚜
🔰قفل🔐/فتح🔓الكلايش🔰
⚜قفل🔐/فتح🔓التكرار⚜
🔰قفل🔐/فتح🔓اعاده توجيه🔰
⚜قفل🔐/فتح🔓الجماعية⚜
🔰قفل🔐/فتح🔓العربيه🔰
➖🔹➖🔸➖🔹➖🔸➖🔹➖ا
🔱اوامر التحكم🔱
🔱القوانين🔱لعرض القوانين🔱
🔰ضع قوانين🔰لوضع قوانين🔰
🔱ضع وصف🔱لوضع وصف لمجموعة🔱
🔰ضع اسم🔰اوضع اسم للمجموعة🔰
🔱ضع معرف🔱لوضع معرف للمجموعه🔱
🔰ضع صوره🔰لوضع صورة للمجموعه🔰
⚜تغير الرابط⚜لتغير الرابط⚜
🔰الرابط خاص🔰للحصول على الرابط🔰
🔱الرابط🔱لعرض الرابط في المجموعة🔱
🔱مطور السورس🔱
🔰@MARKOS_DEV🔰
⚜قناة السورس⚜
🔰@DEV_MARKOS🔰
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
"^(م1)$",
},
run = run 
}
end

