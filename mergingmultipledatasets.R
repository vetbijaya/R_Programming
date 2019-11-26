df1 = data.frame(id=c('1','73','2','10','43'),v1=c(1,2,3,4,5)) 
df1
df2 = data.frame(id=c('7','23','57','2','62','96'),v2=c(1,2,3,4,5,6))
df2
df3 = data.frame(id=c('23','62'),v3=c(1,2)) 
df3
# merge three datasets
df4<- Reduce(function(...) merge(..., all=TRUE), list(df1, df2, df3))
df4
