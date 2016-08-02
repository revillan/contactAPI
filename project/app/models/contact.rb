class Contact < ActiveRecord::Base
  validates :user_id, presence: true, uniqueness: {scope: :email}
  validates :name, :email, presence: true

  belongs_to :owner,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: "User"

  has_many :contact_shares

  has_many :shared_users,
    through: :contact_shares,
    source: :user

  has_many :comments, as: :commentable
end
