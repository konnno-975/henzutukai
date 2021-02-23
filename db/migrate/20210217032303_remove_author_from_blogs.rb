class RemoveAuthorFromBlogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :blogs, :headache, :boolean
  end
end
