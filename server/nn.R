updateSelectizeInput(session, inputId = "gene_nn", choices = sort(rownames(word_vectors)), selected = "KRAS", server = TRUE)

get_df_nn <- reactive({
  req(input$gene_nn)

  interest <- input$gene_nn

  lst <- lapply(interest, FUN = query_gene, word_vectors = word_vectors)
  df <- do.call(cbind, args = lst)
  names(df) <- as.vector(t(outer(interest, c("gene", "sim"), paste, sep = ".")))

  names(df) <- c("Gene", "Similarity")
  df
})

output$dt_nn <- DT::renderDT({
  get_df_nn() |>
    DT::datatable(
      rownames = FALSE,
      style = "bootstrap4",
      options = list(
        dom = "<'top'fil>rt<'bottom'p><'clear'>",
        language = list(search = "Filter:")
      )
    ) |>
    DT::formatRound("Similarity", digits = 4)
})
