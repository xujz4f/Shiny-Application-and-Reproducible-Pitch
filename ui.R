library(datasets)

fluidPage(    
  titlePanel("Telephones by region and year"),
  sidebarLayout(      
    sidebarPanel(
      selectInput("year", "year:", 
                  choices=rownames(WorldPhones)),
      hr(),
      helpText("Data from AT&T (1961) The World's Telephones.")
    ),
    mainPanel(
      plotOutput("phonePlot")  
    )
  )
)