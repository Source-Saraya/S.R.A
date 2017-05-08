
do 
local function run(msg, matches) 
if ( msg.text ) then
  if ( msg.to.type == "user" ) then
     return [[
       🔰البوت الذي يعمل على كروبات السوبر🔰

تم صنع البوت بواسطة المطور🔰

🔰DEV:@MARKOS_DEV🔰

🔰DEV:CHANNEL:@DEV_MARKOS🔰

🔰BOT:@hussein99hu_bot🔰

🔰مطور السورس🔰

🔰@MARKOS_DEV🔰

🔰قناة السورس🔰

🔰@DEV_MARKOS🔰

🔰بوت تواصل للمحضورين🔰

🔰@hussein99hu_bot🔰 ]]
    end 
  end 
end 
return { 
  patterns = { 
     "(.*)$"
  }, 
  run = run 
} 

end
