--                         made by @markos_dev      saraya source
  do

local function who_me(msg, matches)
   if is_sudo(msg) and matches[1] == "موقعي" then
         return " انت المطور مالتي 🙈💗 "

   elseif is_momod(msg) and matches[1] == "موقعي" then
         return "انت ادمن بس لتكمز😹😹🌚"

   elseif is_owner(msg) and matches[1] == "موقعي" then
         return "انت مجرد مشرف😄🍃"
         
   elseif matches[1] == "موقعي" then
         return "انت مضحكة اقصد عضو😹🌚❤️"

   end
end

return {  
  patterns = {
        "^(موقعي)$"
 },
  run = who_me,
}

end
--                          made by @markos_dev        saraya source                           --