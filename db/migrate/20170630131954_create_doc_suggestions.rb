class CreateDocSuggestions < ActiveRecord::Migration[5.1]
  def change
    create_table :doc_suggestions do |t|
      t.string :url
      t.string :title
      t.string :keywords
      t.string :email_pgp

      t.timestamps
    end
  end
end
