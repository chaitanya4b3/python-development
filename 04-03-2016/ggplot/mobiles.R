

new=read.csv("mobiles.csv",header=TRUE,sep=",")
print(class(new))
total=nrow(new)
names1<-c("total","Using","not using")
count=0
lis={}
for (i in 1:total)
{
pos=regexpr('Yes', new$val[i])
print(pos)
if(pos==1)
{
count=count+1
}
}
remaining=total-count
val=c(total,count,remaining)
barplot(val,names.arg=names1,main="Mobile Usage",col="blue",border="red")
count_a=0;
for (i in 1:count)
{
pos1=regexpr('APPLE',new$Company[i])
if(pos1==1)
{
count_a=count_s+1

}
}
count_s=0;
for (i in 1:count)
{
pos1=regexpr('SAMSUNG',new$Company[i])
if(pos1==1)
{
count_s=count_s+1

}
}
count_c=0;
for (i in 1:count)
{
pos1=regexpr('CELKON',new$Company[i])
if(pos1==1)
{
count_c=count_s+1

}
}
count_m=0;
for(in 1:count)
{
pos1=regexpr('Micromax',new$Company[6])
if(pos1==1)
{
count_m=count_m+1
print(count_m)
}
}
print(count_m)

par(mfrow=c(2,2))
names2<-c("Apple","Samsung","Celkon")
val2=c(count_a,count_s,count_C)
barplot(val,names.arg=names1,main="Mobile Usage",col="blue",ylim = c(0, 32100),border="red")
barplot(val2,names.arg=names2,main="Individual Stats",col="blue",ylim = c(0, 10000),border="red")
barplot(val2,names.arg=names2,main="Individual Stats",col="blue",ylim = c(0, 10000),border="red")
barplot(val2,names.arg=names2,main="Individual Stats",col="blue",ylim = c(0, 10000),border="red")


new=read.csv("mobiles.csv",header=TRUE,sep=",")
total=nrow(new)
names1<-c("total","Using","not using")
count=0
lis={}
for (i in 1:total)
{
pos=regexpr('Yes', new$val[i])
print(pos)
if(pos==1)
{
count=count+1
}
}
remaining=total-count
val=c(total,count,remaining)
barplot(val,names.arg=names1,main="Mobile Usage",col="blue",ylim = c(0, 200),border="red")
count_a=0;
for (i in 1:count)
{
pos1=regexpr('APPLE',new$Company[i])
if(pos1==1)
{
count_a=count_s+1

}
}
count_s=0;
for (i in 1:count)
{
pos1=regexpr('SAMSUNG',new$Company[i])
if(pos1==1)
{
count_s=count_s+1

}
}
count_c=0;
for (i in 1:count)
{
pos1=regexpr('CELKON',new$Company[i])
if(pos1==1)
{
count_c=count_s+1

}
}
count_m=0;
for(in 1:count)
{
pos1=regexpr('Micromax',new$Company[6])
if(pos1==1)
{
count_m=count_m+1
print(count_m)
}
}
print(count_m)

par(mfrow=c(2,2))
names2<-c("Apple","Samsung","Celkon","Micromax")
val2=c(count_a,count_s,count_c,count_m)
barplot(val,names.arg=names1,main="Mobile Usage",col="blue",ylim = c(0, 100),border="red")
barplot(val2,names.arg=names2,main="Individual Stats",col="blue",ylim = c(0, 10),border="red")
barplot(val2,names.arg=names2,main="Individual Stats",col="blue",ylim = c(0, 10),border="red")
barplot(val2,names.arg=names2,main="Individual Stats",col="blue",ylim = c(0, 10),border="red")

p <- ggplot(data = val2, aes(x = , y = price))

(gg <- ggplotly(p))

