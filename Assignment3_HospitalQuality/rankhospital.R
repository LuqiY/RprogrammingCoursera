rankhospital <- function(state, outcome, num = "best") {
        
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
        
        #order data by outcome and hospital name
        data <- data[data$State==state & data[col] != 'Not Available', ]
        sorted_data <-data[order(as.numeric(data[,col]),data[,2]),]
        
        #deal with special condition
        if(num == "best"){num = 1}
        if(num == "worst"){num = nrow(sorted_data)}
        
        #output result
        sorted_data[num,2]
}