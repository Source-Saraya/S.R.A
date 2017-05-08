do
    
local function run(msg,matches)
    if matches[1] == "chat_add_user"  then 
      return "🎩{اهلا وسهلا بك نورت/ي كبد عمري❤️🌚}\n".."🎩{ اسم المجموعة }"..msg.to.title.."\n".."🎩{ ايدي المجموعة  }"..msg.to.id.."\n".."🎩{ اضافك }"..(msg.from.first_name or " ").."\n".."🎩{ معرف الي اضافك  }@"..(msg.from.username or " ").."\n".."🎩 { معرفك }@"..(msg.action.user.username or " ")
    elseif matches[1] == "chat_add_user_link" then
        return "اهلا وسهلا بك نورت/ي كبد عمري❤️🌚 \n".."🎩{اسم المجموعة} "..msg.to.title.."\n".."🎩{ايدي المجموعة} "..msg.to.id.."\n".."🎩{اسمك الاول}: "..msg.from.first_name.."\n🎩{اسمك الاخير}:"..(msg.from.last_name or " لايوجد" ).."\n ".. "🎩{معرفك}: @"..(msg.from.username or "لايوجد " ).."\n".."🎩{ايديك}:"..msg.from.id
    end
end
return {
    patterns = {
        "^!!tgservice (chat_add_user)$",
        "^!!tgservice (chat_add_user_link)$"
       
    },
 run = run,
}
end
