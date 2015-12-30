require 'csv'

class Management::ChurchMembersController < Management::BaseController

	def index
	  @church_members = ChurchMember.order("last_name asc, first_name asc, id asc")
	  respond_to do |format|
	    format.html
	    format.csv do
	      headers['Content-Disposition'] = "attachment; filename=\"members-list\""
	      headers['Content-Type'] ||= 'text/csv'
	    end
	  end
	end

end