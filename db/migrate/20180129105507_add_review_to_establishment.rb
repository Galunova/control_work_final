class AddReviewToEstablishment < ActiveRecord::Migration[5.1]
  def change
  	add_reference :reviews, :establishment, foreign_key: true
  end
end
