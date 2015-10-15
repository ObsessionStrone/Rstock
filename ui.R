library(shiny)
library(ggplot2)

 
dataset <- iris
 
shinyUI(pageWithSidebar(
 
  headerPanel("石头的测试数据"),
  sidebarPanel(
 
    selectInput('x', 'X', names(dataset)),
    selectInput('y', 'Y', names(dataset)[2]),
    selectInput('color', 'Color', c('None', names(dataset))),
 
    checkboxInput('smooth', 'Smooth')
    ),
 
  mainPanel(
    plotOutput('plot')
  )
))