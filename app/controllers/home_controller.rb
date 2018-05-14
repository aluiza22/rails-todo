class HomeController < ApplicationController

	def trash_em
		@trash_em = List.where(:completed => true).destroy_all
		redirect_to lists_url, notice: 'All marked tasks were successfully deleted.'
	end

	def trash_all
		@trash_all = List.all.destroy_all
		redirect_to lists_url, notice: 'All tasks were successfully deleted.'
	end

end