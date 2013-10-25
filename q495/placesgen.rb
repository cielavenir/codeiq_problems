#!/usr/bin/ruby
raise 'Ruby 1.9+ required' if RUBY_VERSION<'1.9'
require 'json'
require 'open-uri'
require 'cgi'
def getjson(str) JSON.parse(open('http://maps.google.com/maps/api/geocode/json?address='+CGI.escape(str)+'&sensor=false').read) end

DATA.each{|e|
	kanji,e=e.chomp.split(': ')
	list=e.split(' - ')
	roman,list[0]=list[0].split(' ')
	list.each{|f|
		json=getjson(f+kanji)
		puts [roman,json['results'][0]['geometry']['location']['lat'],json['results'][0]['geometry']['location']['lng']]*' '
		sleep(1)
	}
}

#source: http://ja.wikipedia.org/wiki/%E5%90%8C%E4%B8%80%E5%90%8D%E7%A7%B0%E3%81%AE%E5%B8%82%E5%8C%BA%E7%94%BA%E6%9D%91%E4%B8%80%E8%A6%A7
#preprocessed with http://hebonshiki-henkan.info/
__END__
安芸: aki 高知県 - 広島市
朝日: asahi 山形県 - 富山県 - 三重県 - 長野県
芦屋: ashiya 兵庫県 - 福岡県
阿南: anan 徳島県 - 長野県
池田: ikeda 大阪府 - 北海道 - 福井県 - 長野県 - 岐阜県
市川: ichikawa 千葉県 - 兵庫県
一宮: ichinomiya 愛知県 - 千葉県
大川: okawa 福岡県 - 高知県
大崎: osaki 宮城県 - 鹿児島県
大月: otsuki 山梨県 - 高知県
大野: ohno 福井県 - 岐阜県
大町: omachi 長野県 - 佐賀県
小川: ogawa 埼玉県 - 長野県
小野: ono 兵庫県 - 福島県
小山: oyama 栃木県 - 静岡県
勝浦: katsuura 千葉県 - 徳島県
香美: kami 高知県 - 兵庫県
川越: kawagoe 埼玉県 - 三重県
川崎: kawasaki 神奈川県 - 宮城県 - 福岡県
川西: kawanishi 兵庫県 - 山形県 - 奈良県
北広島: kitahiroshima 北海道 - 広島県
草津: kusatsu 滋賀県 - 群馬県
熊野: kumano 三重県 - 広島県
江南: konan 愛知県 - 新潟市
栄: sakae 横浜市 - 千葉県 - 長野県
清水: shimizu 静岡市 - 北海道
昭和: showa 名古屋市 - 山梨県 - 福島県 - 群馬県
白石: shiroishi 宮城県 - 札幌市 - 佐賀県
新宮: shingu 和歌山県 - 福岡県
新庄: shinjo 山形県 - 岡山県
瀬戸内: setouchi 岡山県 - 鹿児島県
高浜: takahama 愛知県 - 福井県
高山: takayama 岐阜県 - 群馬県 - 長野県
多摩: tama 東京都 - 川崎市
中央: chuo 山梨県 - 東京都 - 札幌市 - さいたま市 - 千葉市 - 相模原市 - 新潟市 - 神戸市 - 大阪市 - 福岡市
千代田: chiyoda 東京特別区 - 群馬県
東海: tokai 愛知県 - 茨城県
富岡: tomioka 群馬県 - 福島県
中川: nakagawa 名古屋市 - 北海道 - 長野県
中野: nakano 長野県 - 東京都
西原: nishihara 沖縄県 - 熊本県
日南: nichinan 宮崎県 - 鳥取県
沼田: numata 群馬県 - 北海道
野田: noda 千葉県 - 山形県
東: higashi 札幌市 - 新潟市 - 浜松市 - 名古屋市 - 堺市 - 岡山市 - 広島市 - 福岡市 - 沖縄県
日高: hidaka 埼玉県 - 北海道 - 和歌山県 - 高知県
日野: hino 東京都 - 滋賀県 - 鳥取県
福島: fukushima 福島県 - 大阪市 - 北海道
富士見: fujimi 埼玉県 - 長野県
府中: fuchu 東京都 - 広島県
松川: matsukawa 長野県下伊那郡 - 長野県北安曇郡
三木: miki 兵庫県 - 香川県
三島: mishima 静岡県 - 福島県 - 鹿児島県
瑞穂: mizuho 岐阜県 - 名古屋市 - 東京都
美浜: mihama 千葉市 - 福井県 - 愛知県 - 和歌山県
三原: mihara 広島県 - 高知県
三宅: miyake 奈良県 - 東京都
守山: moriyama 滋賀県 - 名古屋市
八千代: yachiyo 千葉県 - 茨城県
山形: yamagata 山形県 - 長野県
大和: yamato 神奈川県 - 鹿児島県
湯沢: yuzawa 秋田県 - 新潟県
横浜: yokohama 神奈川県 - 青森県