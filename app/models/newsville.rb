class Newsville < ApplicationRecord

  belongs_to :user
  has_many :comments

  validates :title_url, uniqueness: true

end
