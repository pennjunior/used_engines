class AddNameAndReviewDateToReviews < ActiveRecord::Migration[7.1]
  def change
    add_column :reviews, :name, :string
    add_column :reviews, :review_date, :date
  end
end
