class CurveTransition < ActiveRecord::Base
  belongs_to :curve, inverse_of: :curve_transitions
end

