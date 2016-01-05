class ChurchMember < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :church_campus, :class_name => 'ChurchCampu', :foreign_key => 'church_campus_id'
  has_one :cdj_area_church_member

  attr_accessor :country, :cdj_area

  after_create :set_selections

  def set_selections
  	cdj_area_obj = CdjArea.find(self.cdj_area)
  	CdjAreaChurchMember.create(church_member_id: self.id, cdj_area_id: cdj_area_obj.id)
  end

  def desired_cdj_area
    self.cdj_area_church_member.cdj_area
  end

  def genre_label
    genre ? 'Femenino' : 'Masculino'
  end

  def age
    now = Time.now.utc.to_date
    now.year - self.birth_date.year - (self.birth_date.to_date.change(:year => now.year) > now ? 1 : 0)
  end

end
