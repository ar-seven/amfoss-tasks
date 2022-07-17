
#got to know how tricky a simple question can be
N,M = [int(x) for x in input().split()]  

odd=[]
gf_rounds=0

while N%2 == 0: gf_rounds+=1;N=N//2
    
for i in range(1,M+1):
    sadeesh_rounds=0
    j=i
    while j%2==0 :sadeesh_rounds+=1;j=j//2
    if sadeesh_rounds<gf_rounds:
        odd.append(i)

print(len(odd));print(*odd)