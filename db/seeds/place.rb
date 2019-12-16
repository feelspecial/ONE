#親カテゴリ:北海道
hokkaido = Place.create(name: "北海道")
#親カテゴリ:千葉県
chiba = Place.create(name: "千葉県")
#親カテゴリ:東京都
tokyo = Place.create(name: "東京都")
#親カテゴリ:愛知県
aichi = Place.create(name: "愛知県")
#親カテゴリ:沖繩県
okinawa = Place.create(name: "沖繩県")

#子カテゴリ,孫カテゴリ:北海道
hokkaido_shintitose = hokkaido.children.create(name: "新千歳空港")
hokkaido_shintitose.children.create([{name: "到着ロビー"}])

#子カテゴリ,孫カテゴリ:千葉県
chiba_maihama = chiba.children.create(name: "舞浜駅")
chiba_maihama.children.create([{name:"改札"}])

tokyo_shibuya = tokyo.children.create(name: "渋谷駅")
tokyo_shibuya.children.create([{name: "ハチ公口"}])

#子カテゴリ,孫カテゴリ:愛知県
aichi_nagoya = aichi.children.create(name: "名古屋駅")
aichi_nagoya.children.create([{name: "金時計"}])

#子カテゴリ,孫カテゴリ:沖繩県
okinawa_naha = okinawa.children.create(name:"那覇空港")
okinawa_naha.children.create([{name:"到着ロビー"}])