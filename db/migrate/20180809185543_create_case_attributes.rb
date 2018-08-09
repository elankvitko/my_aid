class CreateCaseAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :case_attributes do |t|
      t.references :case, null: false, index: true

      t.timestamps
    end
  end
end
