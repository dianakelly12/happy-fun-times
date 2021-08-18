install.packages(c("car", "ggplot2"))
library(car)
car::scatterplot(mpg~disp, data=mtcars)
plot(mtcars$disp, mtcars$mpg)
abline(lm(mpg ~ disp, data = mtcars))
car::scatterplot(mpg ~ disp, 
                 data = mtcars)
library(ggplot2)
ggplot(data = mtcars, 
       mapping = aes(x = disp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm") +
  theme_minimal ()

install.packages('plotly')  
plotly::ggplotly(my_plot)

install.packages(c("readr", "data.table"))

st_joe_land <- read.csv(file = "stJoeLand.csv")
names(st_joe_land_datatable)[names(st_joe_land_datatable) == "Zip Code"] <- 
  "Zip_Code"

save(st_joe_land, st_joe_land_datatable, file = "stJoeInfo.RData")
load("stJoeInfo.RData")
