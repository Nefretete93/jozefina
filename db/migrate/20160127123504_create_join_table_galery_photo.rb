class CreateJoinTableGaleryPhoto < ActiveRecord::Migration
  def change
    create_join_table :galeries, :photos do |t|
      t.index [:galery_id, :photo_id]
      t.index [:photo_id, :galery_id]
    end
  end
end
