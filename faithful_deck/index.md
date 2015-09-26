---
title       : Old Faithful Predictions App
subtitle    : 
author      : Bipin Karunakaran
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Overview 
The Old Faithful Geyser is the most predictable and arguably the most famous Geyser in the Yellow Stone National Park in Wyoming. The datasets package in R gives access to a data set named 'faithful' that has 272 records of wait times against prior eruption durations, over a period of itme. The App outputs exploratory charts and  predicts the wait time before next eruption, based on a predictive model fitted on this data.
- User can enter the last eruption duration
- App outputs the predicted wait time based on a regression model 
- The wait time (waiting) is the target variable and previous eruption duration (eruptions) is the predictor: lm(waiting ~ eruptions, data = faithful)
- App also displays scatter plots, regression line and histograms
- [Visit Old Faithful App](https://bkarun.shinyapps.io/faithful)
- Please read the 'about' tab for details on how to use the app 

--- .class #id 

## Prediction Model

```
## 
## Call:
## lm(formula = waiting ~ eruptions, data = faithful)
## 
## Residuals:
##      Min       1Q   Median       3Q      Max 
## -12.0796  -4.4831   0.2122   3.9246  15.9719 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  33.4744     1.1549   28.98   <2e-16 ***
## eruptions    10.7296     0.3148   34.09   <2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 5.914 on 270 degrees of freedom
## Multiple R-squared:  0.8115,	Adjusted R-squared:  0.8108 
## F-statistic:  1162 on 1 and 270 DF,  p-value: < 2.2e-16
```

--- 

## Output
- Uses the predict function on the input value to generate the prediction and display in a text box 
- Also generates 4 different plots on faithful dataset, one of which the user can select for display using the drop down option
![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-2-1.png) 

---
## Conclusion
- App created for a simple demonstration of the use of the shiny package to create interactive web applications from R, as part of the Developing Data Products Course on Coursera from Johns Hopkins University
- This presentation also demonstrates the use of Slidify for generating presentations from a markdown document
- The app can be cleaned up and provided with a professional appearance, as the creator gets more adept at using Shiny

