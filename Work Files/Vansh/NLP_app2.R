#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/

#
library(shiny)
library(ggplot2)

# Define UI
ui <- fluidPage(
  titlePanel("Total Yearly Endangered Species Observations"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("year", "Year:", min = 2000, max = 2022, step = 1, value = 2000)
    ),
    mainPanel(
      plotOutput("map")
    )
  )
)

# Define server
server <- function(input, output) {
  
  # Filter data based on user input
  filtered_data <- reactive({
    data_cleaned %>% filter(year == input$year)
  })
  
  output$map <- renderPlot({
    # Define color scale
    boolColors <- as.character(c("EX"="#BD0026", "CR"="#F03B20", "EN" = "#FD8D3C","VU" = "#FECC5C", "NT" = "#FFFFB2"))
    boolScale <- scale_colour_manual(name="IUCN Category", values=boolColors)
    
    # Define plot
    ggplot() +
      geom_polygon(data = us, aes(x = long, y = lat)) + 
      xlim(-130,-60) +
      geom_point(data = filtered_data(), aes(x = decimalLongitude, y = decimalLatitude, 
                                             color = iucn_category), size = 0.25, 
                 breaks = c("EX", "CR", "EN","VU","NT"), 
                 values=c("#BD0026", "#F03B20", "#FD8D3C","#FECC5C","#FFFFB2" )) + 
      boolScale +
      coord_fixed() +
      theme_void() +
      labs(title = paste0("Year ", input$year))
  })
}

# Run the app
shinyApp(ui = ui, server = server)

    

