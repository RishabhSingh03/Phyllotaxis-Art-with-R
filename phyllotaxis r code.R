rm(list=ls())
#dev.off(dev.list()["RStudioGD"])
library(ggplot2)
points =1000
g_angle = pi * (3-sqrt(5))
angle=(1:points)*g_angle
radius = sqrt(1:points)
phyllotaxis= data.frame(n=1:points, angle, radius)

phyllotaxis$x = phyllotaxis$radius * cos(phyllotaxis$angle)
phyllotaxis$y = phyllotaxis$radius * sin(phyllotaxis$angle)
phyllotaxis$color = phyllotaxis$n
phyllotaxis$size = sqrt(phyllotaxis$n)/15

phyllotaxis_image = ggplot(phyllotaxis, aes(x=x, y=y))+geom_point(aes(color = color, size=size), alpha = 0.7)+scale_color_gradient(low="pink", high="purple")+theme_void()+theme(legend.position = "none")

print(phyllotaxis_image)
