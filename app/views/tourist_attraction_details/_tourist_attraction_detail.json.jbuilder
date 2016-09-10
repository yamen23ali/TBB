json.extract! tourist_attraction_detail, :id, :title, :description

json.images tourist_attraction_detail.images_urls
json.audios tourist_attraction_detail.audios_urls