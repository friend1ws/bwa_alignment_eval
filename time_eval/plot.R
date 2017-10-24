library(ggplot2)

D <- read.table("bwa_alignment_time_summary.txt", sep = "\t", header = TRUE)

ggplot(D, aes(x = Thread, y = Time)) +
  geom_point() +
  theme_bw() 

ggsave("bwa_alignment_proc_time.png")


  