library(shiny)
library(datasets)
library(ggplot2)
 
iris_data <- iris
 
# server logic for variables
shinyServer(function(input, output) {
 
  # reactive changing versus text
  text <- reactive({
     paste(input$variable, 'v/s', input$variable2)
  })
 
  # returning as text form the selected variable
  output$caption <- renderText({
    text()
  })
 
  # generating a plot of the variables selected
  output$plot <- renderPlot({
     p <- ggplot(iris_data, aes_string(x=input$variable, y=input$variable2, colour="Species")) + geom_point()
     print(p)
  })
})
