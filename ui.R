library(shiny) 

shinyUI
(
    pageWithSidebar
    (
        # Application title
        headerPanel("Dynamic Future Value Financial Calculator"),
        
        sidebarPanel
        (
            numericInput('rate', 'Enter Annual Interest Rate as Decimal (e.g., 0.10)', 0.01, min = 0.01),
            numericInput('years', 'Enter Number of Years as Integer (e.g., 15)', 1, min = 1),
            numericInput('deposit', 'Enter Annual Deposit as Integer (e.g., 3000)', 1, min=1)                         
            #submitButton('Submit')
        ), 
        mainPanel
        (
            p('This financial calculator returns the future value (FV) of an investment based on the following:'),
            p('A constant dollar amount invested/deposited at the end of each year for a number of years.'),
            p('The investment/deposit will earn a constant annual rate of interest over the investment period.'),            
            p('Please note: All fields must be entered and entered as specified to avoid NA or NaN type values.'),
            h4('Taking into account the values entered by default or by you:'), 
            p('Rate:'), verbatimTextOutput("inputratevalue"),
            p('Years:'), verbatimTextOutput("inputyearsvalue"),
            p('Deposit:'), verbatimTextOutput("inputdepositvalue"),
            
            h4('The Future Value of Your Investment is:'),
            verbatimTextOutput("FV")                    
        )
        
    )   
)