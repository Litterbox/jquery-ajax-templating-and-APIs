json.array!(@demo) do |demo|
  json.extract! demo, :id, :name
end
