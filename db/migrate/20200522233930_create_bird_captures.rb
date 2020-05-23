class CreateBirdCaptures < ActiveRecord::Migration[6.0]
  def change
    create_table :bird_captures do |t|
      t.references :user, null: false, foreign_key: true
      t.references :bird, null: false, foreign_key: true
      t.references :capture, null: false, foreign_key: true
      #t.timestamps
    end
  end
end
