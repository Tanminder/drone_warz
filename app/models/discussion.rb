class Discussion < ActiveRecord::Base
  belongs_to :member
  belongs_to :league

  has_many :comments, dependent: :destroy
end
