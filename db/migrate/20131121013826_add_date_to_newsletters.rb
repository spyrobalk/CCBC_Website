class AddDateToNewsletters < ActiveRecord::Migration
  def change
    add_column :newsletters, :date, :date
  end
end
