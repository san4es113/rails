class HomesController < ApplicationController


	def index

	end

	def registration_end
		@info=Info.last
    	mail=Mailer.new_mailer(@info).deliver_now;


	end


end