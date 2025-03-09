#!/bin/bash

# 脚本用途：使用 MISA 查找 SSR
# 输入文件：genome.fasta (完整的叶绿体基因组序列)
# 输出文件：misa_output.txt, misa_output.statistics
# 依赖软件：MISA (版本：2.1)

# 设置 MISA 参数
MISA_EXE="/path/to/misa.pl"  # 修改为你的 MISA 脚本的路径

# 输入文件
INPUT_FASTA="data/genome.fasta"
#定义重复单元的最小重复数
MIN_REPEATS="10 5 4 3 3 3"

# 输出文件
OUTPUT_BASE="misa_output"

# 运行 MISA
perl $MISA_EXE -n $MIN_REPEATS $INPUT_FASTA

echo "MISA 运行完成。"
