best <- function(state, outcome) {
        data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
        
        ##check that state and outcome are valid
        state_all = unique(data[,7])
        if(!state %in% state_all ){
                stop("invalid state")
        }
        if(!((outcome=="heart attack")|(outcome=="heart failure")|(outcome=="pneumonia"))){
                stop("invalid outcome")
        }
        
        ##get the column number
        col <- if(outcome == "heart attack"){
                11
        }else if(outcome =="heart failure"){
                17
        }else{
                23
        }
        
        ## Return hospital name in that state with lowest 30-day death rate
        data <- data[data$State==state & data[col] != 'Not Available', ] #data[,col]also works
        vals <- data[, col]
        rowNum <- which.min(vals)
        data[rowNum, 2 ]
}
        