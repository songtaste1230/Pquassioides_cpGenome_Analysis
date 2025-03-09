#!/bin/bash

# 脚本用途：使用 GetOrganelle 组装叶绿体基因组
# 输入文件：filtered_reads_R1.fastq.gz, filtered_reads_R2.fastq.gz
# 输出文件：GetOrganelle 组装结果目录 (例如：get_org_out/)
# 依赖软件：GetOrganelle (版本：1.7.1)

# 设置 GetOrganelle 参数
GETORG_DB="/path/to/getorganelle_db"  # GetOrganelle 数据库路径 (如果需要)
KMER="21,45,65,85,105"                 # k-mer 值
THREADS=8                              # 线程数

# 输入文件
R1="data/filtered_reads_R1.fastq.gz"
R2="data/filtered_reads_R2.fastq.gz"

# 输出目录
OUTPUT_DIR="get_org_out"

# 运行 GetOrganelle
get_organelle_from_reads.py -1 $R1 -2 $R2 \
  -o $OUTPUT_DIR -R 15 -k $KMER \
  -t $THREADS  \
  --out-per-round

 # -F embplant_pt #指定数据库类型，这部分可以根据情况添加或者删除。

echo "GetOrganelle 组装完成。"
