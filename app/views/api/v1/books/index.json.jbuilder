
json.array! @books do |book|
  json.extract! book, :id, :title, :description, :slug
end