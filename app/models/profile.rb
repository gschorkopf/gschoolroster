class Profile < ActiveRecord::Base
  attr_accessible :email, :github, :name, :phone, :text_editor, :twitter, :linkedin
end
