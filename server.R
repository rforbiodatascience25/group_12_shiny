# Load needed libraries
library("shiny")
library("bslib")

# Load needed functions
source(file = "app_functions.R")

# Define the Server (Backend)
server <- function(input, output) {
  output$rna <- renderText({
    transcribe_dna(dna = input$DNA_seq)
  })
}