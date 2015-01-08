class NotificationsController < ApplicationController
	def new
		@notification = Notification.new
	end 

  def create
    @notification = Notification.new
    @notification.text
    redirect_to 'notifcations#new'

    #add the code that will create a new notification and text it to the provided number 
  end

  private
  def notification_params
    #what are the params needed to make a new notification? (refer to your model)
  end
end