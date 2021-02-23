class AddHeadacheToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :headache, :boolean
  end
end
