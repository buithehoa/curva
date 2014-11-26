class Curve < ActiveRecord::Base
  acts_as_taggable

  validates_presence_of :question
  validates_presence_of :tag_list
end
