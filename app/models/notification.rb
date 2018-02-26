class Notification < ApplicationRecord

  def to_string
    "NOTIFICATION RECEIVED [topic: " + self.topic + ", payment_id: " + self.payment_id + "]"
  end

end
