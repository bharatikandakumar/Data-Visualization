# Documentation for the visualizations created for Speed Violations in Chicago


I started with working on the visualizations created during data exploration phase of the project. One major insight which was observed is that the number of speed violations continued to decrease over the years.
As it is a major insight to argue that we should continue the automated speed enforcement program, I retained that visualization and represented a forecast of how the trend could be in the following year.

![](https://github.com/bharatikandakumar/Data-Visualization/blob/master/Projects/Individual%20Project/images/1.png)

> The number of violations continues to decrease over the years. We can notice that the forecast is that the speed violations will continue to decrease.

From the above chart, I found a pattern that the violations are higher in number in the second quarter.

To represent it better, I came with the following visualization by plotting the number of violations quarterly for the years 2015 – 2018.

![](https://github.com/bharatikandakumar/Data-Visualization/blob/master/Projects/Individual%20Project/images/3.png)

I have excluded 2014 as the data starts only from second quarter. I have also excluded the current year as the second quarter’s data is still not complete as we are only in the month of April.

> The number of speed violations are highest in number in the month of May and reduces after that month.

After this point, I tried to find supporting data to find interesting patterns and came across the Red-light Violations data set.

### Intuition
A pattern where red-light violations and speed camera violations are related could help me argue the case further.

After merging the data based and plotting the trend, the following was the obtained visualization

![](https://github.com/bharatikandakumar/Data-Visualization/blob/master/Projects/Individual%20Project/images/2.png)

I did not find a pattern between them. The speed violations don’t seem to be dependent on the red-light violations.
Hence, I disregarded the red-light violations data.

Later, I found a data related to the speed camera locations in Chicago which has information regarding when and where cameras were enforced (installed and live).

### Intuition
To find a trend in the number of cameras installed over the years in Chicago.

Changed the label name from “Go-live date” to match the date variable in the speed violations data set. Linked the data based on the date.
Plotted the number of speed violation cameras installed each month over the years in Chicago.

![](https://github.com/bharatikandakumar/Data-Visualization/blob/master/Projects/Individual%20Project/images/4.png)

Rather than finding how many cameras were installed each month, I wanted to find if the overall number of cameras has increased over the time. Hence, I did a running sum of the number of speed cameras enforced over the period and obtained the following chart.

![](https://github.com/bharatikandakumar/Data-Visualization/blob/master/Projects/Individual%20Project/images/5.png)

> We can see that the number of speed cameras enforced has continued to increase from 2013 to date.

 I wanted to compare the number of speed violations with the number of cameras enforced.

 ### Intuition:
 Pattern between the number of speed violations with the number of cameras enforced.

 I came up with the following visualization

 ![](https://github.com/bharatikandakumar/Data-Visualization/blob/master/Projects/Individual%20Project/images/6.png)

 > We can infer that the speed violation trend has continued to decrease as the number of cameras enforced has increased.

From the above insight, I can make the case that the automated speed violation enforcement has reduced the number of speed violations and if the program continues, we can achieve the forecast where the number of speed violations continues to decrease.

Now, to suggest as to where our area of focus should be, I wanted to showcase the top 10 problematic areas and came up with the following top 10 violation areas by zipcode.

![](https://github.com/bharatikandakumar/Data-Visualization/blob/master/Projects/Individual%20Project/images/7.png)

In this version of the individual project , as we are trying to communicate with the Mayor, I changed the axis from zipcode to wards in Chicago.

## The first version of the visualizations after these observations are as follows

### 1. Speed Violation Trend and Forecast in Chicago
Changed the color scale ( red indicates high violations and green indicates lower number of violations)
> I have used a line chart over a bar chart as bar chart and other types of charts seemed very cluttered

![](https://github.com/bharatikandakumar/Data-Visualization/blob/master/Projects/Individual%20Project/images/1.png)

### 2. Speed Violations by quarter over the years in Chicago
Represented Q2 in a different color to highlight that the number of violations in higher in the second quarter
> I have used a bar chart as it represents very clearly that Q2 has the highest number of violations each year

![](https://github.com/bharatikandakumar/Data-Visualization/blob/master/Projects/Individual%20Project/images/3.png)

### 3. Speed Violation Cameras Enforced over the years in Chicago
Changed the color scale red representing lesser number of cameras and green representing higher number of cameras enforced.
> As I have taken running sum of violations here, I could not do a line chart. Hence using a bar chart which shows the transition smoothly

![](https://github.com/bharatikandakumar/Data-Visualization/blob/master/Projects/Individual%20Project/images/8.png)

### 4. Speed Violation decreases with the increase in speed violation cameras enforced
Color coordinated to represent we can reach greener area in speed violations (reduce violations) by reaching greener area in the speed violation cameras enforced(increase the number of speed violation cameras).

![](https://github.com/bharatikandakumar/Data-Visualization/blob/master/Projects/Individual%20Project/images/9.png)

### 5. Speed Violations by Wards in Chicago from 2019 to date
Changed the zip code to wards to present the improvement areas in a higher level rather than being more detailed. Rather than having the year scale from 2014 till date, I have included only the last year till date to represent the current situation and which areas needs improvement.
> Had a map representation initially which was very cluttered and difficult to understand and make note of the areas of improvement. A bar chart here is very precise and the areas of improvement are sorted to clearly convey the message

![](https://github.com/bharatikandakumar/Data-Visualization/blob/master/Projects/Individual%20Project/images/10.png)

> **Additional Functionalities** - After the first version was implemented, I tried to revise the visualizations further. Each of the above visualizations were enhanced to convey the story better.

## The Revised Final version of the visualizations after these observations are as follows

### 1. Speed Violation Trend and Forecast in Chicago
With the first version of the visualization, I had trouble bringing in the trend line to showcase the overall trend down in the number of speed violations in Chicago. To represent it better, removed the average line for each year, added additional x-axis for year to clearly distinguish data between years, greyed out the background grid lines and included a trend line which clearly shows that the total number of violations in Chicago had been continuously declining

![](https://github.com/bharatikandakumar/Data-Visualization/blob/master/Projects/Individual%20Project/images/final1.png)

### 2. Speed Violations by quarter over the years in Chicago
The  colors (orange and grey) as shown in the previous version did not sync up with the rest of the charts. To make sure the representations are in sync, changed the color to red and green. All Q2 of each year are highlighted in red to show that there are more violations in the second quarter. Also, a percentage of total for each quarter respective to each year is denoted to emphasis on the point that Q2 violations are higher.

![](https://github.com/bharatikandakumar/Data-Visualization/blob/master/Projects/Individual%20Project/images/final2.png)

### 3. Speed Violation Cameras Enforced over the years in Chicago
Retained the same visualization as the previous version, but enhanced it by adding a filter that dynamically reflects on the visualization to showcase the running total number of cameras enforced in Chicago. That way, we can just concentrate on the trend in different set of years.

![](https://github.com/bharatikandakumar/Data-Visualization/blob/master/Projects/Individual%20Project/images/final3.png)

### 4. Speed Violation decreases with the increase in speed violation cameras enforced
After color coordinating these two comparable insights, I have changed the bar chart for the speed violation cameras enforced to line chart to maintain consistency with the other chart represented here.

![](https://github.com/bharatikandakumar/Data-Visualization/blob/master/Projects/Individual%20Project/images/final4.png)

### 5. Speed Violations by Wards in Chicago from 2019 to date
Changed the colors from Red/Orange to Red/Green to color coordinate to the rest of the charts. From a fixed top 10 speed violation wards representation, changed it dynamic to highlight top N (1 - 50 as there are only 50 wards) problematic wards to give the flexibility to concentrate on areas depending on the budget. We can use the slider to highlight the top N violation areas of our choice. Added an additional chart which represents the streets that are part of the top N Speed Violation wards with the street with highest number  of violations represented in red and lowest in green.

![](https://github.com/bharatikandakumar/Data-Visualization/blob/master/Projects/Individual%20Project/images/final5.png)


##Conclusion

From the insights discussed above, we can conclude the following

1. The number of speed violations has continued to decrease over the years in Chicago

2. There is a continued increase in the number of speed cameras enforced.

3. We can infer that with increase in Speed camera enforcement, speed violations has been trending down.

4. The speed violations is maximum in the second quarter of every year.

##Recommendation

1. Continue the automated speed violations program.

2. Increase the number of speed violation cameras starting with the Top N wards that have the highest violations depending on the budget.

3. Concentrate on the most problematic streets in the top N violation wards.

4. Work on figuring out why the violations are higher in the second quarter and bring in enforcements to reduce that.

## My Tableau Public Profile Link
[Speed Violations Chicago Workbook Tableau Public](https://public.tableau.com/profile/bharati.pradayini.kandakumar#!/vizhome/SpeedViolationsinChicagoWorkbook/SpeedViolationsinChicagoWorkbook)

## References
1. [Speed-Camera-Violations-Dataset-Reference](https://data.cityofchicago.org/Transportation/Speed-Camera-Violations/hhkd-xvj4)

2. [Red-Light-Violations-Dataset-Reference](https://data.cityofchicago.org/Transportation/Red-Light-Camera-Violations/spqx-js37)

3. [Speed-Camera-Locations-Dataset-Reference](https://data.cityofchicago.org/Transportation/Speed-Camera-Locations/4i42-qv3h)
