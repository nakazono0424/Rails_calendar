class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :start_time
      t.string :place
      t.boolean :check

      t.timestamps
    end
  end
end
