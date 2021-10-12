namespace :nominee_reset do
  desc "毎週火曜曜0:00にNomineeMapインスタンスをnilにする"
  task :reset_nominee_map => :environment do
    #ログ
    logger = Logger.new 'log/create_award.log'

    #ここから処理を書いていく
    NomineeMap.find_each {|nominee_map| nominee_map.update!(nominee_id: nil, jeans_id: nil, user_id: nil)}

    #デバッグのため
    p "ここまでOK"
  end

  desc "Awardインスタンスを作成する"
  task :create_award => :environment do

    logger = Logger.new 'log/create_award.log'

    nominees = NomineeMap.group(:nominee_id)  # ノミネートごとに投票を分ける
    nominee = nominees.group(:jeans_id).order('count(nominee_id) desc') # 投票が多かった順にジーンズを並べる
    faded_award =  nominee.where(nominee_id: 1).first 
    jeans = Jeans.find_by(id: faded_award.jeans_id)
    Award.create(jeans_id: jeans.id, name: faded_award.nominee_id)

  # articlesテーブルで[公開日が現在時刻以前かつステータス「公開待ち」]のものを全て「公開」に変更
    p "ごはんですよ"
  end



end
