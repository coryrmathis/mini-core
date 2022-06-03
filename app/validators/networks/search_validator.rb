class Networks::SearchValidator < Dry::Validation::Contract
    params do
        optional(:filter).hash do
            optional(:id)
            optional(:name)
            optional(:state)
        end
    end
end