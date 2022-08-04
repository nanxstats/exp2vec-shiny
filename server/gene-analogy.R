updateSelectizeInput(session, inputId = "gene1", choices = sort(rownames(word_vectors)), selected = "BRCA1", server = TRUE)
updateSelectizeInput(session, inputId = "gene2", choices = sort(rownames(word_vectors)), selected = "BRCA2", server = TRUE)
updateSelectizeInput(session, inputId = "gene4", choices = sort(rownames(word_vectors)), selected = "TP53", server = TRUE)

get_df_analogy <- reactive({
  req(input$gene1)
  req(input$gene2)
  req(input$gene4)

  # gene1 - gene2 = [?] - gene4
  gene_unknown <-
    word_vectors[input$gene1, , drop = FALSE] -
    word_vectors[input$gene2, , drop = FALSE] +
    word_vectors[input$gene4, , drop = FALSE]

  vec <- sim_(x = word_vectors, y = gene_unknown, method = "cosine", norm = "l2")[, 1] |>
    sort(decreasing = TRUE)

  data.frame("Gene" = names(vec), "Similarity" = unname(vec), stringsAsFactors = FALSE)
})

output$dt_analogy <- DT::renderDT({
  get_df_analogy() |>
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
