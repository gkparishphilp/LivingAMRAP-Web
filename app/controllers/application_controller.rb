class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception


	helper SwellMedia::Engine.helpers


	before_filter :initialize_session



	def initialize_session
		set_page_meta
	end


end