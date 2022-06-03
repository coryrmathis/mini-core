class NetworkSerializer
    include FastJsonapi::ObjectSerializer
    
    attributes :name
    has_many :providers
end