# Define the User Interface (Frontend)
ui <- page_fluid(
  layout_columns(
    col_widths = 12,
    card(
      titlePanel("Virtual Central Dogma"),
      style = "background-color: #f0f0f0; padding: 15px;"
      )),
  
  #Description
  layout_columns(
    col_widths = 12,
    card(
      card_header("About"),
      card_body(
        helpText(HTML(
          "Welcome to the Virtual Central Dogma App! <br><br>
          This simple shiny app allows you to explore the central dogma of molecular biology. You can execute all steps of the process from DNA to RNA to protein, all in virtual way.<br><br>
          1. <b>Virtual Gene Generation</b><br>
          - Use the slider to select the number of DNA bases, must be divisible by 3.<br>
          - Adjust the probabilities of each nucleotide (A, T, C, G), which should sum to 1.<br><br>
          2. <b>Virtual RNA polymerase: Transcription</b><br>
          - The copied in DNA sequence is translated into RNA sequence.<br><br>
          3. <b>Virtual Ribosome:  Translation</b><br>
          - The copied in RNA sequence is translated into a protein sequence based on codon mapping.<br><br>
          4. <b>Simple Base Counts</b><br>
          - View base frequencies (A, T, C, G) visualised in barplot.<br><br>"
        ))
      )
    )
  ),
  
  #Virtual DNA sequence Generator
  layout_columns(
    col_widths = 12,
    card(
      card_header("Virtual Gene Generator"),
      sliderInput(inputId = "n_bases",
                  label = "Number of bases:",
                  min = 1,
                  max = 60,
                  value = 30,
                  width = "100%"),
      layout_columns(
        col_widths = c(3, 3, 3, 3),
        numericInput(inputId = "prob_A",
                     label = "Probability of A",
                     value = 0.25,
                     min = 0,
                     max = 1,
                     step = 0.1),
        numericInput(inputId = "prob_T",
                     label = "Probability of T",
                     value = 0.25,
                     min = 0,
                     max = 1,
                     step = 0.1),
        numericInput(inputId = "prob_C",
                     label = "Probability of C",
                     value = 0.25,
                     min = 0,
                     max = 1,
                     step = 0.1),
        numericInput(inputId = "prob_G",
                     label = "Probability of G",
                     value = 0.25,
                     min = 0,
                     max = 1,
                     step = 0.1)
      ))),
  layout_columns(
    col_widths = 12,
    card(
      card_header("Virtual Gene output"),
      mainPanel(
        verbatimTextOutput(outputId = "dna")
      )
    )),
  
  #Virtual RNA Polymerase
  layout_columns(
    col_widths = 12,
    card(
      card_header("Transcription"),
      layout_columns(
        col_widths = 12,
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
      layout_columns(
        col_widths = 12,
        textInput(inputId = "RNA_seq", 
                  label = "Insert RNA sequence to translate:", 
                  value = ""),
        verbatimTextOutput("protein")
      )
      ),
    
    # Base Frequency
    card(
      card_header("Base Counts"),
      layout_columns(
        col_widths = 12,
        textInput(inputId = "base_seq", 
                  label = "Input DNA sequence to count bases:", 
                  value = ""),
        verbatimTextOutput("base_count"),
        plotOutput("distPlot")
      )
    )
  )
)