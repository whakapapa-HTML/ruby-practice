
desc "毎週火曜曜0:00にNomineeMapインスタンスをnilにする"
task :reset_nominee_map => :environment do
  #ログ
  logger = Logger.new 'log/create_award.log'

  #ここから処理を書いていく
  NomineeMap.find_each {|nominee_map| nominee_map.update!(nominee_id: nil, jeans_id: nil, user_id: nil)}

  #デバッグのため
  p "ここまでOK"

end
