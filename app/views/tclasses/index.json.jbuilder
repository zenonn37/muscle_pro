json.array!(@tclasses) do |tclass|
  json.extract! tclass, :id, :name, :level, :duration, :mclass, :dclass, :timeclass
  json.url tclass_url(tclass, format: :json)
end
