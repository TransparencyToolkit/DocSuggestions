json.extract! doc_suggestion, :id, :url, :title, :keywords, :email_pgp, :created_at, :updated_at
json.url doc_suggestion_url(doc_suggestion, format: :json)
