n=int(input())
s=input()


s=list(s)

if n%2==0:
    r=int(n/2)
else:
    r=int(n//2)+1

if s[::-1]==s:
    pass
else:
    for i in range(len(s)//2):
        t=s[i]
        for j in range (i+1,len(s)-i):
            if s[j]==t:
                s[j],s[-1-i]=s[-1-i],s[j]
                break
        else:
            s=s[:i]+s[i+1:]

single=[]

for i in range(len(s)):
    if s.count(s[i])==1 and i!=r-1:
        single.append(i)

for i in single:
    s=s[:i]+s[i+1:]


print(len(s))
print(''.join(s))