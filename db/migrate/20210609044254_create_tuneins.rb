class CreateTuneins < ActiveRecord::Migration[6.1]
  def change
    create_table :tuneins do |t|
      t.string :title
      t.string :artist
      t.string :time

      t.timestamps
    end
  end
end
