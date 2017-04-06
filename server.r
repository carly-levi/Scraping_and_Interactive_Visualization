library(ggplot2)
library(dplyr)

shinyServer(
  function(input, output, session)
    
    output$graph <- renderPlot({
      
      graph_name = switch(input$year,
                        14-15 = "14-15",
                        13-14 = "13-14",
                        12-13 = "12-13",
                        11-12 = "11-12",
                        10-11 = "10-11") 
      
      ggplot(data = blue_devils, aes(x = input$var, y = input$var2)) +
        geom_histogram() +
        ggtitle(graphname)
    })
  }
)