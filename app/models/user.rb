class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable

  has_many :newsvilles

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url:"https://s3-us-west-2.amazonaws.com/svillepl/icon_missing_thumb.gif"
  validates_attachment_content_type :image, content_type:/\Aimage\/.*\Z/



end
