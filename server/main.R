tissue_name <- "Pancreas"

path_embedding <- file.path("output", paste0(tissue_name, "_embedding.rds"))
word_vectors <- readRDS(path_embedding)

source("server/nn.R", local = TRUE)$value
source("server/gene-analogy.R", local = TRUE)$value
