class Skill < ActiveRecord::Base
  acts_as_taggable

  validates_presence_of :name
  validates_presence_of :tag_list
end
