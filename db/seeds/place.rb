#親カテゴリ:北海道
hokkaido = Place.create(name: "北海道")
#親カテゴリ:千葉県
chiba = Place.create(name: "千葉県")
#親カテゴリ:東京都
tokyo = Place.create(name: "東京都")
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

#子カテゴリ,孫カテゴリ:愛知県
aichi_nagoya = aichi.children.create(name: "名古屋駅")
aichi_nagoya.children.create([{name: "金時計"},{name: "銀時計"}])

#子カテゴリ,孫カテゴリ:京都府
kyoto_kyoto= kyoto.children.create(name: "京都駅")
kyoto_kyoto.children.create([{name: "改札"}])

#子カテゴリ,孫カテゴリ:大阪府
osaka_osaka = osaka.children.create(name: "大阪駅")
osaka_osaka.children.create([{name:"改札"}])

osaka_uniba = osaka.children.create(name: "ユニバーサルシティ駅")
osaka_uniba.children.create([{name:"改札"}])

#子カテゴリ,孫カテゴリ:広島県
hiroshima_hiroshima = hiroshima.children.create(name:"広島駅")
hiroshima_hiroshima.children.create([{name:"改札"}])

#子カテゴリ,孫カテゴリ:福岡県
fukuoka_hakata = fukuoka.children.create(name:"博多駅")
fukuoka_hakata.children.create([{name:"改札"}])

#子カテゴリ,孫カテゴリ:沖繩県
okinawa_naha = okinawa.children.create(name:"那覇空港")
okinawa_naha.children.create([{name:"到着ロビー"}])