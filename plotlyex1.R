library('plotly')
data("cars")

USPersonalExpenditure <- data.frame('Categorie'=rownames(USPersonalExpenditure), USPersonalExpenditure)
data <- USPersonalExpenditure[,c('Categorie', 'X1960')]

p <- plot_ly(data, labels = ~Categorie, values = ~X1960, type = 'pie') %>%
  layout(title = 'United States Personal Expenditures by Categories in 1960',
         xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

df <- cars%>% select(speed) %>% group_by(speed) %>% count()
p2 <- plot_ly(data = cars, values = ~speed, type = 'pie')
p3 <- plot_ly(data = df, labels = ~speed, values = ~n, type = 'pie')
(p4 <- plot_ly(data = df, x = ~speed, y = ~n, type = 'bar'))

p4 %>% layout(title = 'test')

(p5 <- plot_ly(data = df, x = ~speed, y = ~n))
