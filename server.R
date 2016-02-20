shinyServer(
  function(input, output) {
    output$animalWeight <- renderText({input$weight})
    output$medicineLabel <- renderText({(input$meds)})
    output$medicine <- renderText(paste({(as.numeric(input$meds)*(input$weight))}, "mg doseage for", input$age, "month old dog weighing", input$weight, "pounds"))

    output$newWeight <- renderText({input$idealWeight})
    output$activityLabel <- renderText({input$activity})
    #output$activity <- renderText(paste("Feed", (round(((input$idealWeight * 70)^(3/4))) * {(as.numeric(input$activity))}), "calories for", input$age, "month old dog weighing", input$weight, "pounds. So feed", (input$kcal) ,"cups of your current food each day."))
    output$activity <- renderText(paste((round(((input$idealWeight * 70)^(3/4))) * {(as.numeric(input$activity))}) , "calories are required per day for a", input$age, "month old dog weighing", input$weight, "pounds. So feed", round((((input$idealWeight * 70)^(3/4))) * {(as.numeric(input$activity))} / input$kcal) ,"cups of your current dog food each day."))
    
    #output$`This appliction is A product of SquirlDar` <- (renderText(((190 * 70)^(3/4)) * 3))
  }
)
