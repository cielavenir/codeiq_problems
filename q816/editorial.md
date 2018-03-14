2014年3月31日～2014年4月21日の期間、hybrid A+B problemというコーディングパズル問題を出題しました。
18名の方が挑戦してくださいました。

## お詫び
JavaScript系の3言語を同時に使えない組にいれていなかったため、この3つを使うことで解答が可能です。
また、プリプロセッサを使うことで、

- C
- C#
- F#
- Pike

を使った解答が可能です。
出題当初の作者解が「Perl/C/Whitespace」と「Ruby/C/Whitespace」であったため、難易度調整を誤ってしまいました。

## データセット等
<https://github.com/cielavenir/codeiq_problems/tree/master/q816>
で公開しています。

## ランキング

※オンリーワン言語は **太字**

|順位|言語数|ニックネーム(敬称略)|言語|
|:--|:--|:--|:--|
|1|13|みけCAT|Whitespace / Brainf\*\*k / **Common Lisp (clisp)** / Scheme (guile) / Ruby / Perl / **Node.js** / **JavaScript (rhino)** / Groovy / JavaScript (spidermonkey) / **Assembler (nasm-2.10.01)** / **COBOL** / **PARI/GP**|
|2|12|NeoCat|Bash/Brainf\*\*k/C/ **CLIPS** / **INTERCAL** /Perl/Perl 6/Python/Ruby/Pike/ **Prolog (swi)** /Whitespace|
|(3)|8|ciel ※出題後改訂|Whitespace/Ruby/Perl6/Perl/C/Pike/C#/ **F#**|
|3|6|osa_k|Whitespace / Perl / Ruby / Python / C / Pike|
|4|4|yoshi-taka|Ruby/Perl/ **AWK(gawk)** / **Clojure**|
|||naoki-kp|C / Perl / Perl 6 / Whitespace|
|6|3|しゃろ|Whitespace / C / Ruby|
|||KTazakik|ruby/groovy/guile|
|||L.star|C/Perl/Ruby|
|||ouber|C++/Ruby/Perl|
|||カニ戯（ry|C / Perl5 / Whitespace|
|||tnakao|C/Perl/Ruby|
|||ryosy383|C++11/Ruby/Python|
|||tbpgr|Ruby/Perl/ **Falcon**|
|||n_so5|bash/C/C#|
|||himox_x|Whitespace/ **forth** / **ada**|
|||Azicore|JavaScript (spidermonkey)/Perl/Ruby|

見事トップを獲られたみけCAT様、おめでとうございます。
また、Azicore様はオンリーワン言語こそありませんでしたが、有効コード中最短コードでした。おめでとうございます。

## 解答紹介
* (割愛させていただきます)
## 最後に
今回はあるソースを他の言語で解釈した場合にいかにすり抜けるかを考える問題でした。
コメントの書き方も言語ごとに違うので、工夫が必要でした。
言語ごとに凝った使い方を知ることができてよかったです。ありがとうございました。

## 問題文
### 問題
標準入力の1行目と2行目に数値が与えられます。その和を標準出力に出力して下さい。
ただし、解答ソースコードは、<b>同一ソースコードで、後に述べる言語から3つ以上で処理できる必要があります。</b>
出力において、終端に改行はあってもなくても構いません。

※stdoutに終了メッセージを出力する言語があるようです。その場合、stdoutの1行目で判断しますので、改行を必ず入れて下さい。

### 制約
入力の数値は1以上10000000以下です。
また、実行は15秒以内でなければなりません。

### 入出力例
入力

~~~
3624252
6003781
~~~

出力

~~~
9628033
*** 2行目以降に別の出力があっても正解扱いとします ***
~~~

### 解答方法
answer.txtの1行目に解答言語を記述し、2行目以降に任意で感想などをお書き下さい。
answer.srcに解答ソースコードを記述して下さい。
answer.txtとanswer.srcをzip圧縮して提出して下さい。

(answer.srcは本アーカイブから取得してください)

### 言語一覧
ideone.comで使用できる言語全てが使用可能ですが、以下の組からはそれぞれ1つしか選択できません。

|言語|
|:--|
|C/Objective-C/C++ 4.3.2/C++ 4.8.1/C++11|
|Java/Java7|
|Pascal (fpc)/Pascal (gpc)|
|Python/Python 3|
|AWK (gawk)/AWK (mawk)|
|Prolog (gnu)/Prolog (swi)|

例えば、

answer.txt

~~~
C/Objective-C/C++11
~~~

answer.src

~~~c
#include <stdio.h>
int main(){int a,b;scanf("%d%d",&a,&b);printf("%d",a+b);return 0;}
~~~

は、確かに3つの言語で処理が可能ですが、「C/Objective-C/C++ 4.3.2/C++ 4.8.1/C++11」の組から2つ以上選択しているため無効となります。

### 評価
1つの言語で正しく動作:2点
2つの言語で正しく動作:3点
3つ以上の言語で正しく動作:5点
