library(datasets)
function(input, output) {
  output$phonePlot <- renderPlot({
    barplot(WorldPhones[input$year,], 
            main=input$year,
            ylab="Number of Telephones",
            xlab="region")
  })
}