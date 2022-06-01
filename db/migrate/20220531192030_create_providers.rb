class CreateProviders < ActiveRecord::Migration[6.1]
  def change
    create_table :providers, id: :uuid do |t|
      t.string :name
      t.text :description
      t.string :logo_url
      t.uuid :network_id

      t.timestamps
    end
  end
end
