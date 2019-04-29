# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  name       :string
#  title      :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  img        :string
#

class Post < ApplicationRecord
  mount_uploader :img, ImgUploader

  def self.search(search)
    if search
      Post.where(['tag LIKE ?', "%#{search}%"])
    else
      Post.all
    end
  end
end
