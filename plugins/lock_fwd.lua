do
local function pre_procces(msg) 
 
local hash = "lock:"..msg.to.id 
  
if redis:get(hash) 
and msg.fwd_from 
and not is_momod(msg) 
then  
delete_msg(msg.id,ok_cb,true)  
reply_msg(msg.id,"✋🏻😒ممنوع عمل اعادة توجيه اذا قمت/ي بعمل اعادة توجيه مرة ثانية سوف اقوم بطردك/ي من المجموعه ❌  ",ok_cb,true) 
redis:del(hash) 
kick_user("user#id:"..msgfrom.id,"chat#id:"..msg.to.id) 
 

end 
return msg  
end
 
 

local function run(msg,maches) 
local hash = "lock:"..msg.to.id 


if matches[1] == "قفل التوجيه" 
and is_momod(msg) 
then 
redis:set(hash,true) 
return "✅🔐تم قفل اعاده توجيه"  
 
 
elseif matches[1] == "قفل التوجيه"  
and not is_momod(msg) 
then
return "😹🌚لا تبحبش للادمنيه فقط" 

 
elseif matches[1] == "فتح التوجيه"  
 
and is_momod(msg) 
then  
redis:del(hash)  
return "تم فتح اعاده توجيه ✅🔓" 

 
 
end  
 
end 
return { 
patterns = { 
"^[/#!](قفل التوجيه) $", 
"^[/#!](فتح التوجيه)$" 
}, 
run = run, 
pre_procces = pre_procces 
} 

end
