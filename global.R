install.packages('quantmod')
library(quantmod)
SYMBOLS <- stockSymbols()
library(shiny)

ui <-fluidPage(
  
  
  selectInput("select", label = h3("Choose a Stock"), 
              choices = names(table(SYMBOLS$Name)), 
              selected = 1)
  

  
)
server <- function(input, output) {
  
  output$value <- renderPrint({ input$select })
  
}