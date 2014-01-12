json.array!(@bios) do |bio|
  json.extract! bio, :id, :certs, :exp, :history, :about, :age, :gender
  json.url bio_url(bio, format: :json)
end
