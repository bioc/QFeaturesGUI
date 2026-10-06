#' Deprecated functions in QFeaturesGUI
#'
#' @description
#' These functions are retained for compatibility with older versions of
#' QFeaturesGUI. They issue a deprecation warning and forward all arguments
#' to the replacement function.
#'
#' @details
#' The following functions are deprecated:
#' \itemize{
#'   \item \code{importQFeatures()}: use \code{\link{import}()}.
#'   \item \code{processQFeatures()}: use \code{\link{process}()}.
#'   \item \code{visualizeQFeatures()}: use \code{\link{visualise}()}.
#' }
#' They are at the deprecated stage of the Bioconductor deprecation cycle
#' and may be made defunct in a future release cycle.
#'
#' @param ... Arguments passed to the corresponding replacement function.
#' @return A Shiny application object returned by the replacement function.
#' @name QFeaturesGUI-deprecated
#' @keywords internal
#' @examples
#' # Use import(), process(), and visualise() in new code.
#' import_app <- suppressWarnings(importQFeatures())
#' process_app <- suppressWarnings(processQFeatures())
#' visualise_app <- suppressWarnings(visualizeQFeatures())
NULL

#' @rdname QFeaturesGUI-deprecated
#' @export
importQFeatures <- function(...) {
    .Deprecated("import", package = "QFeaturesGUI")
    import(...)
}

#' @rdname QFeaturesGUI-deprecated
#' @export
processQFeatures <- function(...) {
    .Deprecated("process", package = "QFeaturesGUI")
    process(...)
}

#' @rdname QFeaturesGUI-deprecated
#' @export
visualizeQFeatures <- function(...) {
    .Deprecated("visualise", package = "QFeaturesGUI")
    visualise(...)
}
