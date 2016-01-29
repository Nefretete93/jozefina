class CreateGaleries < ActiveRecord::Migration
  def change
    create_table :galeries do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
