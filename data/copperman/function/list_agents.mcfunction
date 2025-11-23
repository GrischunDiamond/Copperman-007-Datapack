execute as @a[tag=q] run tellraw @a[tag=trigger_user] ["",{"selector":"@s"},{"text":" is Q"}]
execute as @a[tag=agents] run tellraw @a[tag=trigger_user] ["",{"selector":"@s"},{"text":" is an Agent"}]

tag @a remove trigger_user