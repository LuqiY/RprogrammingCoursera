rankall <- function(outcome,num = "best"){
        data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
        
        ##check that outcome are valid
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
        
        state_all = unique(data[,7])
        all<-character(0)
        
        #find the hospital in given rank for each state
        for(i in seq_along(state_all)){
                #order data by outcome and hospital name
                i_data <- data[data$State==state_all[i] & data[col] != 'Not Available', ]
                sorted_data <-i_data[order(as.numeric(i_data[,col]),i_data[,2]),]
                
                #deal with special condition
                if(num == "best"){num = 1}
                if(num == "worst"){num = nrow(sorted_data)}
                
                #collect the names of hospital
                all[i] <- sorted_data[num,2]
        }
        
        # output a data frame
        data.frame(hospital = all, state = state_all, row.names = state_all)

        
}