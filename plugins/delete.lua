
local function history(extra, suc, result) 
  for i=1, #result do 
    delete_msg(result[i].id, ok_cb, false)
  end 
  if tonumber(extra.con) == #result then 
    send_msg(extra.chatid, '"'..#result..' "تم حذف 🗑الرسائل✉️ المطلوبة 🎩كبد عمري🌚❤️', ok_cb, false) 
  else 
send_msg(extra.chatid, 'تم ✔️التنضيف 🗑بنجاح🔰 كبد عمري🌚❤️', ok_cb, false) 
end 
end 
local function BRWUEN(msg, matches) 
  if matches[1] == 'امسح' and is_owner(msg) then 
    if msg.to.type == 'channel' then 
    if tonumber(matches[2]) > 100000 or tonumber(matches[2]) < 1 then 
        return "يمكنك وضع عدد 100000 رسالة او اقل فقط" 
      end 
      get_history(msg.to.peer_id, matches[2] + 1 , history , {chatid = msg.to.peer_id, con = matches[2]}) 
    else 
      return "" 
    end 
  else 
    return "لتبحبش🌚🖕" 
  end 
end 
return { 
    patterns = { 
        '^(مسح) (%d*)$' 
    }, 
    run = BRWUEN
}
