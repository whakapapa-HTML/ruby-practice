namespace :nominee_reset do

  desc "Faded_Awardインスタンスを作成する"
  task :create_faded => :environment do

    if NomineeMap.where(nominee_id: 1).present?
      nominees = NomineeMap.group(:nominee_id)  # ノミネートごとに投票を分ける
      nominee = nominees.group(:jeans_id).order('count(nominee_id) desc') # 投票が多かった順にジーンズを並べる
      faded_award =  nominee.where(nominee_id: 1).first   # 一番最初のインスタンス＝ 一番得票数がおおい
      jeans = Jeans.find_by(id: faded_award.jeans_id)
      AwardMap.create(jeans_id: jeans.id, award_id: faded_award.class.nominee_ids[faded_award.nominee_id])
      nominee_faded = NomineeMap.where(nominee_id: 1)
      nominee_faded.update(nominee_id: nil, jeans_id: nil, user_id: nil)
    end
  end


  desc "Fashinable_Awardインスタンスを作成する"
  task :create_fashinable => :environment do

    if NomineeMap.where(nominee_id: 2).present?
      nominees = NomineeMap.group(:nominee_id)  # ノミネートごとに投票を分ける
      nominee = nominees.group(:jeans_id).order('count(nominee_id) desc') # 投票が多かった順にジーンズを並べる
      faded_award =  nominee.where(nominee_id: 2).first   # 一番最初のインスタンス＝ 一番得票数がおおい
      jeans = Jeans.find_by(id: faded_award.jeans_id)
      AwardMap.create(jeans_id: jeans.id, award_id: faded_award.class.nominee_ids[faded_award.nominee_id])
      nominee_faded = NomineeMap.where(nominee_id: 2)
      nominee_faded.update(nominee_id: nil, jeans_id: nil, user_id: nil)
    end
  end



  desc "Whisker_Awardインスタンスを作成する"
  task :create_whisker => :environment do

    if NomineeMap.where(nominee_id: 3).present?
      nominees = NomineeMap.group(:nominee_id)  # ノミネートごとに投票を分ける
      nominee = nominees.group(:jeans_id).order('count(nominee_id) desc') # 投票が多かった順にジーンズを並べる
      faded_award =  nominee.where(nominee_id: 3).first   # 一番最初のインスタンス＝ 一番得票数がおおい
      jeans = Jeans.find_by(id: faded_award.jeans_id)
      AwardMap.create(jeans_id: jeans.id, award_id: faded_award.class.nominee_ids[faded_award.nominee_id])
      nominee_faded = NomineeMap.where(nominee_id: 3)
      nominee_faded.update(nominee_id: nil, jeans_id: nil, user_id: nil)
    end
  end



  desc "Shevron_Awardインスタンスを作成する"
  task :create_shevron => :environment do

    if NomineeMap.where(nominee_id: 4).present?
      nominees = NomineeMap.group(:nominee_id)  # ノミネートごとに投票を分ける
      nominee = nominees.group(:jeans_id).order('count(nominee_id) desc') # 投票が多かった順にジーンズを並べる
      faded_award =  nominee.where(nominee_id: 4).first   # 一番最初のインスタンス ＝ 一番得票数がおおい
      jeans = Jeans.find_by(id: faded_award.jeans_id)
      AwardMap.create(jeans_id: jeans.id, award_id: faded_award.class.nominee_ids[faded_award.nominee_id])
      # fadedをnilにする
      nominee_faded = NomineeMap.where(nominee_id: 4)
      nominee_faded.update(nominee_id: nil, jeans_id: nil, user_id: nil)
      p 'OK'
    end
  end


  desc "501_Awardインスタンスを作成する"
  task :create_501 => :environment do
    binding.pry
    if NomineeMap.where(nominee_id: 5).present?
      nominees = NomineeMap.group(:nominee_id)  # ノミネートごとに投票を分ける
      nominee = nominees.group(:jeans_id).order('count(nominee_id) desc') # 投票が多かった順にジーンズを並べる
      faded_award =  nominee.where(nominee_id: 5).first   # 一番最初のインスタンス＝ 一番得票数がおおい
      jeans = Jeans.find_by(id: faded_award.jeans_id)
      AwardMap.create(jeans_id: jeans.id, award_id: faded_award.class.nominee_ids[faded_award.nominee_id]) # enumではrails5よりkeyが出力されるため、class.カラム名[インスタンス.カラム]で取り出す
      # fadedをnilにする
      nominee_faded = NomineeMap.where(nominee_id: 5)
      nominee_faded.update(nominee_id: nil, jeans_id: nil, user_id: nil)
    end
  end
end
