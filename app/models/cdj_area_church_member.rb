class CdjAreaChurchMember < ActiveRecord::Base
  belongs_to :cdj_area
  belongs_to :church_member
end
