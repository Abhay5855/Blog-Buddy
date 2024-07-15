class AddPublishAndDraftToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :publish, :boolean
    add_column :posts, :draft, :boolean
  end
end
