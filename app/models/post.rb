class Post < ApplicationRecord
  has_many :tag_maps, dependent: :destroy
  has_many :tags, through: :tag_maps
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :jean, optional: true
  belongs_to :user


  mount_uploader :image, PostUploader

  def save_tag(sent_tags)
    current_tags = self.tags.pluck(:tag_name) unless self.tags.nil?
    old_tags = current_tags - sent_tags # 現在取得した@postに存在するタグから、送信されてきたタグを除いたタグをold_tagsとする。
    new_tags = sent_tags - current_tags # 送信されてきたタグ(sent_tag)から、現在存在するタグを除いたタグをnew_tagsとする。

    old_tags.each do |old|
      self.tags.delete Tag.find_by(tag_name: old)
    end

    new_tags.each do |new|
      new_post_tag = Tag.find_or_create_by(tag_name: new) # tag_nameが存在していなければ、新たにレコード追加、既に存在する場合は既存のレコードを取得
      self.tags << new_post_tag
    end
  end

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

end
