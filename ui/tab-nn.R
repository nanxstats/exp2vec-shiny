tabPanel(
  title = "Gene Neighbours",
  icon = icon("circle-nodes"),
  fluidRow(
    column(
      width = 6, offset = 3,
      fluidRow(
        column(
          width = 12,
          card(
            title = "Inputs",
            selectizeInput("gene_nn", label = "Gene name", choices = NULL)
          )
        ),
        p(),
        column(
          width = 12,
          card(
            title = "Outputs",
            DT::DTOutput("dt_nn")
          )
        )
      )
    )
  )
)
