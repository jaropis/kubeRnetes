library(shiny)
library(httr)
library(jsonlite)
# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Histogram"),
    actionButton(inputId = "refresh_data", label = "Refresh data"),
    plotOutput("histPlot")
)

# Define server logic required to draw a histogram
server <- function(input, output, session) {
    hist_data <- reactiveVal({
      NULL
    })

    observeEvent(input$refresh_data, {
      res = GET("http://localhost:8000/send_data")
      hist_data(fromJSON(rawToChar(res$content)))
    }, ignoreInit = TRUE, ignoreNULL = TRUE)

    output$histPlot <- renderPlot({
      req(hist_data())
      hist(as.numeric(hist_data()$data),
           main = "Some histogram", xlab = paste0("random numbers on host: ", session$clientData$url_hostname))
    })
}

shinyApp(ui = ui, server = server)
