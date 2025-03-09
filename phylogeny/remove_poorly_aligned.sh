#!/bin/bash

# 脚本用途：使用 Gblocks 去除比对结果中保守性差的区域
# 输入文件：alignment.fasta (MAFFT 比对结果)
# 输出文件：alignment_gblocks.fasta
# 依赖软件：Gblocks (版本：0.91b)

# 设置 Gblocks 参数
GBLOCKS_EXE="/path/to/Gblocks"  # 替换为你的 Gblocks 可执行文件路径

# 输入文件
INPUT_ALIGNMENT="alignment.fasta"

# 输出文件
OUTPUT_ALIGNMENT="alignment_gblocks.fasta"

# 运行 Gblocks, 参数按需调整
$GBLOCKS_EXE $INPUT_ALIGNMENT -t=c -b4=5 -b5=h -o=$OUTPUT_ALIGNMENT

echo "Gblocks 处理完成。"
