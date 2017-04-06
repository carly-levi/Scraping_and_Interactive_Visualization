# Begin ui definition -----------------------------------------------
fluidPage(
  
  # App title -------------------------------------------------------
  titlePanel("Duke Basketball Statistics"),
  
  # Sidebar ---------------------------------------------------------
  sidebarLayout(
    sidebarPanel(
      
      # Select population distribution
      selectInput("var",
                  "X-Variable",
                  choices = names(blue_devils)),
      
      selectInput("var2",
                  "Y-Variable",
                  choices = names(blue_devils))
      ),
    mainPanel(
      plotOutput("graph")
    )
  ) 
)