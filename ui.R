library(shiny)

shinyUI(pageWithSidebar(
  headerPanel('Developing Data Products - Course Project'),
  sidebarPanel(
    h3('How it works?'),
    p('Interactive result will be shown after Gross horsepower, No. of cylinders and Weight (lbs) was entered. '),
    p('Please enter your value below:-'),
    numericInput('hp', 'Horsepower No:', 50, min = 50, max = 330, step = 10), 
    radioButtons('cyl', 'No. of Cylinders:', c('4' = 4, '6' = 6, '8' = 8), selected = '4'), 
    numericInput('wt', 'Weight (lbs):', 1500, min = 1500, max = 5500, step = 100)
    ),
  mainPanel(
    h6('Developed by ShuYi'),
    h3('Miles Per Gallon (MPG) Prediction'),
    h4('Input Parameters:'),
    verbatimTextOutput("inpVal"),
    h4('Result'),
    verbatimTextOutput("prediction"),
    h4('Graphical result view based on mtcar dataset'),
    plotOutput('plots'),
    h3('Strategy'),
    p('Linear model is used for this study based on the mtcars dataset. This study measures the Miles Per Gallon (MPG) Prediction
      based on the 3 paramaters (Horsepower No, No. of Cylinders and Weight (lbs)) from the value input by user.')
    )
))