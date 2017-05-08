
do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
 if matches[1] == 'اضف مطور' then
        chat = 'chat#'..msg.to.id
        user1 = 'user#'..18293081
        chat_add_user(chat, user1, callback, false)
	return "تم ✔️اضافة مطور 👱🏻للمجموعه🌚❤️"
      end
if matches[1] == 'اضف مطور' then
        chat = 'chat#'..msg.to.id
        user2 = 'user#'..18293081
        chat_add_user(chat, user2, callback, false)
	return "تم ✔️اضافة مطور 👱🏻للمجموعه🌚❤️"
      end
 
 end

return {
  description = "Invite Sudo and Admin", 
  usage = {
    "/addsudo : invite Bot Sudo", 
	},
  patterns = {
    "^(اضف مطور)",
    "^(اضف مطور)",
    
  }, 
  run = run,
}


end
