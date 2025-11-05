# Load needed libraries
library("shiny")
library("bslib")

# Define the User Interface (Frontend)
ui <- page_fluid(
  layout_columns(
    col_widths = 12,
    card(
      titlePanel("Virtual Central Dogma"),
      style = "background-color: #f0f0f0; padding: 15px;"
    )),
  layout_columns(
    col_widths = 12,
    card(
      layout_columns(
        textInput(inputId = "DNA_seq",
                  label = "DNA Sequence",
                  value = "")
      ))),
  layout_columns(
    col_widths = 12,
    card_header("RNA Polymerase output"),
    mainPanel(
      verbatimTextOutput(outputId = "rna")
)))