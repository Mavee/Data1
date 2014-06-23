#FileName: SERVER.R
#Description: This script calculates the predicted price (in USD) for diamonds with the weights input by the user. 
#"Diamond Price Prediction".  The Price prediction is based on a lineear regression prediction model developed from the R diamond dataset. 
#Predicted value is then sent to the UI.R and displayed in the user interface.  

#To Execute: Load the library(shiny) and run the command 'runApp()' in the working directory having both UI.R and SERVER.R

library(UsingR)
data(diamond)

#function returns the predicted price
diamondValue <- function(wt){
    fit <- lm(price~carat, data=diamond)
    p <- predict(fit, newdata=data.frame(carat=wt))
    as.numeric(round(p*0.8,2))  #assuming the exchange rate at 1 Singapore$ = 0.80 USD
   
}

#function returns the mean of carat variable rounded to 2 decimals in diamond dataset
meanCarat <- function(){
    round(mean(diamond$carat),3)
}

#function returns the mean of price variable rounded to 2 decimals in diamond dataset
meanPrice <- function(){
     round(mean(diamond$price*0.8),2)
 }

shinyServer(
    function(input,output){
        output$inputValue <- renderPrint({input$weight})
        output$prediction <- renderText({diamondValue(input$weight)})
        output$cmean <- renderPrint({if (!is.null(input$chk)) meanCarat() else NULL})
        output$pmean <- renderPrint({if (!is.null(input$chk1)) meanPrice() else NULL})
        }
)