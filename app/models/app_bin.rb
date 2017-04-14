class AppBin < ApplicationRecord
  has_many :cycle_transactions
  has_many :system_health_samples

  before_create :generate_app_key

  def to_param
    app_key
  end

  private

  def generate_app_key
    self.app_key = SecureRandom.urlsafe_base64
  end
end
