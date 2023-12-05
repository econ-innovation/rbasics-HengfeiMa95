library(readr)

# 获取文件夹路径
mypath <- commandArgs(trailingOnly = TRUE)[1]

# 获取文件夹中的所有文件
file_list <- list.files(mypath, full.names = TRUE)

# 使用lapply读取所有文件
data_list <- lapply(file_list, read_csv)

# 将所有数据框合并为一个
combined_data <- do.call(rbind, data_list)

# 将合并后的数据框写入 CSV 文件
write_csv(combined_data, "output_combined.csv")
