# Load needed libraries
library("shiny")
library("bslib")

# Define the User Interface (Frontend)
ui <- page_fluid(
  titlePanel("Group 12 — Central Dogma"),
  sidebarLayout(
    sidebarPanel(
      textAreaInput("dna_in", "DNA input (A/C/G/T):", rows = 5,
                    placeholder = "e.g. ATGGCCATTGTAATGGGCCGCTGAAAGGGTGCCCGATAG"),
      actionButton("run_all", "Run all steps", class = "btn-primary")
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("gene_dna()", verbatimTextOutput("dna_clean")),

        
        
        
      )
    )
  )
)