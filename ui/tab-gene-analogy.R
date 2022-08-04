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
            title = "Inputs",
            fluidRow(
              column(
                width = 4,
                selectizeInput("gene1", label = "", choices = NULL, width = "100%")
              ),
              column(
                width = 4,
                textInputDisabled("minus1", label = "", value = "for"),
              ),
              column(
                width = 4,
                selectizeInput("gene2", label = "", choices = NULL, width = "100%")
              )
            ),
            fluidRow(
              column(
                width = 4,
                span(),
              ),
              column(
                width = 4,
                textInputDisabled("equalsign", label = "", value = "is like"),
              ),
              column(
                width = 4,
                span()
              )
            ),
            fluidRow(
              column(
                width = 4,
                textInputDisabled("gene3", label = "", value = "?")
              ),
              column(
                width = 4,
                textInputDisabled("minus2", label = "", value = "for"),
              ),
              column(
                width = 4,
                selectizeInput("gene4", label = "", choices = NULL, width = "100%")
              )
            ),
          )
        )
      ),
      p(),
      column(
        width = 12,
        card(
          title = "Outputs",
          DT::DTOutput("dt_analogy")
        )
      )
    )
  )
)
