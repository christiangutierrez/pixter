class AddImageToPosts < ActiveRecord::Migration
  def change
    
    add_column :posts, :image, :string
    add_column :posts, :name, :string
    
    
    
  end
end
