tags$footer(
  class = "my-5",
  fluidRow(
    column(
      width = 6, offset = 3,
      hr(),
      includeCSS("www/custom.css"),
      p(paste("exp2vec-shiny", as.vector(read.dcf("DESCRIPTION", fields = "Version"))), class = "text-muted"),
      p("Embedding ", a("trained", href = "https://github.com/nanxstats/exp2vec", target = "_blank"), "on pancreas data from GTEx v8", class = "text-muted"),
      p("Built by ", a("Nan Xiao", href = "https://nanx.me/", target = "_blank"), class = "text-muted")
    )
  )
)
