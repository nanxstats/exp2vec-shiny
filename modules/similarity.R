# Reduced from text2vec::sim2()
sim_ <- function(x, y = NULL, method = c("cosine"), norm = c("l2")) {
  norm <- match.arg(norm)
  method <- match.arg(method)
  stopifnot(inherits(x, "matrix") || inherits(x, "Matrix"))
  FLAG_TWO_MATRICES_INPUT <- FALSE
  if (!is.null(y)) {
    FLAG_TWO_MATRICES_INPUT <- TRUE
  }
  if (FLAG_TWO_MATRICES_INPUT) {
    stopifnot(inherits(y, "matrix") || inherits(y, "Matrix"))
    stopifnot(ncol(x) == ncol(y))
    stopifnot(colnames(x) == colnames(y))
  }
  RESULT <- NULL
  if (method == "cosine") {
    x <- normalize_(x, norm)
    if (FLAG_TWO_MATRICES_INPUT) {
      y <- normalize_(y, norm)
      RESULT <- tcrossprod(x, y)
    } else {
      RESULT <- tcrossprod(x)
    }
  }
  RESULT
}

# Reduced from text2vec::normalize()
normalize_ <- function(m, norm = c("l1", "l2")) {
  stopifnot(inherits(m, "matrix") || inherits(m, "sparseMatrix"))
  norm <- match.arg(norm)
  norm_vec <- switch(norm,
    l1 = 1 / rowSums(m),
    l2 = 1 / sqrt(rowSums(m^2))
  )
  norm_vec[is.infinite(norm_vec)] <- 0
  if (inherits(m, "sparseMatrix")) {
    Diagonal(x = norm_vec) %*% m
  } else {
    m * norm_vec
  }
}
