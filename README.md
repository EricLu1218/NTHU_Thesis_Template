# National Tsing Hua University - Thesis Template

由於學校的論文格式在114學年度有更新，因此我修改了模板，並且將原本的模板做了整理，讓大家可以更方便使用。[預覽](Preview.pdf)

原模板的作者與GitHub Repo如下：
* Tz-Huan Huang [ntu-thesis](https://github.com/tzhuan/ntu-thesis)
* Hao-Wei Lee [nthu-thesis-template](https://github.com/HW-Lee/nthu-thesis-template)
* signxer [nthu-thesis-template-mod](https://github.com/signxer/nthu-thesis-template-mod)

## File Structure
```
.
├── chapter                        // 論文章節(可自行增減)
│   ├── introduction.tex
│   ├── preliminaries.tex
│   ├── methodology.tex
│   ├── experimental-results.tex
│   ├── conclusion.tex
│   └── template.tex               // LaTeX 範例與模板
├── content                        // 論文本體外的內容
│   ├── abstract.tex               // 摘要
│   ├── acknowledgements.tex       // 誌謝
│   ├── approval-form.pdf          // 替換成你的推薦書
│   ├── authorized-agreement.pdf   // 替換成你的授權書
│   └── review-form.pdf            // 替換成你的審定書
├── figure                         // 圖片放這邊
├── table                          // 表格放這邊
├── kaiu.ttf                       // 標楷體字型檔
├── nthuthesis.cls                 // 論文格式檔
├── nthuvars.tex                   // 論文封面設定檔
├── reference.bib                  // 參考文獻放這邊
└── thesis.tex                     // 論文本體
```

## How to Use
1. 下載成.zip後上傳到[Overleaf](https://www.overleaf.com/)並開啟，將編譯器改成`XeLaTeX`即可成功編譯。
2. `nthuvars.tex`為論文封面文字的設定檔，直接修改對應欄位即可。
3. 請將所有圖片(與表格)都放在`figure`(與`table`)資料夾內，這樣比較整齊。
4. 請將參考文獻資訊都放在`reference.bib`內。
5. 論文內容在`chapter`跟`content`這兩個資料夾內，可以自行修改及新增。
6. 論文本體在`thesis.tex`內，若有新增chapter或content記得要input進來。

## Change Thesis Type
可以在`thesis.tex`中的`\documentclass[...]{nthuthesis}`修改論文類型，預設為`master`，可以改成`[phd]`或`[proposal]`變成博士論文或博士論文計畫提案書。

## Simple LaTeX Manual and Useful Templates
我有整理一些簡單的LaTeX教學與模板放在`chapter/template.tex`，有需要的可以參考。我在`thesis.tex`中有將這個檔案引入，因此可以到Chapter 6查看，在論文完成後記得去把它註解掉。
```tex
%% This file provides useful templates to help you finish your thesis.
\input{chapter/template}  % Comment this after you finish your thesis.
```
