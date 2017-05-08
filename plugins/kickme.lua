--                            MADE BY @MARKOS_DEV S.R.A SUORES
local function run(msgmatches)
  local chat= get receiver(msg)
  local user= "user#id"..msg.from.id
  if matches[1] == "اطردني" and 
  is_chat_msg(msg)then
  chat_del_user(chat,user,ok_cb)
  end
end
return {
  description = "لطرد نفسك من المجموعة.", 
  usage = {
    "/اطردني : Kick yourself from group",
  },
  patterns = {
    "^/(اطردني)$",
  }, 
  run = run,
}
--                                MADE BY @MARKOS_DEV S.R.A SUORES    