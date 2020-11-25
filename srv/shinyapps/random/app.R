# Global variables can go here
n <- 200
library(auth0)

# Define the UI
ui <- bootstrapPage(
  numericInput('n', 'Number of obs', n),
  logoutButton(),
  plotOutput('plot')
)


# Define the server code
server <- function(input, output) {
  output$plot <- renderPlot({
    hist(runif(input$n))
  })
}

# Return a Shiny app object
shinyAppAuth0(ui = ui, server = server)