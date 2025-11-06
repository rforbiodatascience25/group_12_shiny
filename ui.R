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
      titlePanel("About"),
      helpText(HTML(
        "Welcome to the Virtual Central Dogma App! 🧬<br><br>

This interactive app allows you to explore the central dogma of molecular biology — from DNA to RNA to protein — in a virtual and intuitive way. Here's what you can do:<br>

1. Virtual Gene Generation<br>
   - Use the slider to select the number of DNA bases for your virtual gene (must be divisible by 3). <br>
   - Adjust the probabilities of each nucleotide (A, T, C, G) to generate custom DNA sequences.<br><br>

2. Transcription Simulation<br>
   - The app automatically transcribes your virtual DNA into RNA, showing the corresponding transcript.<br><br>

3. Translation Simulation<br>
   - The RNA is then translated into a protein sequence based on codon mapping.<br><br>

4. Base Count Analysis <br>
   - Easily inspect the frequency of each base (A, T, C, G) in your DNA sequence with a simple summary table.<br><br>

Tip: Make sure your nucleotide probabilities sum to 1. If not, the app will normalize them automatically."
      ))
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
      )
    )
  )