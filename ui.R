#FileName: UI.R
#Description: This script controls the user interface elements for the Shiny Project "Diamond Price Prediction"
#User will enter a weight for a diamond in carats to get the predicted price for the diamond for 
#entered weight. The input field for entering weight is 'Weight' and the predicted price in Singapore $ will display 
#on the right side of the application screen as the output.

shinyUI(pageWithSidebar(
    headerPanel("Diamond Price Prediction"),
    
    sidebarPanel(
        h4('Enter a diamond weight in carats to get its price prediction'),
        numericInput('weight', 'Weight (in carats)', 0.1, min=0.1, max=5, step=0.1),
        checkboxGroupInput("chk", h4("Check below to get Mean for 'carat' in R diamond dataset"),c("carat variable")),
        checkboxGroupInput("chk1",h4("Check below to get Mean for 'price' in R diamond dataset"), c("price variable")),
        submitButton('Submit'),
        p('*click submit to update output*')
     ),
    
 mainPanel(
     h3('Results of prediction'),
     h4('Entered weight [in carats] : '),
     verbatimTextOutput("inputValue"),
     h4('Predicted price is [in USD] : '),
     verbatimTextOutput("prediction"),
     h4('Mean value for carat in R diamond data [in carats]: '),
     verbatimTextOutput("cmean"),
     h4('Mean value for price in R diamond data [in USD]: '),
     verbatimTextOutput("pmean")
     )
)
)