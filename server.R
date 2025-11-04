# Load needed libraries
library("shiny")
library("bslib")

# Load needed functions
source(file = "app_functions.R")

# Define the Server (Backend)
server <- function(input, output) {
  
  # Run Validate DNA
  dna_clean <- eventReactive(input$run_all, {
    req(input$dna_in)
    tryCatch(
      gene_dna(input$dna_in),
      error = function(e) {
        showNotification(conditionMessage(e), type = "error")
        validate(need(FALSE, conditionMessage(e)))
      }
    )
  })
  
  
  
  
}