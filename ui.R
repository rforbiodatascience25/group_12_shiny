# Define the User Interface (Frontend)
ui <- page_fluid(
  
  ## gene_dna part is missing the possibility to change probabibility of base
  
  
  layout_columns(
    col_widths = 12,
    card(
      titlePanel("Virtual Central Dogma"),
      style = "background-color: #f0f0f0; padding: 15px;"
      )),
  
  layout_columns(
    col_widths = 12,
    card(
      card_header("About"),
      card_body(
        helpText(HTML(
          "Welcome to the Virtual Central Dogma App! 🧬<br><br>
          This interactive app allows you to explore the central dogma of molecular biology — from DNA to RNA to protein — in a virtual and intuitive way.<br><br>
          1. <b>Virtual Gene Generation</b><br>
          - Use the slider to select the number of DNA bases (must be divisible by 3).<br>
          - Adjust the probabilities of each nucleotide (A, T, C, G).<br><br>
          2. <b>Transcription Simulation</b><br>
          - The app automatically transcribes your virtual DNA into RNA.<br><br>
          3. <b>Translation Simulation</b><br>
          - The RNA is translated into a protein sequence based on codon mapping.<br><br>
          4. <b>Base Count Analysis</b><br>
          - View base frequencies (A, T, C, G).<br><br>
          <i>Tip:</i> Probabilities should sum to 1. If not, they are normalized automatically."
        ))
      )
    )
  ),
  
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