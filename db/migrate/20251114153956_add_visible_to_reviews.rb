class AddVisibleToReviews < ActiveRecord::Migration[7.1]
  def change
    add_column :reviews, :visible, :boolean, default: false
  end
end
