class Profile < ActiveRecord::Base
  attr_accessible :email, :github, :name, :blog, :text_editor, :twitter, :linkedin
  validates_uniqueness_of :email
end
