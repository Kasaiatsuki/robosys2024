#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Atsuki Kasai
# SPDX-License-Identifier: BSD-3-Clause
ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

out=$(seq 5 | ./plus)
++ seq 5
++ ./plus
+ out=15
[ "${out}" = 15 ] || ng "$LINENO"
+ '[' 15 = 15 ']'

[ "${res}" = 0 ] && echo OK
+ '[' 0 = 0 ']'
+ echo OK
OK
exit $res
+ exit 0
