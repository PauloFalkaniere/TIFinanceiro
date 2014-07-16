json.array!(@sub_accounts) do |sub_account|
  json.extract! sub_account, :id, :name, :value, :description, :accounts_id
  json.url sub_account_url(sub_account, format: :json)
end
