# this function delivers the explanation of how SOLVE will work

# every 8 seconds, each blurb will be told to the players

# blurb #1
execute if score solve.handler solve.timer.explanation matches 1 run title @a title {text:"SOLVE",color:"yellow"}
execute if score solve.handler solve.timer.explanation matches 1 run tellraw @a {text:"---------------------------------------------------",color:"gray"}
execute if score solve.handler solve.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score solve.handler solve.timer.explanation matches 1 run tellraw @a {text:"Solve is a team-based puzzle game.",color:"yellow"}
execute if score solve.handler solve.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score solve.handler solve.timer.explanation matches 1 run tellraw @a {text:"Your objective is to progress through the rooms as fast as possible.",color:"yellow"}
execute if score solve.handler solve.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score solve.handler solve.timer.explanation matches 1 run tellraw @a {text:"---------------------------------------------------",color:"gray"}

# blurb #2
execute if score solve.handler solve.timer.explanation matches 160 run tellraw @a {text:"---------------------------------------------------",color:"gray"}
execute if score solve.handler solve.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score solve.handler solve.timer.explanation matches 160 run tellraw @a {text:"Each room will present a unique puzzle.",color:"yellow"}
execute if score solve.handler solve.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score solve.handler solve.timer.explanation matches 160 run tellraw @a {text:"To complete a room, all four players must be in the hallway leading into the next room.",color:"yellow"}
execute if score solve.handler solve.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score solve.handler solve.timer.explanation matches 160 run tellraw @a {text:"---------------------------------------------------",color:"gray"}

# blurb #3
execute if score solve.handler solve.timer.explanation matches 320 run tellraw @a {text:"---------------------------------------------------",color:"gray"}
execute if score solve.handler solve.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score solve.handler solve.timer.explanation matches 320 run tellraw @a [{text:"You will earn +",color:yellow},{text:"125",color:red},{text:" points for completing each room.",color:yellow}]
execute if score solve.handler solve.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score solve.handler solve.timer.explanation matches 320 run tellraw @a {text:"All points will be split evenly within each team.",color:yellow}
execute if score solve.handler solve.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score solve.handler solve.timer.explanation matches 320 run tellraw @a {text:"---------------------------------------------------",color:"gray"}

# blurb #4
execute if score solve.handler solve.timer.explanation matches 480 run tellraw @a {text:"---------------------------------------------------",color:"gray"}
execute if score solve.handler solve.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score solve.handler solve.timer.explanation matches 480 run tellraw @a {text:"You will earn the following points based on your final ranking:",color:"yellow"}
execute if score solve.handler solve.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score solve.handler solve.timer.explanation matches 480 run tellraw @a [{text:"1st: +",color:"yellow"},{text:"440",color:"red"},{text:" points",color:"yellow"}]
execute if score solve.handler solve.timer.explanation matches 480 run tellraw @a [{text:"2nd: +",color:"yellow"},{text:"365",color:"red"},{text:" points",color:"yellow"}]
execute if score solve.handler solve.timer.explanation matches 480 run tellraw @a [{text:"3rd: +",color:"yellow"},{text:"300",color:"red"},{text:" points",color:"yellow"}]
execute if score solve.handler solve.timer.explanation matches 480 run tellraw @a [{text:"4th: +",color:"yellow"},{text:"240",color:"red"},{text:" points",color:"yellow"}]
execute if score solve.handler solve.timer.explanation matches 480 run tellraw @a [{text:"5th: +",color:"yellow"},{text:"160",color:"red"},{text:" points",color:"yellow"}]
execute if score solve.handler solve.timer.explanation matches 480 run tellraw @a [{text:"6th: +",color:"yellow"},{text:"100",color:"red"},{text:" points",color:"yellow"}]
execute if score solve.handler solve.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score solve.handler solve.timer.explanation matches 480 run tellraw @a {text:"---------------------------------------------------",color:"gray"}

# blurb #5
execute if score solve.handler solve.timer.explanation matches 640 run tellraw @a {text:"---------------------------------------------------",color:"gray"}
execute if score solve.handler solve.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score solve.handler solve.timer.explanation matches 640 run tellraw @a {text:"You will also earn the following points based on your ranking in each room:.",color:"yellow"}
execute if score solve.handler solve.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score solve.handler solve.timer.explanation matches 640 run tellraw @a [{text:"1st: +",color:"yellow"},{text:"180",color:"red"},{text:" points",color:"yellow"}]
execute if score solve.handler solve.timer.explanation matches 640 run tellraw @a [{text:"2nd: +",color:"yellow"},{text:"120",color:"red"},{text:" points",color:"yellow"}]
execute if score solve.handler solve.timer.explanation matches 640 run tellraw @a [{text:"3rd: +",color:"yellow"},{text:"89",color:"red"},{text:" points",color:"yellow"}]
execute if score solve.handler solve.timer.explanation matches 640 run tellraw @a [{text:"4th: +",color:"yellow"},{text:"60",color:"red"},{text:" points",color:"yellow"}]
execute if score solve.handler solve.timer.explanation matches 640 run tellraw @a [{text:"5th: +",color:"yellow"},{text:"40",color:"red"},{text:" points",color:"yellow"}]
execute if score solve.handler solve.timer.explanation matches 640 run tellraw @a [{text:"6th: +",color:"yellow"},{text:"20",color:"red"},{text:" points",color:"yellow"}]
execute if score solve.handler solve.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score solve.handler solve.timer.explanation matches 640 run tellraw @a {text:"---------------------------------------------------",color:"gray"}

# blurb #6
execute if score solve.handler solve.timer.explanation matches 799 run tellraw @a {text:"---------------------------------------------------",color:"gray"}
execute if score solve.handler solve.timer.explanation matches 799 run tellraw @a {text:" "}
execute if score solve.handler solve.timer.explanation matches 799 run tellraw @a {text:"The first hallway opens in about 20 seconds.",color:"yellow"}
execute if score solve.handler solve.timer.explanation matches 799 run tellraw @a {text:" "}
execute if score solve.handler solve.timer.explanation matches 799 run tellraw @a {text:"Good luck!",color:"yellow"}
execute if score solve.handler solve.timer.explanation matches 799 run tellraw @a {text:" "}
execute if score solve.handler solve.timer.explanation matches 799 run tellraw @a {text:"---------------------------------------------------",color:"gray"}