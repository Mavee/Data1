Readme
=====

The Diamond Price Prediction project contains two files ui.R and server.R

FileName: UI.R
Description: This script controls the user interface elements for the Shiny Project "Diamond Price Prediction"
User will enter a weight for a diamond in carats to get the predicted price for the diamond for 
entered weight. The input field for entering weight is 'Weight' and the predicted price in Singapore $ will display 
on the right side of the application screen as the output.

FileName: SERVER.R
Description: This script calculates the predicted price (in USD) for diamonds with the weights input by the user. 
"Diamond Price Prediction".  The Price prediction is based on a lineear regression prediction model developed from the R diamond dataset. 
Predicted value is then sent to the UI.R and displayed in the user interface.  

To Execute the shiny application 'Diamond Price Prediction' in R.  You should have your working directory set to the directory where 
ui.R and server.R are located.

Then type the command runApp() to run the program.
