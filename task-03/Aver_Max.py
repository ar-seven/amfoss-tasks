t=int(input())
output=[]
for i in range(t):
    n,k = [int(x) for x in input().split()]  
    data = [float(x) for x in input().split()]
    largest=0
    #we just have to find largest number after moding in the list
    if k>0:
        for i in range(n):
            if data[i]<0: 
                data[i]=-1*data[i]     
        output.append(max(data))
    
    else:
        output.append(max(data))

for i in output:
    if "." in str(i):
        print((i))
    else:
        print(int(i))
