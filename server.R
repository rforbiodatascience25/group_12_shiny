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
    translate_rna(rna = input$RNA_seq)
  })
  
  # Base Frequency
  output$base_count <- renderPrint({
    req(nchar(input$base_seq) > 0)
    base_freqs(dna = input$base_seq)
  })
  
  output$distPlot <- renderPlot({
    df <- base_freqs(dna = input$base_seq)
    if(nrow(df) == 0 || sum(df$Frequency) == 0) return(NULL)
    colors <- c("lightblue1","pink1","khaki1","palegreen1")
    barplot(df$Frequency,
            names.arg = df$Base,
            col = colors,
            xlab = "Base",
            ylab = "Count",
            main = "Base Counts")
  })  
  
}
