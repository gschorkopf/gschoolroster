class Profile < ActiveRecord::Base
  attr_accessible :email, :github, :name, :blog, :text_editor, :twitter, :linkedin
  validates_uniqueness_of :email, :blog, :twitter, :github

  def key
    {0 => :pending, 1=> :active, 2=> :contributor}  
  end

  def self.pending
    self.where(status: 0).all.shuffle
  end
  
  def self.active
    self.where(status: 1).all.shuffle
  end

  def self.contributors
    self.where(status: 2).all.shuffle    
  end
end
