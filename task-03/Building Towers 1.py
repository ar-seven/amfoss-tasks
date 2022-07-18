n=int(input())
list=[int(i) for i in input().split()]
original=[]
for i in list: original.append(i) if i not in original else None
print(list.count(max(list,key=list.count)),end=' ')
print(len(original))