# Aggregation of metals val
library(XLConnect)  
library(plotly)
wk = loadWorkbook("Time Series Data.xlsx") 
df = readWorksheet(wk, sheet="Time Series Data")
#print(class(df))
sum=0
HR_C={}
CR_C={}
PR_C={}
CRS={}
len <- nrow(df)
#HR_Coil
for (i in 1:len-1)
{
  HR_C[i]= as.numeric(df$HR.coil[i])
}

hc=sum(HR_C)
print(hc)
#CR_Coil
for (i in 1:len-1)
{
  CR_C[i]= as.numeric(df$CR.coil[i])
}

cc=sum(CR_C)
print(cc)
#pig_iron
for (i in 1:len-1)
{
  PR_C[i]= as.numeric(df$Pig.Iron[i])
}

pr=sum(PR_C)
print(pr)

#carbon steel 
for (i in 1:len-1)
{
  CRS[i]= as.numeric(df$Carbon.steel.EN8[i])
}

cr=sum(CRS)
print(cr)
#Rubber
RBR={}
for (i in 1:len-1)
{
  RBR[i]= as.numeric(df$Rubber[i])
}

rb=sum(RBR)
print(rb)
#Copper
CPR={}
for (i in 1:len-1)
{
  CPR[i]= as.numeric(df$Copper[i])
}

cp=sum(CPR)
print(cp)
#Zinc
Zc={}
for (i in 1:len-1)
{
  Zc[i]= as.numeric(df$Zinc[i])
}

zn=sum(Zc)
print(zn)
#lead
ld={}
for (i in 1:len-1)
{
  ld[i]= as.numeric(df$Lead[i])
}

l=sum(ld)
print(l)
#Aluminum
Ai={}
for (i in 1:len-1)
{
  Ai[i]= as.numeric(df$Aluminium.Ingot[i])
}

a=sum(Ai)
print(a)
#Tin
Tin={}
for (i in 1:len-1)
{
  Tin[i]= as.numeric(df$Tin[i])
}

t=sum(Tin)
print(t)
#Nickel
Nik={}
for (i in 1:len-1)
{
  Nik[i]= as.numeric(df$Nickel[i])
}

n=sum(Nik)
print(n)
#Base oil
Bo={}
for (i in 1:len-1)
{
  Bo[i]= as.numeric(df$Base.Oil.US..Ton.[i])
}

b=sum(Bo)
print(b)

Aggregation <- c(hc,cc,pr,cr,rb,cp,zn,l,a,t,n,b)

tlist <- c(hc,cc,pr,cr,rb,cp,zn,l,a,t,n,b)
print(plt)

Metals = c("HR coil","CR Coil","PigIron","carbon steel","Rubber","Cu","Zinc","pb","Al","gold","Baseoil")

plot_ly(df, x= Metals,y=Aggregation, type="bar",text=rownames(df))

#add_trace(Aggregation ~ Metals)
layout(title = "Time Series Data",showlegend = FALSE) 

# Production of Time series 

wb2 = loadWorkbook("Time Series Data.xlsx")
chick = readWorksheet(wb2, sheet="Time Series Data",1,2, 60,13 ,header = TRUE)
c={}
d={}

for (i in 1:58)
{
  for (j in 1:12)
  {
    c[j]=chick[i,j]
    d[i]=sum(c)
    
    
  }
  c=0
}
print(d[1])
Timeline <- df$Commodity
Production <- d
#main plot
plot_ly(df, x = Timeline, y = Production, text = paste("Commodity: ", df$Commodity))

relation<-lm(CR_C~HR_C)
a<-data.frame(x=median(HR_C))
result<-predict(relation,a)
j=1
for (i in 60:79)
{

HR_C[i]=result[j]
j=j+1


}









# Subplots of Time series aggregation and production 
p <- subplot(
  plot_ly(df, x = Timeline, y = Production, text = paste("Commodity: ", df$Commodity)),
  plot_ly(df, x= Metals,y=Aggregation, type="bar",text=rownames(df)),
  margin = 0.05,
  nrows=2
) %>% layout(title="Time Series", showlegend = TRUE)
p









