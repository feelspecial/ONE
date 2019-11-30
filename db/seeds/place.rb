#親カテゴリ:北海道
hokkaido = Place.create(name: "北海道")
#親カテゴリ:千葉県
chiba = Place.create(name: "千葉県")
#親カテゴリ:東京都
tokyo = Place.create(name: "東京都")
#親カテゴリ:神奈川県
kanagawa = Place.create(name: "神奈川県")
#親カテゴリ:愛知県
aichi = Place.create(name: "愛知県")
#親カテゴリ:京都府
kyoto = Place.create(name: "京都府")
#親カテゴリ:大阪府
osaka = Place.create(name: "大阪府")
#親カテゴリ:広島県
hiroshima = Place.create(name: "広島県")
#親カテゴリ:福岡県
fukuoka = Place.create(name: "福岡県")
#親カテゴリ:沖繩県
okinawa = Place.create(name: "沖繩県")

#子カテゴリ,孫カテゴリ:北海道
hokkaido_shintitose = hokkaido.children.create(name: "新千歳空港")
hokkaido_shintitose.children.create([{name: "到着ロビー"}])

hokkaido_sapporo = hokkaido.children.create(name: "札幌駅")
hokkaido_sapporo.children.create([{name: "赤いオブジェ"}])

#子カテゴリ,孫カテゴリ:千葉県
chiba_maihama = chiba.children.create(name: "舞浜駅")
chiba_maihama.children.create([{name:"改札"}])

#子カテゴリ,孫カテゴリ:東京都
tokyo_tokyo  = tokyo.children.create(name: "東京駅")
tokyo_tokyo.children.create([{name: "八重洲中央口改札前"},{name: "八重洲北口出入口前"}])

tokyo_shibuya = tokyo.children.create(name: "渋谷駅")
tokyo_shibuya.children.create([{name: "ハチ公口"}])

tokyo_shinagawa = tokyo.children.create(name: "品川駅")
tokyo_shinagawa.children.create([{name: "高輪口"}])

#子カテゴリ,孫カテゴリ:インテリア・住まい・小物
interior_kitchengoods = interior.children.create(name: "キッチン/食器")
interior_kitchengoods.children.create([{name: "食器"},{name: "調理器具"},{name: "収納/キッチン雑貨"},{name: "弁当用品"},{name: "カトラリー(スプーン等)"},{name: "テーブル用品"},{name: "容器"},{name: "エプロン"},{name: "アルコールグッズ"},{name: "浄水機"},{name: "その他"}])

interior_bed = interior.children.create(name: "ベッド/マットレス")
interior_bed.children.create([{name: "セミシングルベッド"},{name: "シングルベッド"},{name: "セミダブルベッド"},{name: "ダブルベッド"},{name: "ワイドダブルベッド"},{name: "クイーンベッド"},{name: "キングベッド"},{name: "脚付きマットレスベッド"},{name: "マットレス"},{name: "すのこベッド"},{name: "ロフトベッド/システムベッド"},{name: "簡易ベッド/折りたたみベッド"},{name: "収納付き"},{name: "その他"}])

interior_sofa = interior.children.create(name: "ソファ/ソファベッド")
interior_sofa.children.create([{name: "ソファセット"},{name: "シングルソファ"},{name: "ラブソファ"},{name: "トリプルソファ"},{name: "オットマン"},{name: "コーナーソファ"},{name: "ビーズソファ/クッションソファ"},{name: "ローソファ/フロアソファ"},{name: "ソファベッド"},{name: "応接セット"},{name: "ソファカバー"},{name: "リクライニングソファ"},{name: "その他"}])

interior_chair = interior.children.create(name: "椅子/チェア")
interior_chair.children.create([{name: "一般"},{name: "スツール"},{name: "ダイニングチェア"},{name: "ハイバックチェア"},{name: "ロッキングチェア"},{name: "座椅子"},{name: "折り畳みイス"},{name: "デスクチェア"},{name: "その他"}])


#子カテゴリ,孫カテゴリ:本・音楽・ゲーム
book_music_game_book  = book_music_game.children.create(name: "本")
book_music_game_book .children.create([{name: "文学/小説"},{name: "人文/社会"},{name: "ノンフィクション/教養"},{name: "地図/旅行ガイド"},{name: "ビジネス/経済"},{name: "ビジネス/経済"},{name: "健康/医学"},{name: "コンピュータ/IT"},{name: "趣味/スポーツ/実用"},{name: "住まい/暮らし/子育て"},{name: "アート/エンタメ"},{name: "洋書"},{name: "絵本"},{name: "参考書"},{name: "その他"}])

book_music_comic = book_music_game.children.create(name: "漫画")
book_music_comic.children.create([{name: "全巻セット"},{name: "少年漫画"},{name: "少女漫画"},{name: "青年漫画"},{name: "女性漫画"},{name: "同人誌"},{name: "その他"}])

book_music_game_magazine = book_music_game.children.create(name: "雑誌")
book_music_game_magazine.children.create([{name: "アート/エンタメ/ホビー"},{name: "ファッション"},{name: "ニュース/総合"},{name: "趣味/スポーツ"},{name: "その他"}])

book_music_game_music  = book_music_game.children.create(name: "CD")
book_music_game_music .children.create([{name: "邦楽"},{name: "洋楽"},{name: "アニメ"},{name: "クラシック"},{name: "K-POP/アジア"},{name: "キッズ/ファミリー"},{name: "その他"}])

book_music_game_dvd = book_music_game.children.create(name: "DVD/ブルーレイ")
book_music_game_dvd.children.create([{name: "外国映画"},{name: "日本映画"},{name: "アニメ"},{name: "TVドラマ"},{name: "ミュージック"},{name: "お笑い/バラエティ"},{name: "スポーツ/フィットネス"},{name: "キッズ/ファミリー"},{name: "その他"}])

book_music_game_game = book_music_game.children.create(name: "テレビゲーム")
book_music_game_game.children.create([{name: "家庭用ゲーム本体"},{name: "家庭用ゲームソフト"},{name: "携帯用ゲーム本体"},{name: "携帯用ゲームソフト"},{name: "PCゲーム"},{name: "その他"}])


#子カテゴリ,孫カテゴリ:おもちゃ・ホビー・グッズ
toy_hobby_toy = toy_hobby.children.create(name: "おもちゃ")
toy_hobby_toy.children.create([{name: "キャラクターグッズ"},{name: "ぬいぐるみ"},{name: "小物/アクセサリー"},{name: "模型/プラモデル"},{name: "ミニカー"},{name: "トイラジコン"},{name: "プラモデル"},{name: "ホビーラジコン"},{name: "鉄道模型"},{name: "その他"}])

toy_hobby_talent = toy_hobby.children.create(name: "タレントグッズ")
toy_hobby_talent.children.create([{name: "アイドル"},{name: "ミュージシャン"},{name: "タレント/お笑い芸人"},{name: "スポーツ選手"},{name: "その他"}])

toy_hobby_anime = toy_hobby.children.create(name: "コミック/アニメグッズ")
toy_hobby_anime.children.create([{name: "ストラップ"},{name: "キーホルダー"},{name: "バッジ"},{name: "カード"},{name: "クリアファイル"},{name: "ポスター"},{name: "タオル"},{name: "その他"}])

toy_hobby_card = toy_hobby.children.create(name: "トレーディングカード")
toy_hobby_card.children.create([{name: "遊戯王"},{name: "マジック：ザ・ギャザリング"},{name: "ポケモンカードゲーム"},{name: "デュエルマスターズ"},{name: "バトルスピリッツ"},{name: "プリパラ"},{name: "アイカツ"},{name: "カードファイト!! ヴァンガード"},{name: "ヴァイスシュヴァルツ"},{name: "プロ野球オーナーズリーグ"},{name: "ベースボールヒーローズ"},{name: "ドラゴンボール"},{name: "スリーブ"},{name: "その他"}])


#子カテゴリ,孫カテゴリ:コスメ・香水・美容
beauty_basemakeup = beauty.children.create(name:"ベースメイク")
beauty_basemakeup.children.create([{name:"ファンデーション"}, {name:"化粧下地"},{name:"コントロールカラー"},{name:"BBクリーム"},{name:"CCクリーム"},{name:"コンシーラー"},{name:"フェイスパウダー"},{name:"トライアルセット/サンプル"},{name:"その他"}])

beauty_makeup = beauty.children.create(name:"メイクアップ")
beauty_makeup.children.create([{name:"アイシャドウ"}, {name:"口紅"},{name:"リップグロス"},{name:"リップライナー"},{name:"チーク"},{name:"フェイスカラー"},{name:"マスカラ"},{name:"アイライナー"},{name:"つけまつげ"},{name:"アイブロウペンシル"},{name:"パウダーアイブロウ"},{name:"眉マスカラ"},{name:"トライアルセット/サンプル"},{name:"メイク道具/化粧小物"},{name:"美顔用品/美顔ローラー"},{name:"その他"}])

beauty_nailcare = beauty.children.create(name:"ネイルケア")
beauty_nailcare.children.create([{name:"ネイルカラー"}, {name:"カラージェル"},{name:"ネイルベースコート/トップコート"},{name:"ネイルアート用品"},{name:"ネイルパーツ"},{name:"ネイルチップ/付け爪"},{name:"手入れ用具"},{name:"除光液"},{name:"その他"}])

beauty_perfume = beauty.children.create(name:"香水")
beauty_perfume.children.create([{name:"香水（女性用）"}, {name:"香水（男性用）"},{name:"ユニセックス"},{name:"ボディミスト"},{name:"その他"}])

beauty_skincare = beauty.children.create(name:"スキンケア/基礎化粧品")
beauty_skincare.children.create([{name:"化粧水/ローション"}, {name:"乳液/ミルク"},{name:"美容液"},{name:"フェイスクリーム"},{name:"洗顔料"},{name:"クレンジング/メイク落とし"},{name:"パック/フェイスマスク"},{name:"ジェル/ゲル"},{name:"ブースター/導入液"},{name:"アイケア"},{name:"リップケア"},{name:"トライアルセット/サンプル"},{name:"洗顔グッズ"},{name:"その他"}])



#子カテゴリ,孫カテゴリ:その他
others_set = others.children.create(name: "まとめ売り")
others_set.children.create([{name: "すべて"}])

others_petitem = others.children.create(name: "ペット用品")
others_petitem.children.create([{name: "ペットフード"},{name: "犬用品"},{name: "猫用品"},{name: "魚用品/水草"},{name: "小動物用品"},{name: "爬虫類/両生類用品"},{name: "かご/おり"},{name: "鳥用品"},{name: "虫類用品"},{name: "その他"}])

others_food = others.children.create(name: "食品")
others_food.children.create([{name: "菓子"},{name: "米"},{name: "野菜"},{name: "果物"},{name: "調味料"},{name: "魚介類(加工食品)"},{name: "肉類(加工食品)"},{name: "その他 加工食品"},{name: "その他"}])

others_drink = others.children.create(name: "飲料/酒")
others_drink.children.create([{name: "コーヒー"},{name: "ソフトドリンク"},{name: "ミネラルウォーター"},{name: "茶"},{name: "ウイスキー"},{name: "ワイン"},{name: "ブランデー"},{name: "焼酎"},{name: "日本酒"},{name: "ビール、発泡酒"},{name: "その他"}])

others_daily = others.children.create(name: "日用品/生活雑貨/旅行")
others_daily.children.create([{name: "タオル/バス用品"},{name: "日用品/生活雑貨"},{name: "洗剤/柔軟剤"},{name: "旅行用品"},{name: "防災関連グッズ"},{name: "その他"}])

others_other = others.children.create(name: "その他")
others_other.children.create([{name: "すべて"}])