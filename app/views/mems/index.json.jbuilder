json.array!(@mems) do |mem|
  json.extract! mem, :id, :name, :description, :user_id
  json.url mem_url(mem, format: :json)
end
