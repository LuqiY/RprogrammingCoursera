complete <- function(directory, id = 1:332) {
        dat<-data.frame()
        files_full <- list.files(directory, full.names=TRUE)
        for(i in id){
                eachfile<-read.csv(files_full[i])
                nobs<- sum(complete.cases(eachfile))
                dati<- data.frame(i,nobs)
                dat <- rbind(dat,dati)
        }
        
        colnames(dat)<-c("id","nobs")
        dat
}