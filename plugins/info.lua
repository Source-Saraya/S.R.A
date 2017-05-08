
do 
function run(msg, matches) 
local reply_id = msg['id'] 

local info = ' ايديك🌚🎩: '..msg.from.id..'\n'
..'معرفك 🌚🎩: @'..msg.from.username..'\n'
..' اسمك الاول 🎩: '..(msg.from.first_name or '')..'\n'
..'اسمك الثاني🎩 : '..(msg.from.lastname or '')..'\n'
..'ايدي المجموعه🆔🎩 : '..msg.to.id..'\n'
..'اسم المجموعه هوة 👥 : '..msg.to.title..'\n'
..'رقمك🎩🌚: '..(msg.from.phone or " لُايَوَجْدِ ⛔️‼️"..'\n'
..'رسالتك🎩✉️ : '..msg.text..'\n'
..' انت  الان في🎩: ' ..msg.to.type..'\n'
..' الوقت🎩⏰: '..os.date(' %T', os.time()))..'\n'
..'التاريخ📅🎩 : '.. os.date('!%A %B:%d:%Y\n', timestamp)..'\n' 
..'رابط حسابك حبي🌚🎩: telegram.me/'..msg.from.username..'\n'
reply_msg(reply_id, info, ok_cb, false) 
end 

return { 
patterns = { 
"^معلوماتي" 
}, 
run = run 
} 

end 
