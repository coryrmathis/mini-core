class Provider < ApplicationRecord
    belongs_to :network, required: false
end
