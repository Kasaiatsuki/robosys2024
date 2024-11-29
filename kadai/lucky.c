// SPDX-FileCopyrightText: 2024 Atsuki Kasai
// SPDX-License-Identifier: BSD-3-Clause#include
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

// ラッキーカラー配列
const char *colors[] = {"赤", "青", "緑", "黄色", "ピンク", "紫", "白", "黒"};
const int color_count = sizeof(colors) / sizeof(colors[0]);

// おみくじ結果配列
const char *fortunes[] = {"大吉", "中吉", "小吉", "吉", "末吉", "凶", "大凶"};
const int fortune_count = sizeof(fortunes) / sizeof(fortunes[0]);

// シードを生成する関数
unsigned int generate_seed(int year, int month, int day, const char *type) {
    unsigned int seed = year * 10000 + month * 100 + day;
    for (int i = 0; type[i] != '\0'; i++) {
        seed += type[i]; // 種別文字列を使ってシードを変化
    }
    return seed;
}

int main() {
    // 日付を取得
    time_t t = time(NULL);
    struct tm *local = localtime(&t);
    int year = local->tm_year + 1900; // 年
    int month = local->tm_mon + 1;   // 月
    int day = local->tm_mday;        // 日

    // ユーザーに選択を促す
    int choice;
    printf("何を引きますか？\n");
    printf("1: おみくじ\n");
    printf("2: ラッキーカラー\n");
    printf("選択してください (1または2): ");
    scanf("%d", &choice);

    if (choice == 1) {
        // おみくじを引く
        srand(generate_seed(year, month, day, "omikuji"));
        int fortune_index = rand() % fortune_count;
        printf("今日（%04d-%02d-%02d）のおみくじの結果は... %s です！\n", year, month, day, fortunes[fortune_index]);
    } else if (choice == 2) {
        // ラッキーカラーを表示
        srand(generate_seed(year, month, day, "color"));
        int color_index = rand() % color_count;
        printf("今日（%04d-%02d-%02d）のラッキーカラーは... %s です！\n", year, month, day, colors[color_index]);
    } else {
        printf("無効な選択です。プログラムを終了します。\n");
    }

    return 0;
}

