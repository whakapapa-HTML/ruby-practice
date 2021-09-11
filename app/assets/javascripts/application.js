// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//
//= require rails-ujs
//= require bootstrap-select
//= require activestorage
//= require_tree .

/*global jQuery $*/

  $(function() {
    function readURL(input) {
        if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
    $('#img_prev').attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
        }
    }
    $("#user_img").change(function(){
        readURL(this);
    });
  });


$(document).on('turbolinks:load', function() {
 //HTMLが読み込まれた時の処理
 let categoryVal = $('#jeans_brand').val();
 //一度目に検索した内容がセレクトボックスに残っている時用のif文
 if (categoryVal !== "") {
  let selectedTemplate = $(`#sub-category-of-category${categoryVal}`);
  $('#jeans_lot').remove();
  $('#jeans_brand').after(selectedTemplate.html());
 };

 //先ほどビューファイルに追加したもともとある子要素用のセレクトボックスのHTML
 let defaultSubCategorySelect = `<select name="sub_category" id="sub_category">
<option value>サブカテゴリーを選択してください</option>
</select>`;

 $(document).on('change', '#jeans_brand', function() {
  let categoryVal = $('#jeans_brand').val();
  //親要素のセレクトボックスが変更されてvalueに値が入った場合の処理
  if (categoryVal !== "") {
   let selectedTemplate = $(`#sub-category-of-category${categoryVal}`);
   //デフォルトで入っていた子要素のセレクトボックスを削除
   $('#jeans_lot').remove();
   $('#jeans_brand').after(selectedTemplate.html());
  }else {
   //親要素のセレクトボックスが変更されてvalueに値が入っていない場合（include_blankの部分を選択している場合）
   $('#jeans_lot').remove();
   $('#jeans_brand').after(defaultSubCategorySelect);
  };
 });
});