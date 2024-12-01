local template = [=[
---
---When initializing a client, a table of options can be passed to the constructor. A variety of sanity checks are performed on client initialization and while authenticating. Invalid options will result in an error being thrown while unusual options may log a client warning.
---
---An example of using client options:
---
---```lua
---local discordia = require('discordia')
---
---local client = discordia.Client {
---	logFile = 'mybot.log',
---	cacheAllMembers = true,
---}
---```
---
---@class discordia.client_options: table
---@field routeDelay? number # Minimum time in milliseconds to wait between HTTP requests per-route.<br>**Default:** `300`.
---@field maxRetries? integer # The maximum number of retries to attempt after an HTTP request fails.<br>**Default:** `5`
---@field shardCount? integer # The total number of shards the application is using (0 signals to use the recommended count).<br>**Default:** `0`
---@field firstShard? integer # The ID of the first shard to run on the client (0 is the minimum).<br>**Default:** `0`
---@field lastShard? integer # The ID of the last shard to run on the client (-1 signals to use `shardCount - 1`).<br>**Default:** `-1`
---@field largeThreshold? integer # Limit to how many members are initially fetched per-guild on start-up.<br>**Default:** `100`.
---@field cacheAllMembers? boolean # Whether to cache all members (If false, offline members may not be cached).<br>**Default:** `false`.
---@field autoReconnect? boolean # Whether to attempt to reconnect after an unexpected gateway disconnection.<br>**Default:** `true`.
---@field compress? boolean # Whether to allow for compressed gateway payloads.<br>**Default:** `true`.
---@field bitrate? integer # The default bitrate to use for voice connections, from 8000 to 128000.<br>**Default:** `64000`.
---@field logFile? string # The file to use for logging.<br>**Default:** `'discordia.log'`.
---@field logLevel? discordia.enums.logLevel_value # The level to use for logging (see [Enumerations](https://github.com/SinisterRectus/Discordia/wiki/Enumerations)).<br>**Default:** `enums.logLevel.info`.
---@field dateTime? string # The date and time format to use logging.<br>**Default:** `'%F %T'`.
---@field syncGuilds? boolean # Whether to automatically sync all guilds on start up (user-accounts only).<br>**Default:** `false`.
---@field gatewayIntents? integer # Represents which intents to use. The default includes all non-privileged intents.<br>**Default:** `3243773`.
local client_options = {}
]=]

return function(w)
  w(template)
end
