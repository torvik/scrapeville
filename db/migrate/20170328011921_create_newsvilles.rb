class CreateNewsvilles < ActiveRecord::Migration[5.0]
  def change
    create_table :newsvilles do |t|
      t.string :title_url
      t.string :title
      t.text :body
      t.string :time
      t.string :image_url

      t.timestamps
    end
  end
end
