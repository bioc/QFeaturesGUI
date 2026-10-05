#' UI builder for visualise
#'
#' @return A shiny dashboard UI for the visualise app
#' @rdname INTERNAL_build_visualise_ui
#' @keywords internal
#'
#' @importFrom shinydashboard dashboardBody
#' @importFrom shinydashboardPlus dashboardSidebar
#' @importFrom shinyjs useShinyjs
#' @importFrom waiter useWaiter
build_visualise_ui <- function() {
    ui <- dashboardPage(
        skin = "blue",
        header = header("visualise"),
        sidebar = dashboardSidebar(disable = TRUE, minified = FALSE, width = 0),
        body = dashboardBody(
            useShinyjs(),
            waiter::useWaiter(),
            includeCSS(system.file(package = "QFeaturesGUI", "www", "style.css")),
            shiny::uiOutput("startup_upload_ui"),
            interface_module_summary(id = "visualize")
        ),
        scrollToTop = TRUE
    )
    ui
}
