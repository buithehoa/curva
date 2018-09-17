class CreateCurves < ActiveRecord::Migration
  def change
    create_table :curves do |t|
      t.text :question
      t.text :answer
      t.integer :status

      t.timestamps
    end
  end
end
