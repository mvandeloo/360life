class ChangeNotesToText < ActiveRecord::Migration
  def change
  	change_column :goals, :notes, :text
  end
end
