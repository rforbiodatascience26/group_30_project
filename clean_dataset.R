# visualize the dataset
clean_dataset <- read.csv(
  "GSE162746_Raw_counts_collected.csv.gz",
  sep = ";",
  header = FALSE,
  check.names = FALSE,
  stringsAsFactors = FALSE
)

# 