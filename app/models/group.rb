class Group < ActiveRecord::Base
  belongs_to :user
  has_many :posts
  validates :title, presence: true

  has_many :groups
  has_many :group_relationships
  has_many :members, through: :group_relationships, source: :user
end
