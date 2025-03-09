#!/bin/bash

# 脚本用途：使用 MAFFT 进行多序列比对
# 输入文件：sequences.fasta (包含所有待比对序列的 FASTA 文件)
# 输出文件：alignment.fasta
# 依赖软件：MAFFT (版本：7.487)

# 设置 MAFFT 参数
MAFFT_EXE="/path/to/mafft"  # 替换为你的 MAFFT 可执行文件路径
THREADS=8                   # 使用的线程数

# 输入文件
INPUT_FASTA="data/sequences.fasta"

# 输出文件
OUTPUT_ALIGNMENT="alignment.fasta"

# 运行 MAFFT
$MAFFT_EXE --thread $THREADS --auto $INPUT_FASTA > $OUTPUT_ALIGNMENT

echo "MAFFT 比对完成。"
