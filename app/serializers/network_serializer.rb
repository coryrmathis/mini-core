class NetworkSerializer
    include FastJsonapi::ObjectSerializer
    set_key_transform :camel_lower
    attributes :name, :state
    has_many :providers
end