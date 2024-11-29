#!/bin/bash

# SPDX-FileCopyrightText: 2024 Atsuki Kasai
# SPDX-License-Identifier: BSD-3-Clause

# テスト1: おみくじ
echo "1" | ./lucky > output1.txt
if grep -q "今日（" output1.txt && grep -q "のおみくじの結果は" output1.txt; then
    echo "おみくじテスト: 成功"
else
    echo "おみくじテスト: 失敗"
    cat output1.txt
    exit 1
fi

# テスト2: ラッキーカラー
echo "2" | ./lucky > output2.txt
if grep -q "今日（" output2.txt && grep -q "のラッキーカラーは" output2.txt; then
    echo "ラッキーカラーテスト: 成功"
else
    echo "ラッキーカラーテスト: 失敗"
    cat output2.txt
    exit 1
fi

# 後片付け
rm output1.txt output2.txt

echo "すべてのテストが成功しました"

