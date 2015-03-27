library(shiny)
 

shinyUI(pageWithSidebar(
 
  headerPanel("Shiny Demo For GSOC 2015"),
 
  sidebarPanel(
    selectInput("variable", "Variable 1:",
                list("Sepal Length" = "Sepal.Length",
                     "Sepal Width"  = "Sepal.Width",
                     "Petal Length" = "Petal.Length",
                     "Petal Width"  = "Petal.Width")),
 
    selectInput("variable2", "Variable 2:",
                list("Sepal Length" = "Sepal.Length",
                     "Sepal Width"  = "Sepal.Width",
                     "Petal Length" = "Petal.Length",
                     "Petal Width"  = "Petal.Width"))
  ),
 
  mainPanel(
     h3(textOutput("caption")),
     plotOutput("plot")
  )
))
