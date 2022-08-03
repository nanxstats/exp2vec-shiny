tags$footer(
  class = "my-5",
  fluidRow(
    column(
      width = 6, offset = 3,
      hr(),
      includeCSS("www/custom.css"),
      p(paste("exp2vec-shiny", as.vector(read.dcf("DESCRIPTION", fields = "Version"))), class = "text-muted"),
      p("Built by ", a("Nan Xiao", href = "https://nanx.me/"), class = "text-muted")
    )
  )
)
