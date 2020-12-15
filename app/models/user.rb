class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :comments  # commentsテーブルとのアソシエーション
  has_many :tweets

  validates :nickname, presence: true, length: { maximum: 6 }
        end
