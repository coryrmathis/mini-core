class Network < ApplicationRecord
    has_many :providers, dependent: :destroy

    scope :active, -> { where(state: "active") }
    scope :inactive, -> { where(state: "inactive") }
    scope :recent, -> { where(created_at: Time.now.midnight - 1.day..Time.now.midnight + 1.day)}

    validates :state, inclusion: { in: ['active', 'inactive']}
    validates :name, presence: true

end 
