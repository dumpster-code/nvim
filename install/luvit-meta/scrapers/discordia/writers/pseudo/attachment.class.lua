local template = [[
---@class discordia.aliases.Attachment: table
---@field id string # attachment id
---@field filename string # name of file attached
---@field title? string # the title of the file
---@field description? string # description for the file (max 1024 characters)
---@field content_type? string # the attachment's media type
---@field size integer # size of file in bytes
---@field url string # source url of file
---@field proxy_url string # a proxied url of file
---@field height? integer # height of file (if image)
---@field width? integer # width of file (if image)
---@field ephemeral? boolean # whether this attachment is ephemeral
---@field duration_secs? number # the duration of the audio file (currently for voice messages)
---@field waveform? string # base64 encoded bytearray representing a sampled waveform (currently for voice messages)
---@field flags? integer # attachment flags combined as a bitfield
]]

return function (w)
  w(template)
end
