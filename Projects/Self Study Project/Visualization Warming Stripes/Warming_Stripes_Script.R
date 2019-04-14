#installing the lubridate and tidyverse libraries
if(!require("lubridate")) install.packages("lubridate")
if(!require("tidyverse")) install.packages("tidyverse")

#adding libraries needed
library(tidyverse)
library(lubridate)
library(RColorBrewer)

#importing the annual temperatures of Bangalore from year 1881 to 2019
climate_bangalore <- read_csv("Bangalore_Climate_Change.csv")

# check if data is added correctly
str(climate_bangalore)

#select only the annual temperature and year column
climate_bangalore_year <- select(climate_bangalore,YEAR,metANN)

#rename the temperature column
climate_bangalore_year <- rename(climate_bangalore_year,temperature_annual=metANN)

#check missing values 999.9
summary(climate_bangalore_year)

#replacing missing values 999.9 with NA
climate_bangalore_year <- mutate(climate_bangalore_year,temperature_annual=ifelse(temperature_annual==999.9,NA,temperature_annual))

#converting year to date object with format(year month day)
climate_bangalore_year <- mutate(climate_bangalore_year,date=str_c(YEAR,"01-01",sep="-")%>%ymd())

#Creating the strips (default theme - theme_minimal)
theme_warming_strip <- theme_minimal()+
  theme(axis.text.y = element_blank(),
        axis.line.y = element_blank(),
        axis.title = element_blank(),
        panel.grid.major=element_blank(),
        legend.title = element_blank(),
        axis.text.x=element_text(vjust=3),
        panel.grid.minor=element_blank(),
        plot.title=element_text(size=14,face="bold")
  )

# adding additonal colors from RColorBrewer (adding blue and red)
col_strip <- brewer.pal(11,"RdBu")

# RColorBrewer information
brewer.pal.info

# creating dummy value for y axis and adjusting the width of the color bar in the legend
ggplot(climate_bangalore_year, aes(x=date,y=1,fill=temperature_annual))+
  geom_tile()+
  scale_x_date(date_breaks = "6 years",
               date_labels = "%Y",
               expand=c(0,0))+
  scale_y_continuous(expand=c(0,0))+
  scale_fill_gradientn(colors=rev(col_strip))+
  guides(fill=guide_colorbar(barwidth = 1))+
  labs(title="Bangalore 1880-2018",
       caption="Climate Change Analysis")+
  theme_warming_strip
