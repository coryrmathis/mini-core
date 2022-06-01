class CreateNetworks < ActiveRecord::Migration[6.1]
  def change
    create_table :networks, id: :uuid do |t|
      t.text "name"
      t.text "network_type"
      t.text "state"
      t.string "logo_url"
  
      t.timestamps
    end
  end
end
