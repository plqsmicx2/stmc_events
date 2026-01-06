# helper function that removes placed blocks
# this function is run in stmc:blitz

# remove placed concrete
fill 0 85 0 150 175 150 air replace #stmc:concrete
fill 0 85 0 -150 175 150 air replace #stmc:concrete
fill 0 85 0 150 175 -150 air replace #stmc:concrete
fill 0 85 0 -150 175 -150 air replace #stmc:concrete

# remove placed planks
fill 0 85 0 150 175 150 air replace oak_planks
fill 0 85 0 -150 175 150 air replace oak_planks
fill 0 85 0 150 175 -150 air replace oak_planks
fill 0 85 0 -150 175 -150 air replace oak_planks

# remove placed ladders
fill 0 85 0 150 175 150 air replace ladder
fill 0 85 0 -150 175 150 air replace ladder
fill 0 85 0 150 175 -150 air replace ladder
fill 0 85 0 -150 175 -150 air replace ladder