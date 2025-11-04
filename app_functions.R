# Validate DNA from user input
# Keep only A/C/G/T, uppercase, no spaces; error otherwise
gene_dna <- function(x) {
  x <- toupper(gsub("\\s+", "", x))
  if (nchar(x) == 0) stop("DNA sequence is empty.")
  if (grepl("[^ACGT]", x)) stop("DNA must contain only A, C, G, T.")
  x
}
