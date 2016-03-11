local function run(msg, matches)
  if is_chat_msg(msg) then
    local text = [[
  Commands list :
!kick [username|id]
You can also do it by reply
!ban [ username|id]
You can also do it by reply
!unban [id]
You can also do it by reply
!who
Members list
!modlist
Moderators list
!promote [username]
Promote someone
!demote [username]
Demote someone
!kickme
Will kick user
!about
Group description
!setphoto
Set and locks group photo
!setname [name]
Set group name
!rules
Group rules
!id
return group id or user id
!help
Returns help text
!lock [links|flood|spam|Arabic|member|rtl|sticker|contacts|strict]
Lock group settings
*rtl: Kick user if Right To Left Char. is in name*
!unlock [links|flood|spam|Arabic|member|rtl|sticker|contacts|strict]
Unlock group settings
*rtl: Kick user if Right To Left Char. is in name*
!mute [all|audio|gifs|photo|video]
mute group message types
*If "muted" message type: user is kicked if message type is posted 
!unmute [all|audio|gifs|photo|video]
Unmute group message types
*If "unmuted" message type: user is not kicked if message type is posted 
!set rules <text>
Set <text> as rules
!set about <text>
Set <text> as about
!settings
Returns group settings
!muteslist
Returns mutes for chat
!muteuser [username]
Mute a user in chat
*user is kicked if they talk
*only owners can mute | mods and owners can unmute
!mutelist
Returns list of muted users in chat
!newlink
create/revoke your group link
!link
returns group link
!owner
returns group owner id
!setowner [id]
Will set id as owner
!setflood [value]
Set [value] as flood sensitivity
!stats
Simple message statistics
!save [value] <text>
Save <text> as [value]
!get [value]
Returns text of [value]
!clean [modlist|rules|about]
Will clear [modlist|rules|about] and set it to nil
!res [username]
returns user id
"!res @username"
!log
Returns group logs
!banlist
will return group ban list
**You can use "#", "!", or "/" to begin all commands
*Only owner and mods can add bots in group
*Only moderators and owner can use kick,ban,unban,newlink,link,setphoto,setname,lock,unlock,set rules,set about and settings commands
*Only owner can use res,setowner,promote,demote and log commands
]],
	help_text_super =[[
SuperGroup Commands:
!info
Displays general info about the SuperGroup
!admins
Returns SuperGroup admins list
!owner
Returns group owner
!modlist
Returns Moderators list
!bots
Lists bots in SuperGroup
!who
Lists all users in SuperGroup
!block
Kicks a user from SuperGroup
*Adds user to blocked list*
!ban
Bans user from the SuperGroup
!unban
Unbans user from the SuperGroup
!id
Return SuperGroup ID or user id
*For userID's: !id @username or reply !id*
!id from
Get ID of user message is forwarded from
!kickme
Kicks user from SuperGroup
*Must be unblocked by owner or use join by pm to return*
!setowner
Sets the SuperGroup owner
!promote [username|id]
Promote a SuperGroup moderator
!demote [username|id]
Demote a SuperGroup moderator
!setname
Sets the chat name
!setphoto
Sets the chat photo
!setrules
Sets the chat rules
!setabout
Sets the about section in chat info(members list)
!save [value] <text>
Sets extra info for chat
!get [value]
Retrieves extra info for chat by value
!newlink
Generates a new group link
!link
Retireives the group link
!rules
Retrieves the chat rules
!lock [links|flood|spam|Arabic|member|rtl|sticker|contacts|strict]
Lock group settings
*rtl: Delete msg if Right To Left Char. is in name*
*strict: enable strict settings enforcement (violating user will be kicked)*
!unlock [links|flood|spam|Arabic|member|rtl|sticker|contacts|strict]
Unlock group settings
*rtl: Delete msg if Right To Left Char. is in name*
*strict: disable strict settings enforcement (violating user will not be kicked)*
!mute [all|audio|gifs|photo|video|service]
mute group message types
*A "muted" message type is auto-deleted if posted
!unmute [all|audio|gifs|photo|video|service]
Unmute group message types
*A "unmuted" message type is not auto-deleted if posted
!setflood [value]
Set [value] as flood sensitivity
!settings
Returns chat settings
!muteslist
Returns mutes for chat
!muteuser [username]
Mute a user in chat
*If a muted user posts a message, the message is deleted automaically
*only owners can mute | mods and owners can unmute
!mutelist
Returns list of muted users in chat
!banlist
Returns SuperGroup ban list
!clean [rules|about|modlist|mutelist]
!del
Deletes a message by reply
!public [yes|no]
Set chat visibility in pm !chats or !chatlist commands
!res [username]
Returns users name and id by username
!log
Returns group logs
*Search for kick reasons using [#RTL|#spam|#lockmember]
**You can use "#", "!", or "/" to begin all commands
*Only owner can add members to SuperGroup
(use invite link to invite)
*Only moderators and owner can use block, ban, unban, newlink, link, setphoto, setname, lock, unlock, setrules, setabout and settings commands
*Only owner can use res, setowner, promote, demote, and log commands
]
    return text
  else
    local text = [[aaa]]
    --return text
  end
end

return {
  description = "Help plugin. Get info from other plugins.  ", 
  usage = {
    "!help: Show list of plugins.",
  },
  patterns = {
    "^/(help)$",
  }, 
  run = run,
}
