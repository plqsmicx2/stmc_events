# this function delivers the explanation of how FIGHT will work

# blurb #1
execute if score sumo.handler sumo.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score sumo.handler sumo.timer.explanation matches 1 run tellraw @a {text:"This round is a sumo duel.",color:"green"}
execute if score sumo.handler sumo.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score sumo.handler sumo.timer.explanation matches 1 run tellraw @a {text:"The last team on the platform will win the round.",color:"green"}
execute if score sumo.handler sumo.timer.explanation matches 1 run tellraw @a {text:" "}

# blurb #2
execute if score sumo.handler sumo.timer.explanation matches 100 run tellraw @a {text:" "}
execute if score sumo.handler sumo.timer.explanation matches 100 run tellraw @a {text:"The walls will open in about 10 seconds.",color:"green"}
execute if score sumo.handler sumo.timer.explanation matches 100 run tellraw @a {text:" "}
execute if score sumo.handler sumo.timer.explanation matches 100 run tellraw @a {text:"Good luck!",color:"green"}
execute if score sumo.handler sumo.timer.explanation matches 100 run tellraw @a {text:" "}

execute if score sumo.handler sumo.timer.explanation matches 100.. run scoreboard players set sumo.handler sumo.stage 2