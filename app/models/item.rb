class Item < ActiveRecord::Base
  attr_accessible :name

  belongs_to :user, :inverse_of => :items

  validates_presence_of :name
end
