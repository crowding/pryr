all_named <- function(x) {
  if (length(x) == 0) return(TRUE)
  !is.null(names(x)) && all(names(x) != "")
}

"%||%" <- function(x, y) if (is.null(x)) y else x


to_env <- function(x) {
  if (is.environment(x)) {
    x
  } else if (is.list(x)) {
    list2env(x)
  } else if (is.function(x)) {
    environment(x)
  } else if (length(x) == 1 && is.character(x)) {
    message("Using environment ", x)
    as.environment(x)
  } else if (length(x) == 1 && is.numeric(x) && x > 0) {
    message("Using environment ", search()[x])
    as.environment(x)
  } else {
    stop("Input can not be coerced to an environment", call. = FALSE)
  }
}
