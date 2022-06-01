class CreateProviders < ActiveRecord::Migration[6.1]
  def change
    create_table :providers do |t|
      t.string :name
      t.text :description
      t.string :logo_url

      t.timestamps
    end
  end
end
