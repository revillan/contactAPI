class Comment < ActiveRecord::Base

  validates :commentable_id, :commentable_type, :body, :author_id, presence: true
  validate :commenting_other_contacts

  belongs_to :commentable, polymorphic: true

  

  def commenting_other_contacts
    return if commentable_type == 'User'
    user = User.find_by(id: author_id)
    commentable_contacts = user.contacts + user.shared_contacts
    contact = Contact.find_by(id: commentable_id)
    unless commentable_contacts.include?(contact)
      errors[:commentable_id] << "Don't have access to this contact/user"
    end
  end

end
