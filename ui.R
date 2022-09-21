#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that predicts MPG
shinyUI(fluidPage(

    # Application title
    titlePanel("Predictions on the mtcars dataset."),

    # Sidebar with numeric inputs and a select box input
    sidebarLayout(
        sidebarPanel(
            h2("Vehicle details:"),
            numericInput("weight", "	Weight (1000 lbs):", 0),
            numericInput("hp", "Horsepower:", 0),
            selectInput("cyl", "Number of cylinders:", c(4, 6, 8)),
            actionButton("action", "Calculate"),
        ),

        # Show the predicted MPG output
        mainPanel(
            h3("Predicted MPG:"),
            h4(textOutput("pred"))
        )
    )
))
