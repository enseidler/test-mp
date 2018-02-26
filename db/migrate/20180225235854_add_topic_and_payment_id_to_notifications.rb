class AddTopicAndPaymentIdToNotifications < ActiveRecord::Migration[5.1]
  def change
    add_column :notifications, :topic, :string
    add_column :notifications, :payment_id, :string
  end
end
