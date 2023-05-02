
#Installer le package Shiny
install.packages("Shiny") 

#Exemple: Hello Shiny
library(shiny)
shinyAppDir(system.file("examples/01_hello", package = "shiny"))
library(shiny)

# **Structure d'une application Shiny**

    ## ui
    # Voici l'objet **ui** de l'exemple Hello Shiny.
# Définir l'interface utilisateur d'une application qui dessine un histogramme ----
ui <- fluidPage(
  
  # Titre de l'appli ----
  titlePanel("Hello Shiny!"),
  
  # Disposition de la barre latérale avec définitions d'entrée et de sortie ----
  sidebarLayout(
    
    # Panneau de la barre latérale pour les entrées ----
    sidebarPanel(
      
      # Entrée : Curseur pour le nombre de bacs ----
      sliderInput(inputId = "bins",
                  label = "Nombre de bacs:",
                  min = 1,
                  max = 50,
                  value = 30)
      
    ),
    
    # Panneau principal pour l'affichage des sorties ----
    mainPanel(
      
      # Sorties: Histogramme ----
      plotOutput(outputId = "distPlot")
      
    )
  )
)
    ## server
    #Voici la fonction server pour l'exemple Hello Shiny.
server <- function(input, output) {
  output$distPlot <- renderPlot({
    
    x    <- faithful$waiting
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    hist(x, breaks = bins, col = "#007bc2", border = "white",
         xlab = "Waiting time to next eruption (in mins)",
         main = "Histogram of waiting times")
    
  })
}

   #Voici la fonction **shinyApp** pour l'exemple **Hello Shiny**
shinyApp(ui = ui, server = server)

# Executer une application Shiny
library(shiny)
runApp("C:/Users/user/Desktop/mtn/ENSAE/ISE/ISEP2/SEMESTRE 2/Informatique/R_2023/Exposés/Mame Thienro Ndiaye")
# L'argument ici  represente ici le chemin d'accées du répertoire où se trouve l'appli


# Création d'une interface d'utilisateur (UI)
   ## Strict minimum: ça donne une application vide
library(shiny)

# definir UI ----
ui <- fluidPage(
  
)

# definir server logic ----
server <- function(input, output) {
  
}

# executer l'application  ----
shinyApp(ui = ui, server = server)

  ## Disposition

ui <- fluidPage(
  #Titre page
  titlePanel("Exposé_Shiny"),
  # Disposition latérale
  sidebarLayout(
    sidebarPanel("sidebar panel"),
    #panneeau principale
    mainPanel("main panel")
  )
)

#On peut déplacer le panneau de la barre latérale vers la droite en donnant l'argument facultatif position = "right"
ui <- fluidPage(
  titlePanel("Exposé_Shiny"),
  
  sidebarLayout(position = "right",
                sidebarPanel("sidebar panel"),
                mainPanel("main panel"))
)

 ## Contenu HTML
  #### niveau
  sidebarLayout(
                sidebarPanel("sidebar panel"),
                mainPanel(
                  h1("First level title"),
                  h2("Second level title"),
                  h3("Third level title"),
                  h4("Fourth level title"),
                  h5("Fifth level title"),
                  h6("Sixth level title")
                )
  )

   ###Mise en forme
ui <- fluidPage(
  titlePanel("Exposé_shiny"),
  sidebarLayout(
    sidebarPanel(),
    mainPanel(
      p("Mon nom est Mame Thierno Ndiaye, je vais vous faire une brève présentation de ma personne."),
      p("Je suis élève à", strong("l'Ecole Nationale de la Statistique et de l'Analyse Economique."), "J'aime faire de la recherche sur les", strong("théories économiques"), "sur", strong("l'intelligence artérielle"), "le", strong("Machine Learning.."), style = "font-family: 'times'; font-si16pt"),
      em("En dehors de la Statistique, je suis aussi très passionné par l'astronomie."),
      br(),
      div("Un plus d'informations:", style = "color:blue"),
      br(),
      p("j'ai fait mon cycle primaire à l'école",span("Al Azhar de Guédiawaye,", style = "color:blue"), " une partie de mon cycle college la-bas avant de le terminer à",span("Pikine Est de Guédiawaye.", style = "color:blue"), 
      "Pour mon bac, je l'ai obtenu au ", span("Lycée Seydina Limoulaye de Guédiawaye.", style = "color:blue"),
    )
  )
)
)

#Image

ui <- fluidPage(
  titlePanel("Exposé_shiny"),
  sidebarLayout(
    sidebarPanel(
      p( strong("Mame Thierno Ndiaye")),
      img(src="Thier.jpg",  height = 140, width = 200)
    ),
    mainPanel(
      p("Mon nom est Mame Thierno Ndiaye, je vais vous faire une brève présentation de ma personne."),
      p("Je suis élève à", strong("l'Ecole Nationale de la Statistique et de l'Analyse Economique."), "J'aime faire de la recherche sur les", strong("théories économiques"), "sur", strong("l'intelligence artérielle"), "le", strong("Machine Learning.."), style = "font-family: 'times'; font-si16pt"),
      em("En dehors de la Statistique, je suis aussi très passionné par l'astronomie."),
      br(),
      div("Un plus d'informations:", style = "color:blue"),
      br(),
      p("j'ai fait mon cycle primaire à l'école",span("Al Azhar de Guédiawaye,", style = "color:blue"), " une partie de mon cycle college la-bas avant de le terminer à",span("Pikine Est de Guédiawaye.", style = "color:blue"), 
        "Pour mon bac, je l'ai obtenu au ", span("Lycée Seydina Limoulaye de Guédiawaye.", style = "color:blue"),
      )
    )
  )
)

#Ajout de widgets

ui <- fluidPage(
  titlePanel("Exemples de widgets"),
  
  fluidRow(
    
    column(3,
           h3("Buttons"),
           actionButton("action", "Action"),
           br(),
           br(), 
           submitButton("Submit")),
    
    column(3,
           h3("Single checkbox"),
           checkboxInput("checkbox", "Choice A", value = TRUE)),
    
    column(3, 
           checkboxGroupInput("checkGroup", 
                              h3("Checkbox group"), 
                              choices = list("Choice 1" = 1, 
                                             "Choice 2" = 2, 
                                             "Choice 3" = 3),
                              selected = 1)),
    
    column(3, 
           dateInput("date", 
                     h3("Date input"), 
                     value = "2014-01-01"))   
  ),
  
  fluidRow(
    
    column(3,
           dateRangeInput("dates", h3("Date range"))),
    
    column(3,
           fileInput("file", h3("File input"))),
    
    column(3, 
           h3("Help text"),
           helpText("Note: help text isn't a true widget,", 
                    "but it provides an easy way to add text to",
                    "accompany other widgets.")),
    
    column(3, 
           numericInput("num", 
                        h3("Numeric input"), 
                        value = 1))   
  ),
  
  fluidRow(
    
    column(3,
           radioButtons("radio", h3("Radio buttons"),
                        choices = list("Choice 1" = 1, "Choice 2" = 2,
                                       "Choice 3" = 3),selected = 1)),
    
    column(3,
           selectInput("select", h3("Select box"), 
                       choices = list("Choice 1" = 1, "Choice 2" = 2,
                                      "Choice 3" = 3), selected = 1)),
    
    column(3, 
           sliderInput("slider1", h3("Sliders"),
                       min = 0, max = 100, value = 50),
           sliderInput("slider2", "",
                       min = 0, max = 100, value = c(25, 75))
    ),
    
    column(3, 
           textInput("text", h3("Text input"), 
                     value = "Enter text..."))   
  )
  
)

server <- function(input, output) {
  
}

shinyApp(ui = ui, server = server)


#Affichage réactive
   #Etape1
ui <- fluidPage(
  titlePanel("censusVis"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Create demographic maps with 
               information from the 2010 US Census."),
      
      selectInput("var", 
                  label = "Choose a variable to display",
                  choices = c("Percent White", 
                              "Percent Black",
                              "Percent Hispanic", 
                              "Percent Asian"),
                  selected = "Percent White"),
      
      sliderInput("range", 
                  label = "Range of interest:",
                  min = 0, max = 100, value = c(0, 100))
    ),
    
    mainPanel(
      textOutput("selected_var")
    )
  )
)
  #Etape2
server <- function(input, output) {
  
  output$selected_var <- renderText({ 
    "You have selected this"
  })
  
}

server <- function(input, output) {
  
  output$selected_var <- renderDataTable({ 
    paste("vous avez selectionné", input$var)
  })
  
}

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

#Tableau de bord
library(shiny)
library(shinydashboard)
header<- dashboardHeader(
  title = "KAY-DIANG",# titre pour l'en tête'
  titleWidth = 300,#Taille
  dropdownMenu(type = "messages", badgeStatus = "success",
               messageItem("Message de Mame Thierno",
                           "Je voudrais de l'aide sur un exo .",
                           time = "1h"
               ),
               messageItem("Moniseur Camara",
                           "Bonjour, demain je serais un peu occupé. On va reprogrammer le cours pour la prochaine fois..",
                           time = "30 min"
               ),
               messageItem("New User",
                           "puis je avoir de l'aide, s'il vous plaît?",
                           time = "Today"
               )
  ),
  dropdownMenu(type = "notifications", badgeStatus = "warning",
               notificationItem("Vous pouvez voir votre progréssion pendant ce mois.", icon = icon("exclamation"), status = "info",
                                
               ),
               notificationItem("Vous avez un nouveau cours en PC",icon = icon("exclamation"), status = "info",
                                
               ),
               notificationItem("Vous avez un nouveau exercice en PC",icon = icon("exclamation"), status = "info",
               )
  ),
  dropdownMenu(type = "tasks", badgeStatus = "danger",
               taskItem("Mise à jour de votre profil", value = 70, color = "aqua",
               ),
               taskItem("evaluation", value = 80, color = "green",
               ),
               taskItem("Mise à jour de vos notes", value = 60, color = "yellow",
               ),
               taskItem("Write documentation", value = 80, color = "red",
               )
  )
)
library(shinydashboard)
library(shiny)

header<- dashboardHeader(
  title = "KAY-DIANG",# titre pour l'en tête'
  titleWidth = 300,#Taille
  dropdownMenu(type = "messages", badgeStatus = "success",
               messageItem("Message de Mame Thierno",
                           "Je voudrais de l'aide sur un exo .",
                           time = "1h"
               ),
               messageItem("Moniseur Camara",
                           "Bonjour, demain je serais un peu occupé. On va reprogrammer le cours pour la prochaine fois..",
                           time = "30 min"
               ),
               messageItem("New User",
                           "puis je avoir de l'aide, s'il vous plaît?",
                           time = "Today"
               )
  ),
  dropdownMenu(type = "notifications", badgeStatus = "warning",
               notificationItem("Vous pouvez voir votre progréssion pendant ce mois.", icon = icon("exclamation"), status = "info",
                                
               ),
               notificationItem("Vous avez un nouveau cours en PC",icon = icon("exclamation"), status = "info",
                                
               ),
               notificationItem("Vous avez un nouveau exercice en PC",icon = icon("exclamation"), status = "info",
               )
  ),
  dropdownMenu(type = "tasks", badgeStatus = "danger",
               taskItem("Mise à jour de votre profil", value = 70, color = "aqua",
               ),
               taskItem("evaluation", value = 80, color = "green",
               ),
               taskItem("Mise à jour de vos notes", value = 60, color = "yellow",
               ),
               taskItem("Write documentation", value = 80, color = "red",
               )
  )
)
shinyApp(
  ui = dashboardPage(
    #l'en tête
    header,
    #la partie gauche 
    dashboardSidebar(
      sidebarMenu(
        #Définir ce qui sera dans la partie gauche
        menuItem("Connexion", tabName = "Conex", icon = icon("users")),
        menuItem("ACCEUIL", tabName = "acceuil", icon = icon("dashboard")),
        menuItem("PROFIL", tabName = "profil", icon = icon("pen")),
        menuItem("COURS", tabName = "cours", icon = icon("book-open")),
        menuItem("EXERCICES", tabName = "exo", icon=icon("person-chalkboard")),
        menuItem("DISCUSSION", tabName = "chat", icon = icon("comment")),
        menuItem("DONNEES", icon = icon("database"), href = "https://www.recenter.tamu.edu/"),
        menuItem("Liste des icônes", icon = icon("font-awesome"), href = "http://fontawesome.io/icons/")
      )
    ),
    #la partie droite principale
    dashboardBody(
      tabItems(
        tabItem(
          "Conex",
          box(
            title = "Bienvenue dans votre plate-forme KAY-DIANG",
            #footer = "Pour plus d'informations",
            status = "info",
            solidHeader = TRUE,
            width = 8,
            "Connexion"
          ),
          textInput(1, "Identifiant_élève"),
          textInput(2, "mot de passe_élève"
          ),
          textInput(1, "Identifiant_enségnant"),
          textInput(2, "Mot de passe_enségnant"
          )
        ),
        
        tabItem(
          "acceuil",
          box(
            title = "Le Saviez vous ?",
            footer = "Pour plus d'informations",
            status = "info",
            solidHeader = TRUE,
            width = 8,
            " Il y a autant d'étoiles dans l'Univers que de grains de sable sur Terre ! 
        la réponse à cette question est très simple : on..."
          ),
          infoBox(
            title = "Le Saviez vous ?",
            value = "Astronomie",
            subtitle = "Il y a autant d'étoiles dans l'Univers que de grains de sable sur Terre !La réponse à cette question est très simple : on...",
            icon = icon("planet-ringed"),
            fill = TRUE,
            color = "light-blue",
            width = 5,
            href = "https://scienceetonnante.com/2012/07/23/y-a-t-il-plus-detoiles-dans-lunivers-que-de-grains-de-sable-sur-terre/"
          ),
          tabBox(
            title = "Informations",
            width = 4,
            tabPanel(title = "Niveau actuel", "8"),
            tabPanel(title = "Progression", "bien")
          )
        ),
        tabItem(
          "profil",
          box(title = "Ville", width = 4, "TOP des meilleures villes"),
          box(title = "Année", width = 4, "TOP des meilleurs années"),
          box(title = "Mois", width = 4, "TOP des meilleurs mois")
        )
      )
    ),
    title = "Plate-forme KAY-DIANGr",
    skin = "red" #Couleur
  ),
  server = function(input, output) {
  }
)
