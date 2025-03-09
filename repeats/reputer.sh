#!/bin/bash

# 脚本用途：使用 REPuter 查找重复序列
# 输入文件：genome.fasta (完整的叶绿体基因组序列)
# 输出文件：reputer_output.txt
# 依赖软件：REPuter

# 设置 REPuter 参数
REPUTER_EXE="/path/to/reputer"  # 修改为你的 REPuter 可执行文件的路径
MIN_REPEAT_SIZE=30
HAMMING_DISTANCE=3

# 输入文件
INPUT_FASTA="data/genome.fasta"

# 输出文件
OUTPUT_FILE="reputer_output.txt"

# 运行 REPuter
$REPUTER_EXE -b -h $HAMMING_DISTANCE -l $MIN_REPEAT_SIZE $INPUT_FASTA > $OUTPUT_FILE

echo "REPuter 运行完成。"
