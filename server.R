library(datasets)
data(faithful)
library(ggplot2)
mdl <- lm(waiting ~ eruptions, data = faithful)
newdat <- as.data.frame(matrix(ncol=1, nrow = 0))
x <- sample(1:250, 1)
y <- x + 20

inpDisplay <- function(erupt){
  minutes = as.integer(erupt)
  seconds = round((erupt - minutes)*60)
  inpDisp = paste(minutes, "minutes", seconds, "seconds")
  names(inpDisp) = c("Eruption duration you entered was:")
  return(inpDisp)
}


predictWait <- function(erupt) {
  newdat <- rbind(newdat, erupt) 
  names(newdat) = c("eruptions")
  wait <- predict(mdl, newdata = newdat)
  names(wait) <- c("Predicted wait time for next eruption")
  return(paste(round(wait), "minutes"))
   }

shinyServer(
  function(input, output) {
    output$newPlot <- renderPlot({
      if(input$choice == 1)
        ggplot(faithful, aes(x = eruptions, y = waiting)) + geom_point(shape=1) + labs(x = 'Previous Eruption Duration', y = 'Wait Time', title = 'Scatter Plot for Wait Time vs Previous Eruption Duration')
      else if (input$choice ==2)
        ggplot(faithful, aes(x = eruptions, y = waiting)) + geom_point(shape=1) + geom_smooth(method = lm) +labs(x = 'Previous Eruption Duration', y = 'Wait Time', title = 'Regression Line: Wait Time ~ Eruption Duration')
      else if (input$choice ==3)
        hist(faithful$waiting, xlab = "Wait Time", main = "Histogram of Wait Time", col = "orange")
      else if(input$choice ==4)
        hist(faithful$eruptions, xlab = "Eruption Duration", main = "Histogram of Eruption Duration", col = "brown")
      })
    
    output$inputValue <- renderText({inpDisplay(input$erupt)})
    output$prediction <- renderText({predictWait(input$erupt)})
  }
)