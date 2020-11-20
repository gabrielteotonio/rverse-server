# Define a server for the Shiny app
function(input, output) {
  
  # Fill in the spot we created for a plot
  output$citizPlot <- renderPlot({
    
    # Render a plot
    plot(tbl(con, "nz_migration") %>% 
                      filter(country_of_residence == !!input$country_origin) %>% 
                      group_by(visa) %>% 
                      count() %>% 
                      ungroup() %>% 
                      select(n) %>% 
                      pull(), 
            main=input$country_origin)
  })
}