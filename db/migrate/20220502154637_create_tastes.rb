class CreateTastes < ActiveRecord::Migration[7.0]
  def change
    create_table :tastes do |t|
      t.string :flavor

      t.timestamps
    end
  end
end
