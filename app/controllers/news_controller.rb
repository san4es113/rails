class NewsController < ApplicationController
#this is admins controller

	def lets_take_a_party
		BackgroundGenerateJob.perform_later
		redirect_to root_path
	end



end