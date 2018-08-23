library(shiny)

# Define UI for application that draws a scatterplot
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Iris Scatterplot"),
  
  # Sidebar with variable selections
  sidebarLayout(
    sidebarPanel(
        helpText("Select the x and y variables "),
        selectInput("x",
                   label = "x:",
                   choices = c("Sepal.Length",
                               "Sepal.Width",
                               "Petal.Length",
                               "Petal.Width"),
                   selected = "Sepal.Length"),
        
        selectInput("y",
                    label = "y:",
                    choices = c("Sepal.Length",
                                "Sepal.Width",
                                "Petal.Length",
                                "Petal.Width"),
                    selected = "Petal.Length")
        
    ),
    
    # Show a scatterplot for the iris data with the selected x and y axis
    mainPanel(
       plotOutput("plot")
    )
  )
))
