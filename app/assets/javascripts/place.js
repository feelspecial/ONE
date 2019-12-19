$(document).on('turbolinks:load', function(){
  // カテゴリーセレクトボックスのオプションを作成
  function appendOption(place){
    var html = `<option value="${place.id}" data-place="${place.id}">${place.name}</option>`;
    return html;
  }
  // 子カテゴリーの表示作成
  function appendChidrenBox(insertHTML){
    var childSelectHtml = '';
    childSelectHtml = `<div class='a-right__fonts' id= 'children_wrapper'>
                          <label class='a-right__font__black'>駅名</label>
                          <span class='a-right__font__red'>必須</span>
                          <div class='a-right__select'>
                            <div class='a-right__select__box'>
                              <select class="a-right__select__box__parent" id="child_place" name="place_id">
                                <option value="---" dataplace="---">---</option>
                                ${insertHTML}
                              <select>
                            </div>
                          </div>
                        </div>
                      `;
    $('.a-right__font').append(childSelectHtml);
  }
  // 孫カテゴリーの表示作成
  function appendGrandchidrenBox(insertHTML){
    var grandchildSelectHtml = '';
    grandchildSelectHtml = `<div class='a-right__fonts' id= 'grandchildren_wrapper'>
                              <label class='a-right__font__black'>集合場所</label>
                              <span class='a-right__font__red'>必須</span>
                              <div class='a-right__select'>
                                <div class='a-right__select__box'>
                                  <select class="a-right__select__box__parent" id="grandchild_place" name="places_id">
                                    <option value="---" data-place="---">---</option>
                                    ${insertHTML}
                                  </select>
                                </div>
                              </div>
                            </div>`;
    $('.a-right__font').append(grandchildSelectHtml);
  }
  // 親カテゴリー選択後のイベント
  $('#parent_place').on('change', function(){
    var parentPlace = document.getElementById('parent_place').value; //選択された親カテゴリーの名前を取得
    if (parentPlace != "---"){ //親カテゴリーが初期値でないことを確認
      $.ajax({
        url: '/pleces/get_place_children',
        type: 'GET',
        data: { parent_name: parentPlace },
        dataType: 'json'
      })
      .done(function(children){
        $('#children_wrapper').remove(); //親が変更された時、子以下を削除するする
        $('#grandchildren_wrapper').remove();
        var insertHTML = '';
        children.forEach(function(child){
          insertHTML += appendOption(child);
        });
        appendChidrenBox(insertHTML);
      })
      .fail(function(){
        alert('カテゴリー取得に失敗しました');
      })
    }else{
      $('#children_wrapper').remove(); //親カテゴリーが初期値になった時、子以下を削除するする
      $('#grandchildren_wrapper').remove();
    }
  });
 // 子カテゴリー選択後のイベント
 $('.a-right__font').on('change', '#child_place', function(){
  var childId = $('#child_place option:selected').data('place'); //選択された子カテゴリーのidを取得
  if (childId != "---"){ //子カテゴリーが初期値でないことを確認
    $.ajax({
      url: '/pleces/get_place_grandchildren',
      type: 'GET',
      data: { child_id: childId },
      dataType: 'json'
    })
    .done(function(grandchildren){
      if (grandchildren.length != 0) {
        $('#grandchildren_wrapper').remove(); //子が変更された時、孫以下を削除するする
        var insertHTML = '';
        grandchildren.forEach(function(grandchild){
          insertHTML += appendOption(grandchild);
        });
        appendGrandchidrenBox(insertHTML);
      }
    })
    .fail(function(){
      alert('カテゴリー取得に失敗しました');
    })
  }else{
    $('#grandchildren_wrapper').remove(); //子カテゴリーが初期値になった時、孫以下を削除する
  }
});
});