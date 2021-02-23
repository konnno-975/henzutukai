class AddMigraineToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :migraine, :string
  end
end
