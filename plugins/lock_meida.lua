--                         MADE BY MARKOS_DEV S.R.A SOURES
do 

local function pre_process(msg) 
local mohammed = msg['id'] 
local user = msg.from.id 
local chat = msg.to.id 
local moody = 'mate:'..msg.to.id 
  if redis:get(moody) and msg.media and not is_momod(msg) then 

delete_msg(msg.id, ok_cb, false) 
local test = "عزيزي~["..msg.from.first_name.."]".."\n".."👞يمنع❌ نشر📋 صور🌠 فيديوهات🎞 صوتيات 🎧وكافة الميديا هنا ان تكرر♻️ الامر سوف تجبرني😡 على 👮🏻طردك❤️🌚".."\n".." معرفك : @"..(msg.from.username or " ") 
reply_msg(mohammed, test, ok_cb, true) 

end 

        return msg 
    end 

local function MOHAMMED(msg, matches) 
local mohammed = msg['id'] 

    if matches[1] == 'قفل الوسائط'  and is_momod(msg) then 
    local th3boss= 'mate:'..msg.to.id 
    redis:set(th3boss, true) 
local boss = 'تم✔️ قفل🔐 جميع الوسائط🌚❤️\n: @'..msg.from.username..'\n'.. msg.from.id..'\n'
reply_msg(mohammed, boss, ok_cb, true) 
elseif matches[1] == 'قفل الوسائط' and not is_momod(msg) then 
local moody = 'لتبحبش للمشرفين فقط🌚🖕'
reply_msg(mohammed, moody, ok_cb, true) 
elseif is_momod(msg) and matches[1] == 'فتح الوسائط' then
local th3boss= 'mate:'..msg.to.id
redis:del(th3boss)
local boss = '☑️ تم فتح🔓 جميع الوسائط❤️🌚 \n@'..msg.from.username..'\n'.. msg.from.id..'\n'
reply_msg(mohammed, boss, ok_cb, true) 
elseif matches[1] == 'فتح الوسائط' and not is_momod(msg) then 
local moody= 'لتبحبش للمشرفين فقط🌚🖕'
reply_msg(mohammed, moody, ok_cb, true) 
end 
end 

return { 
    patterns = { 
    "^(قفل الوسائط)$", 
    "^(فتح الوسائط)$", 
  },
run = MOHAMMED, 
    pre_process = pre_process 
} 
end
--                         MADE BY MARKOS_DEV S.R.A SOURES
