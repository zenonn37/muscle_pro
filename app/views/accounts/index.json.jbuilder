json.array!(@accounts) do |account|
  json.extract! account, :id, :first_name, :last_name, :acct_num, :avatar
  json.url account_url(account, format: :json)
end
