class CreateLawCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :law_categories do |t|
      t.string      :name,           null: false, index: true
      t.references  :lawable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
