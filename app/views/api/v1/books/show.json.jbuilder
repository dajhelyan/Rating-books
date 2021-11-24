json.extract! @book, :id, :title, :description, :slug
json.reviews @book.reviews do |review|
  json.extract! review, :id, :title, :description, :rating 
end