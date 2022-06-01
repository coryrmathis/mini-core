class CreateNetworks < ActiveRecord::Migration[6.1]
  def change
    create_table :networks do |t|
      t.text "name", null: false
      t.text "network_type", null: false
      t.text "state", null: false
      t.string "logo_url"

      t.timestamps
    end
  end
end
