test=int(input())
for i in range(test):
    n,m,v,k=[int(x) for x in input().split()]
    position=[int(x) for x in input().split()]
    map=[0]*n
    for j in range(m):
        map[position[j]-1]=1
    
    for i in range(m):
        l=r=position[i]-1
        l-=1
        r+=1
        for i in range(v*k):
            try:
                map[l]=1
                if l==0:
                    l=1
                l-=1
            except:
                pass
            try:
                map[r]=1
                r+=1
            except:
                pass
    print(map.count(0))


