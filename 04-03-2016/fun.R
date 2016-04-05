library(XLConnect)  
library(plotly)
sum=0 
#HR_C={}
CR_C={}
PR_C={}
CRS={}
len<-nrow(df)

take_val<-function(HR_C)
{
wk = loadWorkbook("Time Series Data.xlsx")
df = readWorksheet(wk, sheet="Time Series Data")
for (i in 1:len-1)
{
HR_C[i]=as.numeric(df$HR.coil[i])
print(HR_C[i])
}
}

print(HR_C[1])

