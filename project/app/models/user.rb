class User < ActiveRecord::Base

  validates :username, presence: true, uniqueness: true

  has_many :contacts, dependent: :destroy,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: "Contact"

  has_many :contact_shares, dependent: :destroy

  has_many :shared_contacts,
    through: :contact_shares,
    source: :contact

  has_many :comments, as: :commentable
    # primary_key: :id,
    # foreign_key: :author_id,
    # class_name: "Comment"

  # has_many :authored_comments,
  #   through: :comments,
  #   source: :commentable,
  #   source_type: "User"

end
