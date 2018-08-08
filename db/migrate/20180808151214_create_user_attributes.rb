class CreateUserAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :user_attributes do |t|
      t.string     :occupation,        null:    false,   index: true
      t.integer    :cases_accepted,    default: 0,       index: true
      t.decimal    :average_rating,    default: 0,       index: true
      t.boolean    :hirable
      t.string     :city,              null:    false
      t.string     :state,             null:    false
      t.string     :firm
      t.integer    :years_active,      null:    false
      t.string     :excerpt
      t.references :user,              null:    false,   index: true


      t.timestamps
    end
  end
end
