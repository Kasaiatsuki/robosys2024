# robosys2024
ロボットシステム学授業用
# 今日の運勢＆ラッキーカラーコマンド
![test](https://github.com/kasaiatsuki/robosys2024/actions/workflows/kadaitest.yml/badge.svg)

このコマンドはその日の運勢とラッキーカラーが分かるPythonプログラムです．また，テストを行うスクリプトも含まれています．
---
# 概要
kadai/lucky は以下の機能を提供します．
1. 運勢:「大吉」「中吉」「凶」などの結果を生成.
2. ラッキーカラー: ランダムにラッキーカラー「赤」「青」「緑」などを生成．
3. １日に異なる運勢，ラッキーカラーが出ることはありません．

---
# 動作環境
- Python (以下のバージョンをサポート)
- Python 3.6 ~ 3.10
# テスト環境
Ubuntu 20.04
 ---
 # インストール
```bash
git clone https://github.com/Kasaiatsuki/lucky.git
cd lucky
```
# 起動手順
```bash
./lucky
```
で実行すると，下の選択画面が表示されるので1または2選択してください．
```bash
何を引きますか？
1: おみくじ
2: ラッキーカラー
選択してください(1または2):
```
するとその日の運勢またはラッキーカラーが出てきます．
または，下のように実行することもできます．
```
 echo "1" | ./lucky
1: おみくじ
2: ラッキーカラー
選択してください (1または2): 今日（YYYY-MM-DD）のおみくじの結果は... 大吉 です！
---
# 参考文献
- [ロボットシステム学第3回: Linux環境でのPythonプログラミングII](https://ryuichiueda.github.io/slides_marp/robosys2024/lesson3.html)
- [ロボットシステム学第5回: 著作権とライセンス](https://yumarublog.com/python/lottery/?utm_source=chatgpt.com)
- [ロボットシステム学第6回: ソフトウェアのテスト](https://ryuichiueda.github.io/slides_marp/robosys2024/lesson6.html#1)
- [ロボットシステム学第7回: GitHubでのテスト](https://ryuichiueda.github.io/slides_marp/robosys2024/lesson7.html#1)
- [pythonで乱数シード(seed)を設定する３種の方法](https://python-ai-learn.com/2021/02/06/seed/?utm_source=chatgpt.com)
- [Pythonで標準入力から入力を受け取る方法](https://iifx.dev/ja/articles/5420631)
- [Pythonのtimeモジュールで現在の日付・時間を取得する](https://liquidjumper.com/programming/python/python_time_module_time)
# ライセンスと著作権
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージのコードの一部分は,下記のスライド(CC-BY-SA 4.0 by ryuichi ueda)のものを本人の許可を得て自身の著作としたものです.
- https://github.com/ryuichiueda/slides_marp/tree/master/robosys2024
- © 2024 Atsuki Kasai

