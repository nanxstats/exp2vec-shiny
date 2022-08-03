library("shiny")

source("modules/card.R")
source("modules/similarity.R")
source("modules/nn.R")

ui <- function(request) {
  source("ui/main.R", local = TRUE)$value
}

server <- function(input, output, session) {
  source("server/main.R", local = TRUE)$value
}

shinyApp(ui, server)
