## Old Faithful data analysis and wait time predictor

[Link to App](https://bkarun.shinyapps.io/faithful)

This Shiny App uses a linear regression model to predict the wait time for the next eruption based on the duration of the previous eruption. The regression model is fitted on the 'faithful' data set available on the dataset package in R.  

The user can enter the last eruption duration using the slider bar. The decimal value entered is translated to minutes and seconds and displayed on the right hand side. The predicted wait time based on the fitted regression equation is also shown, rounded to the nearest minute. 

***Display plots***

The user can view the plots on the data used to build the prediction model. Four options are provided:

1. Scatter plot 
2. Regression Line 
3. Histogram of waiting time 
4. Histogram of eruption duration. 

The user can select one of the above four, to display on the bottom right half of the page. 

  