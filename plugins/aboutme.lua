do
function run(msg, matches)
local reply_id = msg['id']

local me = '•Your Name : '..msg.from.first_name..'\n'
..'♦Your User : '..msg.from.id..'\n'
..'♦Your Username : @'..msg.from.username..''
reply_msg(reply_id, me, ok_cb, false)
end

return {
patterns = {
"^[!/#][Aa]boutme"
},
run = run
}

end
