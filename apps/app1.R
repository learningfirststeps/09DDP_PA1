Sys.setlocale("LC_TIME", "en_US") # use English output 
options(scipen=999) # turn off scientific notation
shinyServer(
        function(input, output) {
                output$weekday <- renderPrint(weekdays(as.Date({input$date})))
                output$BMI <- renderPrint({input$weight}/({input$height}/100)^2)
                output$range <- renderPrint(c(18.5*({input$height}/100)^2, 25*({input$height}/100)^2))
        }
)
