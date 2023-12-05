#Assignment2
getwd()
mypath = "/Users/mahengfei/Dropbox/assignment_idaccuracy/Aminer"
file.exists(mypath) 
setwd(mypath)

library(readr) 

# 获取文件夹中的所有文件
file_list <- list.files(mypath, full.names = TRUE)

for (current_file in file_list) {
  data <- read_csv(current_file) 
  write_csv(data, "/Users/mahengfei/Dropbox/assignment_idaccuracy/tmp.csv", append = TRUE)
}


#apply家族函数


mypath <- "/Users/mahengfei/Dropbox/assignment_idaccuracy/Aminer"  
file_list <- list.files(mypath, full.names = TRUE)

# 使用lapply读取所有文件
data_list <- lapply(file_list, read_csv)

# 将所有数据框合并为一个
combined_data <- do.call(rbind, data_list)

# 将合并后的数据框写入 CSV 文件
write_csv(combined_data, "/Users/mahengfei/Dropbox/assignment_idaccuracy/tmp2.csv")


