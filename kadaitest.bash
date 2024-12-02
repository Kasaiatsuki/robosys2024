#!/bin/bash

# SPDX-FileCopyrightText: 2024 Atsuki Kasai
# SPDX-License-Identifier: BSD-3-Clause

# Pythonバージョンリスト
PYTHON_VERSIONS=("python3.6" "python3.7" "python3.8" "python3.9" "python3.10")

# 各Pythonバージョンでテストを実行
for PYTHON in "${PYTHON_VERSIONS[@]}"; do
    if command -v $PYTHON > /dev/null; then
        echo "Pythonバージョン: $PYTHON"

        # 仮想環境を作成
        ENV_DIR="env_$PYTHON"
        $PYTHON -m venv $ENV_DIR
        source $ENV_DIR/bin/activate

        # テスト1: おみくじ
        echo "1" | ./lucky > output1.txt
        if grep -q "今日（" output1.txt && grep -q "のおみくじの結果は" output1.txt; then
            echo "おみくじテスト: 成功 ($PYTHON)"
        else
            echo "おみくじテスト: 失敗 ($PYTHON)"
            cat output1.txt
            deactivate
            rm -rf $ENV_DIR
            exit 1
        fi

        # テスト2: ラッキーカラー
        echo "2" | ./lucky > output2.txt
        if grep -q "今日（" output2.txt && grep -q "のラッキーカラーは" output2.txt; then
            echo "ラッキーカラーテスト: 成功 ($PYTHON)"
        else
            echo "ラッキーカラーテスト: 失敗 ($PYTHON)"
            cat output2.txt
            deactivate
            rm -rf $ENV_DIR
            exit 1
        fi

        # 仮想環境を破棄
        deactivate
        rm -rf $ENV_DIR
    else
        echo "Pythonバージョン $PYTHON が見つかりません。スキップします。"
    fi
done

# 後片付け
rm output1.txt output2.txt

echo "すべてのテストが成功しました"

