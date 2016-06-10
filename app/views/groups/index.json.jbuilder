json.array!(@groups) do |group|
  json.extract! group, :id, :name, :balance, :is_private
  json.url group_url(group, format: :json)
end
