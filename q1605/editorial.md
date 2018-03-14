2015年7月3日～2015年7月20日の期間、RubyでHubot!?というRuby/Opal/JavaScript複合問題を出題しました。
5名の方が挑戦してくださいました。

環境構築が必要なことに加え、ネット上に直接的な情報が皆無(おそらくこの問題の解答が世界初のOpal製Hubotプラグイン)のため、知識を総動員して解かなければならなかったことが人数の低さの原因でしょうか。
OpalでUserScriptを書く方法をヒントとして提示しました( <http://qiita.com/cielavenir/items/ffa86fc70bce8ae63db6> )が、少し遅かった感があります。

## 解答
<https://github.com/cielavenir/codeiq_problems/tree/master/q1605>
私の答案はIntercal生成の[Hubot版](https://github.com/cielavenir/codeiq_solutions/blob/master/tbpgr/tyama_codeiq1113.coffee)と[Ruboty版](https://rubygems.org/gems/ruboty-intercal_generator/)を複合させたものです。

## 解答例

JavaScriptによる充足解は以下のとおりです。

~~~
module.exports=function(robot){
	robot.respond(/codeiq/i,function(msg){msg.send('CodeIQ');});
}
~~~

これをOpalに直せば正解となります。
やり方は複数ありますが、一番簡単なのは、nativeモジュールを使うことでしょうか。
moduleはJavaScript側のグローバル変数なのでバッククオートで読み込み、exportsに代入するのはlambdaを使えばよいでしょう。

~~~
require 'native'
Native(`module`).exports = ->(robot){
	Native(robot).respond(/codeiq/i){|msg|Native(msg).send('CodeIQ')}
}
~~~

## 解答紹介

(割愛させていただきます)

## 問題文

### 前説
Hubotは最もよく使われているチャットボットフレームワークですが、プラグインはJavaScript(もしくはAltJS)を使って作成する必要があります。
CoffeeScriptはRubyやPythonに似た言語ですが、細かい部分でかなり相違があります。
そのため、RubyでHubotを扱いたい場合、Rubotyを使うことになるのが通常です。
しかし！RubyでHubotを取り扱う方法はあります！
そうです、今話題のOpalを使うのです。この問題ではそれを実践していただきます。

### 設問
Hubotプラグインを作成して下さい。ただし、以下の要件を満たして下さい。

- 「CodeIQ」と応答する「/codeiq/i」インターフェースを含めること
- Ruby(Opal)で作成すること

以上ができていれば最高評価となりますが、他にもインターフェースを付けて頂いて構いません。
面白い機能であれば解説記事で紹介させていただきます(紹介不要な場合はコメントに明記して下さい)。

### 提出方法
まず、(「opal -c script.rb >script.js」で)コンパイルしたJavaScriptで動作を確認して下さい。
その後、コンパイル前のRubyスクリプトをアップロードしてください。
