class Quote < ApplicationRecord
  belongs_to :user
  validates :text, :user, presence: true
  validates :cite, :user, presence: true
end
