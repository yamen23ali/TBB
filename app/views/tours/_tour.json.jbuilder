json.extract! tour, :id, :title, :description, :price, :estimated_time, :is_trans_included, :created_at

json.city tour.city.name
json.country tour.city.country.name