#!/bin/bash

# 脚本用途：使用 IQ-TREE 构建系统发育树
# 输入文件：alignment_gblocks.fasta (Gblocks 处理后的比对结果)
# 输出文件：alignment_gblocks.fasta.treefile (以及其他 IQ-TREE 输出文件)
# 依赖软件：IQ-TREE (版本：1.6.12)

# 设置 IQ-TREE 参数
IQTREE_EXE="/path/to/iqtree"  # 替换为你的 IQ-TREE 可执行文件路径
THREADS=8                    # 使用的线程数
MODEL="GTR+F+R3"           # 使用的替换模型
BOOTSTRAPS=5000              # ultrafast bootstrap 重复次数

# 输入文件
INPUT_ALIGNMENT="alignment_gblocks.fasta"

# 运行 IQ-TREE
$IQTREE_EXE -s $INPUT_ALIGNMENT -m $MODEL -bb $BOOTSTRAPS -nt $THREADS -o data/outgroup.fasta

echo "IQ-TREE 建树完成。"
