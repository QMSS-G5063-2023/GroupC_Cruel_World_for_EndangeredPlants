#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# Define UI
ui <- fluidPage(
  titlePanel("Yearly mentions of top 5 observed endangered species in NY Times"),
  sidebarLayout(
    sidebarPanel(
      checkboxGroupInput("species", label = "Select species to display:",
                         choices = unique(NLP_cleaned$scientific_name),
                         selected = unique(NLP_cleaned$scientific_name))
    ),
    mainPanel(
      plotOutput("linechart")
    )
  )
)

# Define server
server <- function(input, output) {
  
  # Filter data based on user input
  filtered_data <- reactive({
    NLP_cleaned %>% filter(scientific_name %in% input$species)
  })
  
  output$linechart <- renderPlot({
    # Create smoother curves on lines
    chart1 <- ggplot(data = filtered_data()) +
      geom_smooth(aes(x = year, y = n, colour = scientific_name), method = "loess", se = FALSE) +
      labs(x = 'Year', y = "Total Number of Article Mentions", color = "Species' Common Name") +
      theme_minimal() +
      scale_x_continuous(breaks=seq(2000, 2022, 5)) +
      ggtitle("Yearly mentions of top 5 observed endangered species in NY Times") +
      theme(plot.title = element_text(size = 10, face = "bold")) +
      ggeasy::easy_center_title()
    
    chart1
  })
}

# Run the app
shinyApp(ui = ui, server = server)


