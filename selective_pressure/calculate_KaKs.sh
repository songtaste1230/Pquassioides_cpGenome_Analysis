#!/bin/bash

# 脚本用途：使用 KaKs_calculator 计算 Ka/Ks
# 输入文件：alignment.fasta (密码子比对结果，FASTA 格式)
# 输出文件：kaks_output.txt
# 依赖软件：KaKs_calculator (版本：3.0)

# 设置 KaKs_calculator 参数
KAKS_EXE="/path/to/KaKs_Calculator3.0" #修改为可执行文件路径

# 输入文件
INPUT_ALIGNMENT="data/alignment.fasta"

# 输出文件
OUTPUT_FILE="kaks_output.txt"
#比对方法
METHOD="MA"

# 运行 KaKs_calculator
$KAKS_EXE -i $INPUT_ALIGNMENT -o $OUTPUT_FILE -m $METHOD -v

echo "KaKs_calculator 计算完成。"
