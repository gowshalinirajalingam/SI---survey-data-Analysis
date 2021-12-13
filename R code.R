my_data <- read.csv(file.choose())
print(my_data)


install.packages("dplyr")
library("dplyr")
group_by(my_data, group) %>%
  summarise(
    count = n(),
    mean = mean(timeh, na.rm = TRUE),
    sd = sd(timeh, na.rm = TRUE)
  )

# Compute t-test
res <- t.test(timeh ~ group, data = my_data, paired = TRUE,alternative = "less")
res


