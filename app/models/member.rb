class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :league
  has_many :rsvps, dependent: :destroy
  has_many :discussions, dependent: :destroy
  has_many :comments, dependent: :destroy

end
