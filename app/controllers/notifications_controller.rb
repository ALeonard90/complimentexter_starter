class NotificationsController < ApplicationController

  def create
    @notification = Notification.new
    @notification.text
    redirect_to root_path
  end

  # private
  # def notification_params
  #   #what are the params needed to make a new notification? (refer to your model)
  # end
end