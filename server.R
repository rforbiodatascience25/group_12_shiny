# Load needed libraries
library("shiny")
library("bslib")

# Load needed functions
source(file = "app_functions.R")

# Define the Server (Backend)
server <- function(input, output) {
  #
  #
  #gene dna part here
  #
  #
  
  #Virtual RNA Polymerase
  output$rna <- renderText({
    transcribe_dna(dna = input$DNA_seq)
  })
  
  #Virtual Ribosome
  output$protein <- renderText({
    translate_rna(input$RNA_seq)
  })
  
}
