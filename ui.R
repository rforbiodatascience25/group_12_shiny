# Load needed libraries
library("shiny")
library("bslib")

# Define the User Interface (Frontend)
ui <- page_fluid(
  
  ## gene_dna part is missing the possibility to change probabibility of base
  
  
  layout_columns(
    col_widths = 12,
    card(
      titlePanel("Virtual Central Dogma"),
      style = "background-color: #f0f0f0; padding: 15px;"
      )),
  
  #Virtual RNA Polymerase
  layout_columns(
    col_widths = 12,
    card(
      card_header("Transcription"),
      layout_columns(
        textInput(inputId = "DNA_seq",
                  label = "Insert a DNA sequence to transcribe:",
                  value = ""),
        verbatimTextOutput("rna")
        ))),
 
  #Virtual Ribosome
  layout_columns(
    col_widths = 12,
    card(
      card_header("Translation"),
      textInput(inputId = "RNA_seq", 
                label = "Insert RNA sequence to translate:", 
                value = ""),
      verbatimTextOutput("protein")
      )
    )
  )