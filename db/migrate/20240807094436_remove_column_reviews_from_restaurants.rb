class RemoveColumnReviewsFromRestaurants < ActiveRecord::Migration[7.1]
  def change
    remove_column :restaurants, :reviews, :string
  end
end
