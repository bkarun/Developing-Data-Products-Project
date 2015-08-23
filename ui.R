library(shiny)
library(markdown)

shinyUI(navbarPage("old Faithful Predictions",
      tabPanel("Main page",
      sidebarPanel(
    sliderInput('erupt', 'Enter Last eruption duration', value = 0, min = 0.0167, max = 10, step = 0.0167
                , post = "mins", sep = "", ticks = FALSE),
    
    selectInput('choice', 'View data plot', c("Scatter Plot" = "1", "Regression Line" = "2", 
                      "Histogram of Wait Time" = "3", "Histogram of Eruption Durations" = "4")
                      , selected = "1")
    
  ),
  mainPanel(
    h3('Results of prediction model'),
    h4('Last eruption duration entered:'),
    verbatimTextOutput("inputValue"),
    h4('Predicted wait time before next eruption:'),
    verbatimTextOutput("prediction"), 
    plotOutput('newPlot')
  )
),

tabPanel("About",
         mainPanel(
           includeMarkdown("about.md")
         )
         
         )

))
