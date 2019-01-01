library(fmsb)

set.seed(99)
data = as.data.frame(matrix(sample(0:20 , 15 , replace = F) , ncol = 5))
colnames(data) = c("math" , "english" , "biology" , "music" , "R-coding")
rownames(data) = paste("mister" , letters[1:3] , sep = "-")

data = rbind(rep(20, 5) , rep(0, 5) , data)

radarchart(data)

colors_border = c(rgb(0.2, 0.5, 0.5, 0.9),
                  rgb(0.8, 0.2, 0.5, 0.9) ,
                  rgb(0.7, 0.5, 0.1, 0.9))
colors_in = c(rgb(0.2, 0.5, 0.5, 0.4),
              rgb(0.8, 0.2, 0.5, 0.4) ,
              rgb(0.7, 0.5, 0.1, 0.4))
radarchart(
  data  ,
  axistype = 1 ,
  pcol = colors_border ,
  pfcol = colors_in ,
  plwd = 4 ,
  plty = 1,
  cglcol = "grey",
  cglty = 1,
  axislabcol = "grey",
  caxislabels = seq(0, 20, 5),
  cglwd = 0.8,
  vlcex = 0.8
)

legend(
  x = 0.7,
  y = 1,
  legend = rownames(data[-c(1, 2),]),
  bty = "n",
  pch = 20 ,
  col = colors_in ,
  text.col = "grey",
  cex = 1.2,
  pt.cex = 3
)

colors_border = c(rgb(0.2, 0.5, 0.5, 0.9),
                  rgb(0.8, 0.2, 0.5, 0.9) ,
                  rgb(0.7, 0.5, 0.1, 0.9))
colors_in = c(rgb(0.2, 0.5, 0.5, 0.4),
              rgb(0.8, 0.2, 0.5, 0.4) ,
              rgb(0.7, 0.5, 0.1, 0.4))
radarchart(
  data[-c(1, 2),]  ,
  axistype = 0 ,
  maxmin = F,
  pcol = colors_border ,
  pfcol = colors_in ,
  plwd = 4 ,
  plty = 1,
  cglcol = "grey",
  cglty = 1,
  axislabcol = "black",
  cglwd = 0.8,
  vlcex = 0.8
)
legend(
  x = 0.7,
  y = 1,
  legend = rownames(data[-c(1, 2),]),
  bty = "n",
  pch = 20 ,
  col = colors_in ,
  text.col = "grey",
  cex = 1.2,
  pt.cex = 3
)

