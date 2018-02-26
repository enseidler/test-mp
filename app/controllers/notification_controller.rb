class NotificationController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    @notification = Notification.last
  end

  def notify
    @notification = Notification.create!(
      topic: my_params['topic'],
      payment_id: my_params['id']
    )
    printf @notification.to_string
  end

  def my_params
    params.permit(:topic, :id)
  end

end
