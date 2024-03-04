class ChangeStatusDefaultInArticles < ActiveRecord::Migration[7.0]
  def change
    change_column_default :articles, :status, "public"
  end
end
