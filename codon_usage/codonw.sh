#!/bin/bash

# 脚本用途：使用 CodonW 计算 RSCU 值
# 输入文件：cds.fasta (包含所有 CDS 序列的 FASTA 文件)
# 输出文件：codonw_output.txt
# 依赖软件：CodonW (版本：1.4.2)

# 设置 CodonW 参数
CODONW_EXE="/path/to/codonw"  # 修改为你的 CodonW 可执行文件的路径

# 输入文件
INPUT_FASTA="data/cds.fasta"

# 输出文件
OUTPUT_FILE="codonw_output.txt"

# 运行 CodonW
$CODONW_EXE $INPUT_FASTA $OUTPUT_FILE -all_indices -nomenu

echo "CodonW 计算完成。"
