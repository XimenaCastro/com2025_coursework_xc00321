class PagesController < ApplicationController

	def home
		@posts = Post.all.order("created_at DESC")
	end

	def country
		@countries = Country.all("created_at DESC")
	end

	def activity
		@activities = Activity.all("created_at DESC")
	end

	def contact
		@contact = Contact.new(params[:contact])
		@contact.request =request
	end

	def request_contact
		name = params[:name]
		email = params[:email]
		telephone = params[:telephone]
		message = params[:message]
		if email.blank?
		flash[:alert] = I18n.t('pages.request_contacts.no_email')
		else
		# Send an email
		flash[:notice] = I18n.t('pages.request_contacts.email_sent')
		end
		redirect_to root_path

		
	end
end
