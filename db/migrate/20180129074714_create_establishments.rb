class CreateEstablishments < ActiveRecord::Migration[5.1]
  def change
    create_table :establishments do |t|
    	t.string :title
      t.text :description
      t.string :status, default: "inactive"
      
      t.timestamps
    end
  end
end
