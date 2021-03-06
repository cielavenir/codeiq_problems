2013年10月9日〜2013年10月23日の期間、Shortest Tripという組合せ最適化問題を出題しました。
強気の100人で行きましたが、実際の挑戦者数は17人でした。
難易度を上げ過ぎたということも有りましたが、これぐらいの挑戦者数が普通だと思うんですよ。前回はビギナーズラックというものです。

## 言語統計
* AWK 1名
* C\# 1名
* D 1名
* Haskell 1名
* Java 3名
* PHP 1名
* Python 1名
* Ruby 6名
* Scala 2名

C(++)での提出は1件もありませんでした。実は「小数点以下6桁」というのはprintfのデフォルトがそうだからという理由でしかなく、申し訳なく思っています。

## データセット等
<https://github.com/cielavenir/codeiq_problems/tree/master/q495>
で公開しています。
基本的にWikipediaからコピペしてかなローマ字変換したファイルをGoogle Geocoding APIに掛けて、北緯・東経を取得しています(placesgen.rb)。

## data2の最小解
皆様の解答によると、data2.inの最小解は、7925.326294 [km]となるようです。

|この移動距離を導き出した方は以下の5名です(提出順)。|
|:--|
|KTazakik様|
|Mu様|
|tnakao様|
|rotary-o様|
|johnny doe様|

私の答案は4時間走らせてようやく9789.569481 [km]でした(data2.progress)ので、本当に素晴らしいと思います。

## 解法
今回、訪問都市リストに重複を入れたのは、グラフ問題を解くのに特化したアルゴリズムを防ぐためです。ほとんどの方がこの点を汲み取ってくださいました。
今回ideoneで動作することを要件として指定していません。15秒で解くのは不可能であることはわかって出題したからです。

#### data1
data1は13行あります。距離計算がそれなりに重いので、全探索で解くにせよ、ある程度の工夫が必要になります。

##### 解法1
その時点での総移動距離が最短距離を越えていれば打ち切ることで探索を減らすことが可能です。

##### 解法2 (shortesttrip.cpp)
data1.inは

```
13
mihama
yokohama
higashi
chuo
mihama
higashi
takayama
chuo
mihama
chuo
higashi
takayama
yokohama
```

となっているので、これを

~~~javascript
{mihama: [0,4,8], yokohama: [1,12], higashi: [2,5,10], chuo: [3,7,9], takayama: [6,11]}
~~~

という形式で保持します。
その後、各キーに対し、都市リストについてnext_partial_permutation()を回し、各インデックスに割り当てます。
こうすると13!=6227020800回から、4P3&lowast;2P2&lowast;9P3&lowast;10P3&lowast;3P2=104509440回に探索回数を減らすことができます。
ただし、この解法だと探索を打ち切ることができないため、データが大きくなる(data2)と不利になると思われます。

また、言語によってはPartial Permutationがサポートされていないということもあります。C++は標準では使えませんが、next_permutation()の直前に後半をreverse()することで対応することができます。

#### data2

data2はたった35行では有りますが、グラフアルゴリズムが使えない以上、膨大なサイズとなります。簡単な工夫では最小解を求めることはできません。

最小解を出した5名様のコード _アーカイブでは割愛させていただきますが、整数計画法や遺伝アルゴリズムが使われていました。_

いろいろな解法があり、面白いと思いました。出題してよかったです。

## 問題文
同一名称の地名は世界にたくさん存在します。
まずは国内を周ってみたいと考えました。
旅行行程リストを作った時、 **同じ地名であればどこに行っても良いとする** ならば、どう移動すれば移動距離を最小化できるでしょうか？

[入力]

```
N
S1 la1 ln1
…
SN laN lnN
M
V1
…
VM
```

先頭行は地名リストの行数Nが入ります。
続くN行に地名リストが「地名 北緯 東経」の順番で格納されます。地名はアルファベット小文字20文字以内、北緯・東経は小数です。 **地名は重複を含みます。**
次の行に旅行行程リストの行数Mが入ります。
続くM行に行程リストが入ります。

[出力]
移動距離が最小となるような移動距離と、その移動を行うための東経・北緯のリストを小数点以下6桁で出力して下さい。
行程リストVi(1<=i<=M)に対して、 **Viと同じ地名であれば、地名リストからどれを選んでも構いません。** ただし、それまでに選ばれていない地名に限ります。

なお、北緯をla1・la2、東経をln1・ln2(ラジアン)とすると、[la1,ln1]と[la2,ln2]間の距離は

~~~c
6378.137*acos(sin(la1)*sin(la2)+cos(la1)*cos(la2)*cos(ln1-ln2)) [km]
~~~

で求めることができます。

[サンプル]
サンプル(data0.in)の後半は、

```
4
higashi
chuo
higashi
chuo
```

となっています。
上記条件下で移動距離を最小化するには、

```
名古屋市東区(35.179325 136.925993)
大阪市中央区(34.681261 135.509801)
堺市東区(34.538272 135.536511)
神戸市中央区(34.695124 135.197853)
```

と移動すれば良いことがわかります。また、その時の移動距離の合計は192.343054[km]となります。
従って、対応する出力は、

```
192.343054
35.179325 136.925993
34.681261 135.509801
34.538272 135.536511
34.695124 135.197853
```

となります(data0.ans)。

データセットは、(アーカイブから取得してください)
data1.inがEasy、data2.inがHardの入力となります。
data1.inに解答できた段階で提出してさしつかえありません。
なお、作問者はdata2.inが解答可能な入力であることを保証致しておりません。ご了承下さい。

■解答方法
解答は作成したコードをテキストファイルにはりつけてアップロードして下さい。また、選んだプログラミング言語と、プログラムの実行結果を必ずコメントとしてソースコード内に記載して下さい。
