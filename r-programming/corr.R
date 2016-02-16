corr <- function(directory, threshold = 0) {
  files <- list.files(directory)
  cors <- numeric()
  for(i in 1:length(files)) {
    data <- read.csv(paste(directory,files[i],sep="/"))
    data <- data[!is.na(data$sulfate) & !is.na(data$nitrate), ]
    if (nrow(data) > threshold) {
      cors <- c(cors, cor(data$nitrate, data$sulfate))
    }
  }
  cors
}