n,m = [int(x) for x in input().split()]  
dev= [int(i) for i in input().split()]
ps= [int(i) for i in input().split()]

ps.sort()
dev.sort()

min = 0
index = 0
c=0
for i in dev:
    for j in ps:
        if j>i:
            min+=j
            ps.remove(j)
            c+=1
            break
if n > m or c < n:
    print("NO")
else:
    print("YES",min,sep="\n")