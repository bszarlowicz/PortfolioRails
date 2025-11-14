class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.string :reviewer_name
      t.string :reviewer_surname
      t.text :description
      t.boolean :worked_with_me
      t.string :cooperation_type
      t.float :overall_rating

      t.timestamps
    end
  end
end
