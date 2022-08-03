navbarPage(
  id = "main-nav",
  title = "🧬 exp2vec",
  lang = "en",
  theme = bslib::bs_theme(
    version = 5,
    "primary" = "#6F92BA",
    "navbar-light-bg" = "#FFF",
    "font-size-base" = "1.125rem",
    "font-family-sans-serif" = '"Red Hat Text", system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", "Liberation Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";'
  ),
  inverse = FALSE,
  collapsible = FALSE,
  source("ui/tab-nn.R", local = TRUE)$value,
  source("ui/tab-gene-analogy.R", local = TRUE)$value,
  footer = source("ui/footer.R", local = TRUE)$value
)
