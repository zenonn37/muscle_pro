json.array!(@staff_accounts) do |staff_account|
  json.extract! staff_account, :id, :staffid, :trainer_id, :location, :hours, :salary, :production
  json.url staff_account_url(staff_account, format: :json)
end
