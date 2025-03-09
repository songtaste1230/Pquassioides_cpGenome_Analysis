#!/bin/bash

# 脚本用途：使用 Trimmomatic 对原始测序数据进行质量过滤
# 输入文件：raw_reads_R1.fastq.gz, raw_reads_R2.fastq.gz (示例文件名)
# 输出文件：filtered_reads_R1.fastq.gz, filtered_reads_R2.fastq.gz
# 依赖软件：Trimmomatic (版本：0.33)

# 设置 Trimmomatic 参数
TRIM_JAR="/path/to/trimmomatic-0.33.jar"  # 修改为你的 Trimmomatic jar 包的实际路径
THREADS=8                                  # 使用的线程数
LEADING=3                                 # 切除头部低质量碱基的阈值
TRAILING=3                                # 切除尾部低质量碱基的阈值
SLIDINGWINDOW=4:20                        # 滑动窗口大小和质量阈值
MINLEN=50                                 # 最短序列长度

# 输入文件
R1="data/raw_reads_R1.fastq.gz"
R2="data/raw_reads_R2.fastq.gz"

# 输出文件
R1_FILTERED="data/filtered_reads_R1.fastq.gz"
R2_FILTERED="data/filtered_reads_R2.fastq.gz"
R1_UNPAIRED="data/filtered_reads_R1_unpaired.fastq.gz" #未配对的reads
R2_UNPAIRED="data/filtered_reads_R2_unpaired.fastq.gz"

# 运行 Trimmomatic
java -jar $TRIM_JAR PE -threads $THREADS $R1 $R2 \
     $R1_FILTERED $R1_UNPAIRED $R2_FILTERED $R2_UNPAIRED \
     ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 \
     LEADING:$LEADING TRAILING:$TRAILING SLIDINGWINDOW:$SLIDINGWINDOW MINLEN:$MINLEN

echo "Trimmomatic 过滤完成。"
