class AddArticleIdToMetaTags < ActiveRecord::Migration
  def change
    add_column :meta_tags, :article_id, :integer
  end
end
