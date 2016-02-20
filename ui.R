shinyUI(
  pageWithSidebar(
    headerPanel("Dosage Calculator"),
    fluidPage(
      fluidRow(
        column(1,
               numericInput('weight', 'Current Wt', 3, min = .1, max = 150, step = .1)
        ),
        column(2,
               selectInput("meds", label = "Medicines",
                           c("Acepromazine min dose" = 0.25,
                             "Acepromazine mean dose" = 0.625,
                             "Acepromazine max dose" = 1,
                             "Alprazolam min dose" = .005,
                             "Alprazolam mean dose" = .025,
                             "Alprazolam max dose" = .045,
                             "Amitriptyline min dose" = .5,
                             "Amitriptyline mean dose" = .125,
                             "Amitriptyline max dose" = 2,
                             "Amlodipine min dose" = .025,
                             "Amlodipine mean dose" = .0375,
                             "Amlodipine max dose" = .05,
                             "Amoxicillin min dose" = 5,
                             "Amoxicillin mean dose" = 7.5,
                             "Amoxicillin max dose" = 10,
                             "Atenolol min dose" = .125,
                             "Atenolol mean dose" = .3125,
                             "Atenolol max dose" = .5,
                             "Carprofen min dose" = 1,
                             "Carprofen mean dose" = 1.5,
                             "Carprofen max dose" = 2,
                             "Cephalexin min dose" = 10,
                             "Cephalexin mean dose" = 12.5,
                             "Cephalexin max dose" = 15,
                             "Chloramphenicol" = .25,
                             "Clindamycin min dose" = 12,
                             "Clindamycin mean dose" = 18,
                             "Clindamycin max dose" = 24))
        ),
        column(3,numericInput('age', 'age of animal in months', 0, min = 0, max = 300, step = 1))
      ),  # end of fluidRow
      submitButton('Calculate Doseage'),
      h3('Dosage to be administered - in mg'),
      verbatimTextOutput("medicine"),
      textOutput("age"),
      textOutput("weight"),
      
      
      br(),
      br(),
      h1('Dog Food Calculator'),
      h4('Your dog\'s ideal weight'),
      fluidRow(
        column(1,
               numericInput('idealWeight', 'Ideal Wt', 3, min = .1, max = 150, step = .1)
        ),
        column(2,
               selectInput("activity", label = "Your dog's activity level",
                           c("select an activity level..." = 0,
                             "Typical" = 1.6,
                             "Active" = 2,
                             "Overweight" = .75,
                             "Highly Active" = 3.5,
                             "Senior, neutered, inactive" = 1,
                             "Working Dog (light duty)" = 3,
                             "Working Dog (moderate duty)" = 4,
                             "Working Dog (heavy duty" = 5))
        ),
        column(3,numericInput('kcal', 'kcal/cup', 0, min = 0, max = 1300, step = 1))
      ),  # end of fluidRow
      
      submitButton('Calculate Calories'),
      h3('Calories to be consumed - per day'),
      verbatimTextOutput("activity"),
      textOutput("idealWeight"),
      textOutput("kcal"),
      br(),
      br()
    ),  # end of fluidPage
    textOutput("This appliction is A product of SquirlDar")
  )
)