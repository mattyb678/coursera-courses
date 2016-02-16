complete <- function(directory, id = 1:332) {
  files <- list.files(directory)
  ids <- numeric()
  nobs <- numeric()
  for (i in id) {
    data <- read.csv(paste(directory,files[i],sep="/"))
    ids <- c(ids, i)
    data <- data[!is.na(data$sulfate) & !is.na(data$nitrate), ]
    nobs <- c(nobs, nrow(data))
  }
  data.frame(id=ids, nobs)
}