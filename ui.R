shinyUI(pageWithSidebar(
        headerPanel("Knowing yourself"),
        sidebarPanel(
                dateInput("date", "Enter Date of you burthday:"),
                numericInput('height', 'What is your height in centimeter?', 150, min = 0, max = 300, step = 1),
                numericInput('weight', 'What is your weight in kilogram?', 50, min = 0, max = 400, step = 1)
        ),
        mainPanel(
                h4('The weekday you were born is:'),
                verbatimTextOutput("weekday"),
                h4('Your body mass index (BMI) is:'),
                verbatimTextOutput("BMI"),
                h5('BMI is weight divided by the square of height [ex. kg/m^2]. Normal range of BMI is 18.5 to 25 (http://en.wikipedia.org/wiki/Body_mass_index)'),
                h5('Thus your ideal weight in kg could be in the range of:'),
                verbatimTextOutput("range"),
                h5('but... it all depends and one should always consult a doctor for particular recommendations!')
        )
))
