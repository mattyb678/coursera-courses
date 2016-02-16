pollutantmean <- function (directory, pollutant, id = 1:332) {
  files <- list.files(directory)
  files <- files[id]
  all <- numeric()
  for (file in files) {
    data <- read.csv(paste(directory,file,sep="/"))
    col <- data[[pollutant]]
    all <- c(all, col)
  }
  mean(all, na.rm = TRUE)
}