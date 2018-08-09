class CreateCases < ActiveRecord::Migration[5.2]
  def change
    create_table :cases do |t|
      t.string      :status, null: false, index: true
      t.references  :user,   null: false, index: true

      t.timestamps
    end
  end
end
