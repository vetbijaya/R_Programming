library(dplyr)
a <- c('A', 'B', 'C', 'D', 'F')
b <- c(5, 5, 8, 0, 9)
df_primary <- data.frame(a, b)
df_primary
names(df_primary) <- c('ID', 'y')
df_primary

a <- c('A', 'B', 'C', 'D', 'E')
b <- c(30, 21, 22, 25, 29)
df_secondary <- data.frame(a, b)
df_secondary
names(df_secondary) <- c('ID', 'z')
df_secondary

left_join(df_primary, df_secondary, by = "ID")