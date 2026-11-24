# 1. Load libraries
library(tidyverse)


# 2. Load the original dataset
raw_data <- read_csv(
  "GSE162746_Raw_counts_collected (1).csv",
  col_names = FALSE,
  show_col_types = FALSE
)


# 3. Create the metadata table
metadata <- raw_data |>
  slice(2:5) |>
  select(-1) |>
  t() |>
  as.data.frame()


# 4. Assign column names
colnames(metadata) <- c(
  "sample_id",
  "time",
  "stimulus",
  "donor"
)


# 5. Inspect the metadata
head(metadata)

View(metadata)


# 6. Save the metadata table
write_csv(metadata, "metadata.csv")

