#!/bin/bash
# Copyright alibaba Technologies Co., Ltd. 2023-2030. All rights reserved.
set -ex



: << COMMENT
场景: shell中 一对双引号内的*仅表示*号，不是通配
原理：双引号里只会保留部分特殊字符功能（如$ \ ` " !）,其余当普通字符（当然这里包括*号）
COMMENT