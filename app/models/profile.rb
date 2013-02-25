class Profile < ActiveRecord::Base
  attr_accessible :email, :github, :name, :blog, :text_editor, :twitter, :linkedin
  validates_uniqueness_of :email, :blog, :twitter, :github

  # validates_format_of :blog , :with => /^(http|https)://[a-z0-9]+([-.]{1}[a-z0-9]+)* .[a-z]{2,5}(([0-9]{1,5})?/.*)?$/ix
  

end
