#!/bin/bash

# 脚本用途：使用 DnaSP 计算核苷酸多样性
# 输入文件：alignment.fasta (多序列比对结果，FASTA 格式)
# 输出文件：dnas_output.txt
# 依赖软件：DnaSP (版本：6)

# 设置 DnaSP 参数 (注意：DnaSP 通常是图形界面程序，这里只是示例命令行调用)
DNASP_EXE="/path/to/DnaSP6"  # 修改为你的 DnaSP 可执行文件的路径
WINDOW_SIZE=600
STEP_SIZE=200

# 输入文件
INPUT_ALIGNMENT="data/alignment.fasta"

# 输出文件
OUTPUT_FILE="dnas_output.txt"

# 运行 DnaSP (命令行调用方式可能需要根据你的 DnaSP 版本进行调整)
# 以下只是一种可能的命令行调用方式，DnaSP 更多是通过图形界面操作
$DNASP_EXE $INPUT_ALIGNMENT -o $OUTPUT_FILE -w $WINDOW_SIZE -s $STEP_SIZE -a

echo "DnaSP 计算完成。"
