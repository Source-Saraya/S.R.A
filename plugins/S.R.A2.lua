
do

function run(msg, matches)
local reply_id = msg['id']
  local S = [[⚜السورس⚜

🔰S.R.A🔰

⚜الاصدار⚜

🔰V1🔰

⚜رابط السورس⚜

🔰https://github.com/Source-Saraya/S.R.A.git 🔰

⚜مطور السورس⚜

🔰@MARKOS_DEV🔰

⚜قناة السورس⚜

🔰@DEV_MARKOS🔰]]
reply_msg(reply_id, S, ok_cb, false)
end

return {
  patterns = {
"^(الاصدار)$","^(السورس)$",
  }, 
  run = run 
}

end