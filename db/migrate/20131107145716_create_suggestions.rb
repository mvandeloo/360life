class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.text :title
      t.belongs_to :section, index: true

      t.timestamps
    end
  end
end
