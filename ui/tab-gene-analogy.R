tabPanel(
  title = "Gene Analogy",
  icon = icon("arrows-turn-right"),
  fluidRow(
    column(
      width = 6, offset = 3,
      fluidRow(
        column(
          width = 12,
          card(
            title = "Find gene analogies",
            textInput("zzz1", label = "Gene name", value = "KRAS")
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
