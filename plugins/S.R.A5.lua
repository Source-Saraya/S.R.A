
do

function run(msg, matches)
local reply_id = msg['id']
local S = [[🔱اوامر المعلومات🔱

🔰ايدي🔰لاظهار ايدي المجموعه🔰
⚜ايدي⚜لاظهار ايدي الشخص بلرد⚜
🔱معلوماتي🔱اضهار معلوماتك🔱
🔰الاعدادات🔰عرض اعدادات المجموعه🔰
⚜اعدادات الوسائط⚜عرض الوسائط المقفولة⚜

🔱مطور السورس🔱

🔰@MAEKOS_DEV🔰

🔱قناة السورس🔱

🔰@DEV_MARKOS🔰
 ]]
reply_msg(reply_id, S, ok_cb, false)
end

return {
description = "Help list", 
usage = "Help list",
patterns = {
"^(م3)$",
},
run = run 
}
end