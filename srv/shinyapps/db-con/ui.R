library(datasets)

# Use a fluid Bootstrap layout
fluidPage(    
  
  # Give the page a title
  titlePanel("Migration in New Zealand"),
  
  # Generate a row with a sidebar
  sidebarLayout(      
    
    # Define the sidebar with one input
    sidebarPanel(
      selectInput("country_origin", "Country of residence:", 
                  tbl(con, "public.nz_migration") %>% select(country_of_residence) %>% distinct() %>% pull()),
      hr(),
      helpText("Data from New Zealand Gov. (2020).")
    ),
    
    # Create a spot for the barplot
    mainPanel(
      plotOutput("citizPlot")  
    )
    
  )
)
