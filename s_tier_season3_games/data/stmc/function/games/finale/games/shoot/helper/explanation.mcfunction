# this function delivers the explanation of how FIGHT will work

# blurb #1
execute if score shoot.handler shoot.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score shoot.handler shoot.timer.explanation matches 1 run tellraw @a {text:"This round is a crossbow duel. Arrow damage has been tweaked to kill in exactly 4 hits",color:"green"}
execute if score shoot.handler shoot.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score shoot.handler shoot.timer.explanation matches 1 run tellraw @a {text:"The last team standing will win the round.",color:"green"}
execute if score shoot.handler shoot.timer.explanation matches 1 run tellraw @a {text:" "}

# blurb #2
execute if score shoot.handler shoot.timer.explanation matches 100 run tellraw @a {text:" "}
execute if score shoot.handler shoot.timer.explanation matches 100 run tellraw @a {text:"Each team will have the same gear.",color:green}
execute if score shoot.handler shoot.timer.explanation matches 100 run tellraw @a {text:" "}
execute if score shoot.handler shoot.timer.explanation matches 100 run tellraw @a {text:"Regeneration is disabled for this round.",color:green}
execute if score shoot.handler shoot.timer.explanation matches 100 run tellraw @a {text:" "}
execute if score shoot.handler shoot.timer.explanation matches 100 run tellraw @a {text:"After 60 seconds, all players will begin glowing.",color:green}
execute if score shoot.handler shoot.timer.explanation matches 100 run tellraw @a {text:" "}

# blurb #3
execute if score shoot.handler shoot.timer.explanation matches 200 run tellraw @a {text:" "}
execute if score shoot.handler shoot.timer.explanation matches 200 run tellraw @a {text:"The walls will open in about 10 seconds.",color:"green"}
execute if score shoot.handler shoot.timer.explanation matches 200 run tellraw @a {text:" "}
execute if score shoot.handler shoot.timer.explanation matches 200 run tellraw @a {text:"Good luck!",color:"green"}
execute if score shoot.handler shoot.timer.explanation matches 200 run tellraw @a {text:" "}

execute if score shoot.handler shoot.timer.explanation matches 200.. run scoreboard players set shoot.handler shoot.stage 2