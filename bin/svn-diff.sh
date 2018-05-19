#! /bin/sh
#
# diffwrap.sh
# Copyright (C) 2014 Fechin <mr.fechin@gmail.com>
#
# Distributed under terms of the MIT license.
#

# 配置你喜欢的diff程序路径
DIFF="vimdiff"

# SVN diff命令会传入两个文件的参数 
LEFT=${6}
RIGHT=${7}

# 拼接成diff命令所需要的命令格式
$DIFF $LEFT $RIGHT
