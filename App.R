library(shiny)
library(colourpicker)
shinyApp(
  ui= fluidPage(
    titlePanel("Mon application"),
    sidebarLayout(
      sidebarPanel(
        fileInput("file1", "Choisir un fichier CSV",
                  accept = c("text/csv", "text/comma-separated-values,text/plain",
                             ".csv")),
        sliderInput("bins",
                    "Number of bins:",
                    min = 1,
                    max = 50,
                    value = 30),
        #colourInput(inputId = "color", label = "Color:", value = "purple"),
        selectInput(inputId = "color", label = "Couleur :",
                    choices = c("Red" = "red", "Green" = "green", "Blue" = "blue")),
        textInput(inputId = "titre", label = "Title:", value = "Histogram"),
        radioButtons(
          "var",
          "Choisir la variable:",
          choices = names(data())
        ),
        downloadLink('download_plot', 'Download the graph')
      ),  
      mainPanel(
        plotOutput("distPlot"),
        div(textOutput("n_bins"), align = "center"),
        tags$hr(),
        verbatimTextOutput("summary"),
        dataTableOutput("table"),
      )
    )
  ),
  server=function(input, output) {
    data <- reactive({
      infile <- input$file1
      if (is.null(infile)) {
        return(NULL)
      }
      read.csv2(infile$datapath)
    })
    observe({
      updateRadioButtons(
        session = shiny::getDefaultReactiveDomain(),
        inputId = "var",
        choices = colnames(data())
      )
    })
    
    output$distPlot <- renderPlot({
      
      x    <- data()[, input$var] 
      bins <- seq(min(x), max(x), length.out = input$bins + 1)
      hist(x, breaks = bins, col = input$color, border = 'white', main = input$titre)
      
    })
    
    output$summary <- renderPrint({
      summary(data())
    })
    output$table <- renderDataTable({
      data()
    })
    
    output$n_bins <- renderText({
      paste("Number of bins: ", input$bins)
    })
    output$download_plot <- downloadHandler(
      filename = function() {
        paste('plot-', Sys.Date(), '.jpeg', sep='')
      },
      content = function(con) {
        jpeg(file = con)
        x    <- data()[, input$var] 
        bins <- seq(min(x), max(x), length.out = input$bins + 1)
        hist(x, breaks = bins, col = input$color, border = 'white', main = input$titre)
        dev.off()
      }
    )
  }
)