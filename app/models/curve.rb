class Curve < ActiveRecord::Base
  acts_as_taggable

  has_many :curve_transitions

  validates_presence_of :question
  validates_presence_of :tag_list

  def state_machine
    @state_machine ||= CurveStateMachine.new(self, transition_clas: CurveTransition)
  end
end
