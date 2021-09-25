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
//= require popper
//= require jquery
//= require rails-ujs
//= require bootstrap-sprockets
//
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



    $(document).ready(function() {
//復活させるダミーの中カテゴリのセレクトボックス
      let defaultMediumCategorySelect = `<div id="medium_category">
                                           <div class="form-group">
                                             <label for="jeans_lot_id">Lot</label>
                                             <select class="form-control" name="jeans[lot_id]" id="jeans_lot_id">
                                               <option value="">---</option>
                                             </select>
                                           </div>
                                         </div>`;

      let defaultSmallCategorySelect = `<div id="small_category">
                                          <div class="form-group">
                                            <label for="jeans_year_id">Year</label>
                                            <select class="form-control" name="jeans[year_id]" id="jeans_year_id">
                                              <option value="">---</option>
                                            </select>
                                          </div>
                                        </div>`;

    //ブランドカテゴリの処理
     $(document).on('change', '#jeans_brand_id', function() {
      let categoryVal = $('#jeans_brand_id').val();

      //大カテゴリが変更されてvalueに値が入った場合の処理
      if (categoryVal !== "") {
       let selectedTemplate = $(`#medium_category${categoryVal}`); //呼び出すtamplateのidセット

       $('#medium_category').remove(); //デフォルト表示用の中カテゴリを削除
       $('#small_category').remove(); //デフォルト表示用の小カテゴリを削除
       $("#selected_medium_category").remove(); //前に選択した中カテゴリがある場合に削除
       $("#selected_small_category").remove();  //前に選択した小カテゴリがある場合に削除（これがないと、中カテゴリ、小カテゴリが選択された状態で、大カテゴリが変更された場合に小が残ってしまう。）
       $('#medium_category_insert_point').after(selectedTemplate.html());　//大カテゴリに紐づいた中カテゴリセレクトを追加
       $('#small_category_insert_point').after(defaultSmallCategorySelect);  //デフォルト表示の小カテゴリを追加
      } else {

       //親要素のセレクトボックスが変更されてvalueに値が入っていない場合（include_blankの部分を選択している場合）
       $("#selected_medium_category").remove();  //前に選択した中カテゴリがある場合に削除
       $("#selected_small_category").remove();  //前に選択した小カテゴリがある場合に削除
       $('#medium_category').remove();//デフォルト表示用の中カテゴリを削除
       $('#small_category').remove(); //デフォルト表示用の小カテゴリを削除
       $('#medium_category_insert_point').after(defaultMediumCategorySelect); //デフォルト表示の中カテゴリを追加
       $('#small_category_insert_point').after(defaultSmallCategorySelect); //デフォルト表示の小カテゴリを追加
      };
     });

　　//イヤーモデルカテゴリの処理
     $(document).on('change', '#jeans_lot_id', function() {
      let categoryVal = $('#jeans_lot_id').val();
      //親要素のセレクトボックスが変更されてvalueに値が入った場合の処理
      if (categoryVal !== "") {
       let selectedTemplate = $(`#small_category${categoryVal}`);
       //デフォルトで入っていた子要素のセレクトボックスを削除
      $("#selected_small_category").remove();//前に選択した小カテゴリがある場合に削除
      $('#small_category').remove(); //デフォルト表示の小カテゴリを削除
       // $('#before_medium_category_select_box').remove();
      $('#small_category_insert_point').after(selectedTemplate.html()); //中カテゴリに紐づいた小カテゴリセレクトを追加
      }else {
      $('#small_category').remove();
       $("#selected_small_category").remove(); //前に選択した小カテゴリを削除
       $('#small_category_insert_point').after(defaultSmallCategorySelect); //デフォルト表示の小カテゴリを追加
      };
     });
    }); //$(document).on('turbolinks:load', function()



        var elem2_1 = document.getElementById("#{reply.id}");
        var elem2_2 = document.getElementById("view_#{comment.id}");
        var elem2_3 = document.getElementById("hidden_#{comment.id}");
        function toggle_view2() {
          elem2_1.style.display = "";
          elem2_2.style.display = "none";
          elem2_3.style.display = "";
        }
        function toggle_hidden2() {
          elem2_1.style.display = "none";
          elem2_2.style.display = "";
          elem2_3.style.display = "none";
        }