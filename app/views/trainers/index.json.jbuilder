json.array!(@trainers) do |trainer|
  json.extract! trainer, :id, :first_name, :last_name
  json.url trainer_url(trainer, format: :json)
end
