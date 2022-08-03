# Use the embedding to find nearest-neighbor genes
query_gene <- function(gene, word_vectors, method = "cosine", norm = "l2") {
  vec <- sim_(word_vectors, y = word_vectors[gene, , drop = FALSE], method = method, norm = norm)
  df <- data.frame(gene = rownames(vec), sim = vec[, 1], stringsAsFactors = FALSE)
  df <- df[!(df$gene == gene), ]
  df <- df[order(df$sim, decreasing = TRUE), ]
  rownames(df) <- NULL
  df
}
