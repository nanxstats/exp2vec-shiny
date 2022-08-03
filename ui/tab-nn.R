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
            title = "Find gene neighbours",
            textInput("zzz", label = "Gene name", value = "KRAS")
          )
        ),
        p(),
        column(
          width = 12,
          card(
            title = "Output",
            p("Placeholder")
          )
        )
      )
    )
  )
)
