2018年4月1日～2018年4月2日の期間、Restricted Lucasという言語不問問題を出題しました。

## データセット等

https://github.com/cielavenir/codeiq_problems/tree/master/q1603 で公開しています。

## 想定解

### リュカ数列

- Nが大きいです。基本的にはフィボナッチ数列と同様に、行列累乗を使います。
- 単位行列から初項を加味して結果を得るには、e[0]*b+e[1]*a(今回はa=2,b=1)とすれば良いです。

### Easy

- 数値

数字をリテラルで保持するのが禁止されています。1000000007で割った余りを求める本問ですが、この数字すらリテラルにはできません。

なんらかの手段を用いて、数値0と1を用意します。これはRestricted Hello Worldでも出たネタです。これをビット演算すれば良いです。ただしHardでは加算が使えないので工夫が必要です。C++14だとconstexprが使えるので多少有利かも。

- 乗算と除算

繰り返し2乗法で実装します。除算は2進数による筆算を行います。

- 入出力

容易に変換できるため、文字列リテラルも禁止しましたが、入出力が困難になってしまった言語があると思います。C言語が筆頭で、この場合char[CHAR_MAX]に文字コードを入れ込んでフォーマット文字列を作成できます。

リテラルの禁止について、%qリテラル、円記号も封じているので、リテラルで出来ることは殆どないのではないかと思っています。

- C++ <https://yukicoder.me/submissions/242839>

### Hard

加算と減算が禁止されています。

- 加算

全加算器を実装します。キャリーフラグcは、`(a&b&mask) ^ (b&c) ^ (c&a)`で作成できます。

- 減算

全加算器の実装が引数(のコピー)を操作する実装であれば、操作する側は負の値でも問題なく操作できます。このとき、減算 `sub(a,b)` は、 `add(~add(~zero,b),a)`と表現できます。

以上により、行列の繰り返し2乗法全体をビット演算のみで実現、この問題を解くことができました。

なお、LLだと全加算器の実装によりTLE回避に成功したりしなかったりします。Ruby版の解答は
https://www.kaoriya.net/blog/2013/02/04/
を参考にしています。

- C++ <https://yukicoder.me/submissions/242811>
- Ruby <https://yukicoder.me/submissions/242832>

## 非想定解紹介

### Python

- import operator
    - <https://yukicoder.me/submissions/249101>

### Ruby

- send
    - <https://yukicoder.me/submissions/249355>

### C++

- (ll)div / fma
    - <https://yukicoder.me/submissions/248916>
- functional [plus](http://www.cplusplus.com/reference/functional/plus/) (etc)
    - これは新しい知識、収穫でした。
    - <https://yukicoder.me/submissions/249059>

### C\# ###

- System.Decimal [Add](https://msdn.microsoft.com/ja-jp/library/system.decimal.add.aspx) (etc)
    - これも収穫。
    - <https://yukicoder.me/submissions/249062>

### D

- [mixin](https://dlang.org/articles/mixin.html)
    - なんだこの機能。変態か…？
    - ~~チルダ禁止~~ にすると想定解が通らないんだよなぁorz
    - <https://yukicoder.me/submissions/249079>

### Java

- BigInteger
    - 当然知っていましたが、完全に盲点でした。
    - <https://yukicoder.me/submissions/248900>

てか、文字列「eval」だけは禁止しておけばよかったかなぁと思っています。

- ちゃんと全加算器を実装してくださった方、ありがとうございますToT

## コメンタリー

- 作業履歴によると、<https://yukicoder.me/problems/582> に作っていたという履歴がありました。そして、柳井氏のダンジョン問題 (<https://puzzleandgame.com/ja/code_dungeon/>) のページを参考に提出制限スクリプトも用意していました。
- ここまでしていたのに結局公開しなかった理由はもはや知るすべはありません。

- 時間制限の決め方がかなり難しかったです。当初はEasy/Hardは同じテストケースでしたが、Rubyが通らず、やむを得ずHardはテスト数を減らしました。

