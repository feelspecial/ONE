# ONE

"ONE" is an app that makes meeting easy.(ONEは待ち合わせを簡単にするアプリです。)

# DEMO
{https://gyazo.com/16b813502b9d4e3573ca70a984a585db}

The location is conveyed by making the destination square.
（目的地をマス目状にすることで位置を伝えます。）

# Features

There are many people in the meeting place, and it is hard to find the person you want to meet.
(待ち合わせ場所には、たくさんの人がいて、会いたい人を見つけるのが大変です。)

- belongs_to :group
If you use this app, you can display the waiting place by coordinates and know where you are waiting.
(このアプリを使えば、待っている場所を座標で表示でき、待っている場所がわかります。)


It can be used by people from other prefectures and overseas travelers.
(他県から来た人や、海外旅行者にも利用してもらえます。)

# Installation
・http://3.115.242.44/
You can use it by accessing the above.
(上記へアクセスすれば、利用可能です。)

# Usage
・http://3.115.242.44/

Go to the above and follow the selections.
(上記へアクセスし、選択欄に従ってください。)

Once you ’ve selected your destination, share your location details with the image.
(目的地を選択したら、画像を元に場所の詳細を相手に伝えてください。)

# Note
In the future, we plan to increase the number of meeting places and add a function to accept requests from users.
(今後待ち合わせ場所を増やしたり、ユーザーからリクエストを受け付ける機能をつける予定です。)

# Author
・Yushi
・Twitter{https://twitter.com/ito_yushi}
・Wantedly{https://www.wantedly.com/users/124009278}

# DB
## imagesテーブル

|Column|Type|Options|
|------|----|-------|
|place_id|String| foreign_key: true|
|image|String|

### Association
- belongs_to :place
- mount_uploader :image, ImageUploader

## placesテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|
|ancestry|

### Association
- has_many :images
- has_ancestry

Thank you watching!
