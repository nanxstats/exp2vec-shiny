# From shiny:::shinyInputLabel()
shinyInputLabel_ <- function(inputId, label = NULL) {
  tags$label(label, class = "control-label", class = if (is.null(label)) {
    "shiny-label-null"
  }, id = paste0(inputId, "-label"), `for` = inputId)
}

# From shiny::textInput()
textInputDisabled <- function(inputId, label, value = "", width = NULL, placeholder = NULL) {
  value <- shiny::restoreInput(id = inputId, default = value)
  div(
    class = "form-group shiny-input-container",
    style = htmltools::css(width = htmltools::validateCssUnit(width)),
    shinyInputLabel_(inputId, label),
    tags$input(id = inputId, type = "text", class = "form-control", value = value, placeholder = placeholder, disabled = NA, readonly = NA, `aria-label` = "Disabled, readonly input", style = "text-align: center;")
  )
}
