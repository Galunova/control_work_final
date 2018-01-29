class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text :review_comment
      t.decimal :feed_rate
      t.decimal :service_rate
      t.decimal :atmosphere_rate

      t.timestamps
    end
  end
end
