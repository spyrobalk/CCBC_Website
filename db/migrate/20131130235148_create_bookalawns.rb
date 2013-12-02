class CreateBookalawns < ActiveRecord::Migration
  def change
    create_table :bookalawns do |t|
      t.string :lawn
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
