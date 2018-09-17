class CreateCurveTransitions < ActiveRecord::Migration
  def change
    create_table :curve_transitions do |t|
      t.string :to_state, null: false
      t.json :metadata, default: "{}"
      t.integer :sort_key, null: false
      t.integer :curve_id, null: false
      t.timestamps
    end

    add_index :curve_transitions, :curve_id
    add_index :curve_transitions, [:sort_key, :curve_id], unique: true
  end
end
