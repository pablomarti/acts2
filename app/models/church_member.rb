class ChurchMember < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessor :country, :cdj_area

  after_create :set_selections

  def set_selections
  	cdj_area_obj = CdjArea.find(self.cdj_area)
  	CdjAreaChurchMember.create(church_member_id: self.id, cdj_area_id: cdj_area_obj.id)
  end

end
