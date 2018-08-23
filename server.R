#loading the library required.
library(shiny)
library(ggplot2)

# Define server logic required to draw a scatterplot of the selected x and y axis
shinyServer(function(input, output) {
        output$plot <- renderPlot({
          # draw the scatterplot for selected x and y variable
          ggplot(data = iris, aes(x = get(input$x), y = get(input$y), color = Species)) + geom_point()
    
  })
  
})
