
do

function run(msg, matches)
local reply_id = msg['id']
local S = [[🔰اوامر الترقية

🔱رفع اداري🔱
⚜تنزيل اداري⚜
🔰رفع ادمن🔰
🔱تنزيل ادمن🔱
🔰الادمنيه🔰
⚜الادرايين⚜
🔷➖🔶➖🔷➖🔶➖🔷

⚜مطور السورس⚜

🔰@MARKOS_DEV🔰

🔱قناة السورس🔱

🔰@DEV_MARKOS🔰
 ]]
reply_msg(reply_id, S, ok_cb, false)
end

return {
description = "Help list", 
usage = "Help list",
patterns = {
"^(م2)$",
},
run = run 
}
end