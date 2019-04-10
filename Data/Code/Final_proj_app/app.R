#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

#### Load packages ----
library(shiny)
library(shinythemes)
library(tidyverse)


setwd("/Users/carolinewatson/Documents/Spring 2019/Environmental Data Analyitics/Env_Data_Analytics")
#### Load data ----
carbon_data <- read_csv("Data/Raw/NTL-LTER_Lake_Carbon_Raw.csv")
carbon_data$sampledate <- as.Date(carbon_data$sampledate, format = "%m/%d/%y")

carbon_data <- carbon_data %>%
  filter(depth_id > 0) %>%
  select(lakename, sampledate, depth_id, doc) %>%
  na.omit()


#### Define UI ----
ui <- fluidPage(theme = shinytheme("yeti"),
                titlePanel("Dissolved Organic Carbon in Lakes in Wisconsin"),
                sidebarLayout(
                  sidebarPanel(
                    
                    # Select nutrient to plot
                    selectInput(inputId = "y", 
                                label = "Dissolved Organic Carbon",
                                choices = c("doc"), 
                                selected = "doc"),
                    
                    # Select depth
                    checkboxGroupInput(inputId = "fill",
                                       label = "Depth ID",
                                       choices = unique(carbon_data$depth_id),
                                       selected = c(1, 7)),
                    
                    # Select lake
                    checkboxGroupInput(inputId = "shape",
                                       label = "Lake",
                                       choices = c("Crampton Lake", "East Long Lake", "Hummingbird Lake", "Long Lake", 
                                                   "Morris Lake", "North Gate Bog", "Peter Lake", "Paul Lake", 
                                                   "Reddington Lake", "Roach Lake", "Tender Bog", 
                                                   "Tuesday Lake", "Ward Lake", "West Long Lake"),
                                       selected = "Peter Lake"),
                    
                    # Select date range to be plotted
                    sliderInput(inputId = "x",
                                label = "Date",
                                min = as.Date("1995-05-22"),
                                max = as.Date("2015-08-26"),
                                value = c(as.Date("1995-05-01"), as.Date("1999-12-31")))),
                  
                  # Output: Description, lineplot, and reference
                  mainPanel(
                    plotOutput("scatterplot", brush = brushOpts(id = "scatterplot_brush")), 
                    tableOutput("mytable")
                  )))

#### Define server  ----
server <- function(input, output) {
  
  # Define reactive formatting for filtering within columns
  filtered_carbon_data <- reactive({
    carbon_data %>%
      filter(sampledate >= input$x[1] & sampledate <= input$x[2]) %>%
      filter(depth_id %in% input$fill) %>%
      filter(lakename %in% input$shape) 
  })
  
  # Create a ggplot object for the type of plot you have defined in the UI  
  output$scatterplot <- renderPlot({
    ggplot(filtered_carbon_data(), 
           aes_string(x = "sampledate", y = input$y, 
                      fill = "depth_id", shape = "lakename")) +
      geom_point(alpha = 0.8, size = 2) +
      theme_classic(base_size = 14) +
      scale_shape_manual(values = c(21, 24)) +
      labs(x = "Date", y = expression(Concentration ~ (mu*g / L)), shape = "Lake", fill = "Depth ID") +
      scale_fill_distiller(palette = "YlOrBr", guide = "colorbar", direction = 1)
    #scale_fill_viridis_c(option = "viridis", begin = 0, end = 0.8, direction = -1)
  })
  
  # Create a table that generates data for each point selected on the graph; lets you select shapes on a graph  
  output$mytable <- renderTable({
    brush_out <- brushedPoints(filtered_nutrient_data(), input$scatterplot_brush)
  })
  
}


#### Create the Shiny app object ----
shinyApp(ui = ui, server = server)