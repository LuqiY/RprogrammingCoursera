corr <- function(directory, threshold = 0) {
        cortotal <- c()
        files_full <- list.files(directory, full.names=TRUE)
        for(i in 1:length(files_full)){
                dat<-read.csv(files_full[i])
                notNA <- complete.cases(dat)
                dat <- dat[notNA,]
                if (nrow(dat) > threshold) {
                        cortotal <- c(cortotal, cor(dat$sulfate,dat$nitrate))
                }
        }
        return (cortotal)
}
        