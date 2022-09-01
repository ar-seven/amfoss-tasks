n,l = [int(x) for x in input().split()]  
position=[int(x) for x in input().split()]
direction=[int(x) for x in input().split()]

map=[0]*(l+2)

for i in range(n):
    map[int(position[i])]=int(direction[i])

#got position of car in map
#way is finding the car 1 which is least left or -1 to farrest right, and count time req for it to die
time=0
i=1
left=map.index(1)
reverse_map=map[::-1]
right=reverse_map.index(-1)
if left<right:
    time=l-left+1
else:
    time=l-right+1
print(time)