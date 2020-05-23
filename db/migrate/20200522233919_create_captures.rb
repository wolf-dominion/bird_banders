class CreateCaptures < ActiveRecord::Migration[6.0]
  def change
    create_table :captures do |t|
      t.string :gender
      t.string :age
      t.string :location

      #t.timestamps
    end
  end
end
