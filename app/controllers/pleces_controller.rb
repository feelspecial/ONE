class PlecesController < ApplicationController
  def search
    @place = Place.all
    #セレクトボックスの初期値設定
    @place_parent_array = ["ここを選択してください"]
      #データベースから、親カテゴリーのみ抽出し、配列化
      Place.where(ancestry: nil).each do |parent|
          @place_parent_array << parent.name
      end
  end

   # 以下全て、formatはjsonのみ
   # 親カテゴリーが選択された後に動くアクション
  def get_place_children
    #選択された親カテゴリーに紐付く子カテゴリーの配列を取得
    @place_children = Place.find_by(name: "#{params[:parent_name]}", ancestry: nil).children
  end

  # 子カテゴリーが選択された後に動くアクション
  def get_place_grandchildren
    #選択された子カテゴリーに紐付く孫カテゴリーの配列を取得
    @place_grandchildren = Place.find("#{params[:child_id]}").children
  end

  def index
  end

  def show
  end
end
